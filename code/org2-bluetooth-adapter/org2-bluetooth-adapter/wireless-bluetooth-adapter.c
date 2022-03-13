////////////////////////////////////////////////////////////////////////////////
//
//
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "pico/stdlib.h"
//#include "hardware/i2c.h"
#include "hardware/pio.h"
//#include "hardware/clocks.h"
#include "hardware/uart.h"
#include "hardware/irq.h"

#include "org2-bluetooth-adapter.h"
#include "match.h"
#include "wireless-bluetooth-adapter.h"
#include "org2-bluetooth-adapter.pio.h"

void start_task(char *label);
void remove_string(char *str);
void remove_n(int n);

void rfn_null(void);
void rfn_send_done(void);
void rfn_set_link_up(void);
  
int ifm_null(int i);
void ifn_ignore(int i);
int ifm_ipd(int i);
int ifm_cipsend(int i);
int ifm_recv(int i);

void ifn_next_is_ok(int i);
void ifn_check_ok(int i);
void ifn_ready(int i);
void ifn_ipd(int i);
void ifn2_ipd(void);
void ifn_ciprecvdata(int i);
void ifn_null(int i);
void ifn_cipsend(int i);
void ifn_recv(int i);
void ifn_closed(int i);
void ifn_busy(int i);
void ifn_connect(int i);
void ifn_disconnect(int i);
void ifn_btdata(int i);
void ifn2_btdata(void);
void ifn_startdisc(int i);

void ufn_index(void);
void ufn_memory_0(void);
void ufn_memory_at(void);
void ufn_memory_write(void);
void ufn_ram(void);
void ufn_eeprom_write(void);
void ufn_eeprom_read(void);

void btfn_hello(void);
void btfn_mem_rd(void);
void btfn_eeprom_rd(void);
void btfn_eeprom_wr(void);
void btfn_mem_wr(void);
void btfn_processor_status(void);
void btfn_display(void);
void btfn_key(void);

void push_key(int keycode, int offset);
void process_bt_term(BYTE *byte_buffer, int num);

////////////////////////////////////////////////////////////////////////////////
//
// Discovered devices

typedef struct _BT_DEVICE
{
  char name[20];
  char id[6*3+5];
} BT_DEVICE;

#define NUM_BT_DEVICES 30

int bt_device_i = 0;
BT_DEVICE bt_device[NUM_BT_DEVICES];

char *bt_connect_name = "HTC Desire X";

////////////////////////////////////////////////////////////////////////////////

int w_task_index = 0;
int w_task_running = 0;
uint64_t w_task_delay_end = 0;
int w_task_delaying = 0;

char cmd[200];
char delay_text[20];
char output_text[2000];
int output_text_len = 0;

// Temporary result text buffer
char temp_output_buffer[2000];

#define INPUT_TEXT_SIZE  2000

char input_text[INPUT_TEXT_SIZE+1];
int input_text_len = 0;

char input_temp[2000];
char input_data[2000];
char uri[200];

int n_scanned, chan, numchars, num_scanned;
int v1,v2;

// Current connection number
int connection = 0;

int tasks_run = 0;

typedef void (*BYTE_CONT_FN)(void);

char byte_buffer[2000];
int byte_buffer_index;
int collecting_bytes = 0;
BYTE_CONT_FN when_done_fn;
int bytes_left_to_collect = 0;
int num_bytes_collected = 0;
int sending_bt_data = 0;

//------------------------------------------------------------------------------
//
// Bluetooth input buffer
//

// Switch that determines where BT is going and coming from
// For the bluetooth adapter we use the comms link mode
int bluetooth_mode = BT_MODE_COMMS_LINK;

#define BT_CL_BUFFER_SIZE  1000

int bt_cl_in = 0;
int bt_cl_out = 0;

BYTE bt_cl_buffer[BT_CL_BUFFER_SIZE];

// Bluetooth output buffer (sending over BT)
int cl_bt_in = 0;
int cl_bt_out = 0;

BYTE cl_bt_buffer[CL_BT_BUFFER_SIZE];
int pending_tx = 0;

////////////////////////////////////////////////////////////////////////////////

#define WIFI_UART_PIO 1

#define UART_ID uart1 //uart0
#define BAUD_RATE 115200
#define DATA_BITS 8
#define STOP_BITS 1
#define PARITY    UART_PARITY_NONE

// We are using pins 0 and 1, but see the GPIO function select table in the
// datasheet for information on which other pins can be used.
#define UART_TX_PIN 4 //0
#define UART_RX_PIN 5 //1


#if UART_INTERRUPTS

#define INTERRUPT_TEXT_SIZE 5000

volatile char interrupt_text[INTERRUPT_TEXT_SIZE+1];
volatile  int irq_text_out_ptr = 0;
volatile  int irq_text_in_ptr = 0;

// RX interrupt handler
volatile int irq_count = 0;
volatile int irq_no_char = 0;
volatile int irq_after = 0;
volatile int char_in_loop = 0;

void on_uart_rx()
{
  int np = 0;
  
  irq_count++;
  
  if( !uart_is_readable(UART_ID) )
    {
      irq_no_char++;
    }
  
  while (uart_is_readable(UART_ID))
    {
      uint8_t ch = uart_getc(UART_ID);

      if( ch != '\0' )
	{
	  interrupt_text[irq_text_in_ptr] = ch;
	  np = irq_text_in_ptr;
	  np++;
	  irq_text_in_ptr = (np % INTERRUPT_TEXT_SIZE);
	}
    }

  if( uart_is_readable(UART_ID) )
    {
      irq_after++;
    }

}

#endif

#if WIFI_UART_PIO
#endif

////////////////////////////////////////////////////////////////////////////////
//
// Functions to send and receive data from and to the Wireless module
//
////////////////////////////////////////////////////////////////////////////////

// Send text to the wifi module.
// We have to buffer the text and send it as the PIO FIFO becomes free

// This function puts something in the buffer
void w_uart_puts(char *cmd)
{
  while( (*cmd) != '\0' )
    {
      w_data_out[data_wtx_in_idx] = *(cmd++);
      data_wtx_in_idx = (data_wtx_in_idx + 1) % DATA_WTX_LEN;
    }
}

// This function sends the buffer contents if it can
void w_uart_tasks(void)
{
  // 
  if( data_wtx_out_idx != data_wtx_in_idx )
    {
      if( !pio_sm_is_tx_fifo_full(wrx_pio, wrx_sm) )
	{
	  uart_wtx_program_putc(wtx_pio, wtx_sm, w_data_out[data_wtx_out_idx]);
	  data_wtx_out_idx = (data_wtx_out_idx+1) % DATA_WTX_LEN;
	}
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Initialise the wireless module code
//
////////////////////////////////////////////////////////////////////////////////

void wireless_init(void)
{

#if WIFI_UART_PIO


#else
  sleep_us(1000000);  
  gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);
  gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);

  uart_init(UART_ID, BAUD_RATE);
  uart_set_hw_flow(UART_ID, false, false);
  uart_set_fifo_enabled(UART_ID, false);
#endif
  
#if UART_INTERRUPTS
  // Set up a RX interrupt
  // We need to set up the handler first
  // Select correct interrupt for the UART we are using
  int UART_IRQ = UART_ID == uart0 ? UART0_IRQ : UART1_IRQ;
  
  // And set up and enable the interrupt handlers
  irq_set_exclusive_handler(UART_IRQ, on_uart_rx);
  irq_set_enabled(UART_IRQ, true);
  
  // Now enable the UART to send interrupts - RX only
  uart_set_irq_enables(UART_ID, true, false);
  
#endif
    
  //  gpio_put(7, 1);
  //gpio_set_dir(7, GPIO_OUT);
  
  printf("\nOrganiser 2 Bluetooth Adatper\n");
  stdio_flush();

  // Turn power to the WROOM off for a while
  gpio_put(WROOM_ON_PIN, 0);
  for(volatile int i=0; i<100000;i++)
    {
      volatile j = i+i;
    }
  
  //sleep_ms(100);
  gpio_put(WROOM_ON_PIN, 1);

  input_text[0] = '\0';
  input_text_len = 0;
}

volatile int setup = 0;

char *reply1 = "HTTP/1.1 200 OK\n\
Content-Type: text/html\n\
Connection: close\n\n\
<!DOCTYPE HTML>\n\
<html>\n\
Psion Organiser Recreation\
<br>Ticks:%d<br>\
<pre><br><br>\
<tt>%s</tt><br>\
<br>\
<tt>%s</tt><br>\
<tt>%s</tt><br>\
<tt>%s</tt><br>\
<tt>%s</tt><br>\
<tt>%s</tt><br>\
</pre>\
</html> \r\n";

volatile long cxx = 0L;
int ip_i = 0;
volatile int t = 1;

////////////////////////////////////////////////////////////////////////////////
//
// We don't want to introduce delays into the flow of the code as it will
// stop the emulator running if it is a delay on core0 and if it is a core1
// delay then it will stop display updates.
//
// So, we run a simple state machine which is a list of commands
// decisions are taken by code which the points to a new set of commands to
// execute
//

// Wireless task

typedef enum _W_TYPE
  {
   WTY_PUTS = 1,
   WTY_DELAY_MS,
   WTY_LABEL,
   WTY_STOP,
   WTY_SENDDATA,
   WTY_FN,
  } W_TYPE;

typedef void (*W_FN)(void);

typedef struct _W_TASK
{
  W_TYPE  type;       // What to do
  char    *string;    // String parameter
  W_FN    fn;         // Function to call (WTY_FN)
} W_TASK;

// The master table of tasks
W_TASK tasklist[] =
  {
   //------------------------------------------------------------------------------
   //
   // Bluetooth classic SPP initialisation as master
   //
   //------------------------------------------------------------------------------
   
   {WTY_LABEL,            "btinitm",                        rfn_null},
   {WTY_PUTS,             "AT+BTINIT=1\r\n",                rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+BTSPPINIT=1\r\n",             rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+BTSTARTDISC=0,10,10\r\n",     rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   
   //{WTY_PUTS,             "AT+BTSCANMODE=2\r\n",            rfn_null},
   //{WTY_DELAY_MS,         "2000",                           rfn_null},
   //   {WTY_PUTS,     "AT+BTSECPARAM=3,1,7735\r\n"},
   //{WTY_DELAY_MS, "2000"},
   //   {WTY_PUTS,             "AT+BTSPPSTART\r\n",              rfn_null},
   //{WTY_DELAY_MS,         "2000",                           rfn_null},

   {WTY_STOP,             "",                               rfn_null},                      // All done

   //------------------------------------------------------------------------------
   //
   // Bluetooth classic SPP initialisation as slave
   //
   //------------------------------------------------------------------------------
   
   {WTY_LABEL,            "btinit",                         rfn_null},
   {WTY_PUTS,             "AT+BTINIT=1\r\n",                rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+BTSPPINIT=2\r\n",             rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+BTNAME=\"PsionOrgCD\"\r\n",   rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+BTSCANMODE=2\r\n",            rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   //   {WTY_PUTS,     "AT+BTSECPARAM=3,1,7735\r\n"},
   //{WTY_DELAY_MS, "2000"},
   {WTY_PUTS,             "AT+BTSPPSTART\r\n",              rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_FN,               "",                               rfn_set_link_up},
   {WTY_STOP,             "",                               rfn_null},                      // All done

   //------------------------------------------------------------------------------
   //
   // Wifi Initialisation
   //
   //------------------------------------------------------------------------------
   
   {WTY_LABEL,            "init",                           rfn_null},
   {WTY_PUTS,             "AT+CWMODE=2\r\n",                rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+CIPMUX=1\r\n",                rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},
   {WTY_PUTS,             "AT+CWSAP=\"PsionOrgBA\",\"1234567890\",5,3\r\n", rfn_null},
   {WTY_DELAY_MS,         "5000",                           rfn_null},
   {WTY_PUTS,             "AT+CIPSERVER=1,80\r\n",          rfn_null},
   {WTY_DELAY_MS,         "2000",                           rfn_null},

   //   {WTY_PUTS,     "AT+CIPRECVMODE=0\r\n"},
   //{WTY_DELAY_MS, "2000"},
   {WTY_STOP,             "",                               rfn_null},                      // All done

   //------------------------------------------------------------------------------
   //
   //
   
   {WTY_LABEL,            "p_index",                        rfn_null},

   {WTY_STOP,             "",                               rfn_null},                      // All done

#if 0   
   //------------------------------------------------------------------------------
   //
   // Connect to BT device
   //
   //------------------------------------------------------------------------------
   
   {WTY_LABEL,            "btconnect",                           rfn_null},
   {WTY_PUTS,             "AT+BTSPPCONN=0,0,\"24:0a:c4:d6:e4:46\"\r\n",                rfn_null},
   {WTY_DELAY_MS,         "100",                            rfn_null},
   {WTY_SENDDATA,         "",                               rfn_null},
   {WTY_FN,               "",                               rfn_send_done},
   {WTY_STOP,             "",                               rfn_null},
#endif
   
   //------------------------------------------------------------------------------
   //
   // Send data back
   //
   // Used for wifi and BT replies
   //
   //------------------------------------------------------------------------------
   
   {WTY_LABEL,            "send",                           rfn_null},
   {WTY_DELAY_MS,         "100",                            rfn_null},
   {WTY_SENDDATA,         "",                               rfn_null},
   {WTY_FN,               "",                               rfn_send_done},
   {WTY_STOP,             "",                               rfn_null},

   //------------------------------------------------------------------------------
   //
   // Close wifi connection
   //
   //------------------------------------------------------------------------------
   
   {WTY_LABEL,            "close",                          rfn_null},
   {WTY_PUTS,             "AT+CIPCLOSE=0\r\n",              rfn_null},
   {WTY_STOP,             "",                               rfn_null},                      // All done
  };

#define W_NUM_TASKS (sizeof(tasklist) / sizeof(W_TASK) )

// Input list

typedef void (*IN_FN)(int i);
typedef int (*IN_MFN)(int i);

typedef enum _I_TYPE
  {
   ITY_STRING = 1,
   ITY_FUNC,
  } I_TYPE;

typedef struct _I_TASK
{
  I_TYPE  type;       // How to match  
  char    *str;       // String to match
  IN_MFN  mfn;        // Match function
  IN_FN   fn;         // Call this function when match found  
} I_TASK;

// The master table of tasks
const I_TASK input_list[] =
  {
   // General common 
   {ITY_STRING, " ready",                                               ifm_null,     ifn_ready},
   {ITY_STRING, " OK",                                                  ifm_null,     ifn_check_ok},
   
   // Wifi
   {ITY_STRING, " AT+CWMODE=2",                                         ifm_null,     ifn_next_is_ok},
   {ITY_STRING, " AT+CIPMUX=1",                                         ifm_null,     ifn_next_is_ok},
   {ITY_STRING, " AT+CWSAP=\"PsionOrgCD\",\"1234567890\",5,3",          ifm_null,     ifn_next_is_ok},
   {ITY_STRING, " AT+CIPSERVER=1,80",                                   ifm_null,     ifn_next_is_ok},
   {ITY_STRING, " AT+CIPCLOSE=%d",                                      ifm_null,     ifn_next_is_ok},
   {ITY_STRING, " %d,CONNECT",                                          ifm_null,     ifn_connect},
   {ITY_STRING, " +STA_CONNECTED:\"%x:%x:%x:%x:%x:%x\"",                ifm_null,     ifn_ignore},
   {ITY_STRING, " +STA_DISCONNECTED:\"%x:%x:%x:%x:%x:%x\"",             ifm_null,     ifn_ignore},
   {ITY_STRING, " +DIST_STA_IP:\"%x:%x:%x:%x:%x:%x\",\"%d.%d.%d.%d\"",  ifm_null,     ifn_ignore},

   {ITY_STRING, " WIFI CONNECTED",                                      ifm_null,     ifn_ignore},
   {ITY_STRING, " WIFI GOT IP",                                         ifm_null,     ifn_ignore},
   {ITY_STRING, " WIFI DISCONNECT",                                     ifm_null,     ifn_ignore},
   
   {ITY_FUNC,   " +IPD",                                                ifm_ipd,      ifn_ipd},
   {ITY_FUNC,   " AT+CIPSEND=%d,%d OK >",                               ifm_null,     ifn_cipsend},
   {ITY_FUNC,   " AT+CIPSEND=%d,%d ERROR",                              ifm_null,     ifn_ignore},
   {ITY_FUNC,   " Recv %d bytes SEND OK",                               ifm_recv,     ifn_recv},
   {ITY_FUNC,   " Recv %d bytes SEND FAIL",                             ifm_recv,     ifn_recv},


   {ITY_STRING, " %d,CLOSED OK",                                        ifm_null,     ifn_closed},
   {ITY_STRING, " %d,CLOSED",                                           ifm_null,     ifn_ignore},
   {ITY_STRING, " busy p...",                                           ifm_null,     ifn_busy},
   {ITY_STRING, " link is not valid",                                   ifm_null,     ifn_ignore},
   {ITY_STRING, " ERROR",                                               ifm_null,     ifn_ignore},

   // Bluetooth
   {ITY_STRING, " AT+BTINIT=1",                                         ifm_null,     ifn_ignore},
   {ITY_STRING, " AT+BTSPPINIT=2",                                      ifm_null,     ifn_ignore},
   {ITY_STRING, " AT+BTNAME=\"PsionOrgCD\"",                            ifm_null,     ifn_ignore},
   {ITY_STRING, " AT+BTSCANMODE=2",                                     ifm_null,     ifn_ignore},
   {ITY_STRING, " AT+BTSECPARAM=3,1,7735",                              ifm_null,     ifn_ignore},
   {ITY_STRING, " AT+BTSPPSTART",                                       ifm_null,     ifn_ignore},
   {ITY_STRING, " +BTSPPCONN:%d,\"%x:%x:%x:%x:%x:%x\"",                 ifm_null,     ifn_connect},
   {ITY_STRING, " +BTSPPDISCONN:%d,\"%x:%x:%x:%x:%x:%x\"",              ifm_null,     ifn_disconnect},
   {ITY_STRING, " +BTDATA:%d,",                                         ifm_null,     ifn_btdata},
   // We can have a busy and then a prompt, so split the strings
   {ITY_FUNC,   " AT+BTSPPSEND=%d,%d\r",                                ifm_null,     ifn_ignore},
   {ITY_FUNC,   " >",                                                   ifm_null,     ifn_cipsend},

   // Bluetooth master mode
   {ITY_STRING, " AT+BTSPPINIT=1",                                      ifm_null,     ifn_ignore},
   {ITY_STRING, " AT+BTSTARTDISC=0,10,10",                              ifm_null,     ifn_ignore},
   {ITY_STRING, " +BTSTARTDISC:\"%x:%x:%x:%x:%x:%x\",%[^,],0x%x,0x%x,0x%x,%[0x0-9a-fA-F-]\r",  ifm_null,     ifn_startdisc},
  };
   
#define I_NUM_TASKS (sizeof(input_list) / sizeof(I_TASK) )

// URI task table

typedef void (*U_FN)(void);
typedef struct _U_TASK
{
  char    *str;       // URI/memory/20b0
  U_FN    fn;         // Call this function when match found  
} U_TASK;

// The master table of tasks
U_TASK uri_list[] =
  {
   {"GET /eeprom/%d/write/%x/%x",                      ufn_eeprom_write},
   {"GET /eeprom/%d/%x",                               ufn_eeprom_read},
   {"GET /memory/write/%x/%x",                         ufn_memory_write},
   {"GET /memory/%x",                                  ufn_memory_at},
   {"GET /memory",                                     ufn_memory_0},
   {"GET /ram",                                        ufn_ram},
   {"GET /",                                           ufn_index},
  };

#define U_NUM_TASKS (sizeof(uri_list) / sizeof(U_TASK) )

////////////////////////////////////////////////////////////////////////////////

// Bluetooth command table

typedef void (*BT_FN)(void);
typedef struct _BT_TASK
{
  char    *str;       // URI/memory/20b0
  BT_FN    fn;         // Call this function when match found  
} BT_TASK;

// The master table of tasks
BT_TASK btcmd_list[] =
  {
   {"hello ",                      btfn_hello},
   {"rdmem %x ",                   btfn_mem_rd},
   {"wrmem %x %x",                 btfn_mem_wr},
   {"rdee %d %x ",                 btfn_eeprom_rd},
   {"wree %d %x %x",               btfn_eeprom_wr},
   {"procstat ",                   btfn_processor_status},
   {"display ",                    btfn_display},
   {"key %d ",                     btfn_key},
  }; 

#define BT_NUM_TASKS (sizeof(btcmd_list) / sizeof(BT_TASK) )

////////////////////////////////////////////////////////////////////////////////
//
// Get data

typedef void (*BYTE_CONT_FN)(void);


void get_n_bytes_then(int n, BYTE_CONT_FN fn)
{
  // Store parameters
  bytes_left_to_collect = n;
  when_done_fn = fn;
  
  // Start of a new collection
  byte_buffer_index = 0;
  collecting_bytes = 1;
  num_bytes_collected = bytes_left_to_collect;
  
  // If there are any bytes in the input_text buffer then we copy them over
  int original_input_text_len = input_text_len;

  while( (bytes_left_to_collect > 0) && (input_text_len > 0) )
    {
      byte_buffer[byte_buffer_index] = input_text[byte_buffer_index];
      byte_buffer_index++;
      input_text_len--;
      bytes_left_to_collect--;
    }

  // We restore the inoput length so we can use the generic removal function below
  input_text_len = original_input_text_len;

  // Take the bytes off the input text array (adjusts input_text_len)
  remove_n(byte_buffer_index);

  // Are we done?
  if( bytes_left_to_collect == 0)
    {
      collecting_bytes = 0;

      // Call done function
      (*when_done_fn)();
    }
}

////////////////////////////////////////////////////////////////////////////////
//

// Routes a URI to a function
void process_uri(char *uri)
{

  for(int i=0; i<U_NUM_TASKS; i++)
    {

      if( match(uri, uri_list[i].str) )
	{

	  (*uri_list[i].fn)();
	  break;
	}
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Processes a bluetooth command
//
// Command line interface
//

void process_btcmd(char *cmd)
{
  for(int i=0; i<BT_NUM_TASKS; i++)
    {
      if( match(cmd, btcmd_list[i].str) )
	{
	  (*btcmd_list[i].fn)();
	  break;
	}
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Put more text on the comms link fifo
//

void comms_link_input(char *text, int len)
{
  // Add the text to the Bluetooth to Comms Link buffer
  for(int i=0; i<len; i++)
    {
      if( ((bt_cl_in + 1) %  BT_CL_BUFFER_SIZE) != bt_cl_out )
	{
	  bt_cl_buffer[bt_cl_in] = text[i];
	  bt_cl_in = (bt_cl_in + 1) % BT_CL_BUFFER_SIZE;
	}
      else
	{
	  return;
	}
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// remove the given string from the input text

char error_str[100];

void remove_string(char *str)
{
  if( strncmp(input_text, str, strlen(str)) == 0 )
    {
      // Copy rest of string to temporary buffer then back to input text buffer
      // This could be faster but we want it to work for now
#if 0      
      strcpy(input_temp, &(input_text[strlen(str)]));
      strcpy(input_text, input_temp);
#else
  if( strlen(str) > input_text_len)
  {
    //    DEBUG_STOP;
  }
      memcpy(input_temp, &(input_text[strlen(str)]), input_text_len - strlen(str)+1);
      memcpy(input_text, input_temp, input_text_len - strlen(str)+1);
      input_text_len -= strlen(str);
#endif
    }
  else
    {
      strcpy(error_str, str);
    }
}

// Remove n characters from the input stream
void remove_n(int n)
{
#if 0  
  strcpy(input_temp, &(input_text[n]));
  strcpy(input_text, input_temp);
#else
  if( n > input_text_len)
  {
    //    DEBUG_STOP;
  }

  memcpy(input_temp, &(input_text[n]), input_text_len - n+1);
  memcpy(input_text, input_temp, input_text_len - n+1);
  input_text_len -= n;
#endif
}

////////////////////////////////////////////////////////////////////////////////
//
// Matching functions that test for commands

int ifm_ipd(int i)
{

  if(match(input_text, " +IPD,%d,%d:") )
    {
      //DEBUG_STOP;
      return(1);
    }
  else
    {
      return(0);
    }
}

int ifm_cipsend(int i)
{
  if( match(input_text, input_list[i].str) )
    {
      //      DEBUG_STOP;
      return(1);
    }
  else
    {
      return(0);
    }
}

int ifm_recv(int i)
{
  if( match(input_text, " Recv %d bytes SEND OK") )
    {
      return(1);
    }
  else
    {
      return(0);
    }
}

int ifm_null(int i)
{
  return(1);
}

////////////////////////////////////////////////////////////////////////////////
//
// Reply Functions
//
////////////////////////////////////////////////////////////////////////////////

// Null rfn

void rfn_null(void)
{
}


// Data not being sent any more

void rfn_send_done(void)
{
  sending_bt_data = 0;
}

void rfn_set_link_up(void)
{
  //bt_link_up = 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Input functions
//
// These handle the matching strings in the input buffer
//

// Do nothing
void ifn_null(int i)
{
  // remove string we tested for
  remove_n(match_num_scanned);
  //remove_string(input_list[i].str);
}

// Set when we want to check that the next string is OK
int next_str_ok = 0;

void ifn_next_is_ok(int i)
{
  // remove string we tested for
  //remove_string(input_list[i].str);
  remove_n(match_num_scanned);
  next_str_ok = 1;
}

int num_ok = 0;

void ifn_check_ok(int i)
{
  if( next_str_ok )
    {
      // All ok
      num_ok++;
      
      // remove string we tested for
      remove_n(match_num_scanned);

      //remove_string(input_list[i].str);
      next_str_ok = 0;
    }
  else
    {
      // Do nothing, the input strings will stop here.

      // remove string we tested for
      remove_n(match_num_scanned);
    }
}

void ifn_ready(int i)
{
  setup = 1;
  
  oled_set_xy(&oled0, 0, IFN_Y);
  oled_display_string(&oled0, "Setting up");

#if WIFI  
  start_task("init");
#endif

#if BLUETOOTH

#if BLUETOOTH_M
  start_task("btinitm");
#endif

#if BLUETOOTH_S
  start_task("btinit");
#endif
  
#endif
  
  // Remove the string
  //remove_string("ready");
  remove_n(match_num_scanned);
}

void write_display_extra(int y, char ch)
{
#if USE_OLED  
  char str[2] = " ";
  str[0] = ch;

  oled_set_xy(&oled0, 120, y*8);
  oled_display_string(&oled0, str);
#endif
}

// Processes the +IPD string
void ifn_ipd(int i)
{
  write_display_extra(2, 'P');

  //DEBUG_STOP;
  
  // We need to get the IPD textoff the input stream
  // +IPD,0,370:
  
  if( match(input_text, " +IPD,%d,%d:") )
    {
      // remove the command
      remove_n(match_num_scanned);
      
      // Get the data
      // numchars holds the number of characters of data we can get
      // with a CIPREVDATA command. The URI should be in the input stream next
      // though, so we get that.

      // We now need to wait for numchars bytes to come in as that is the data for the IPD
      get_n_bytes_then(match_int_arg[1], ifn2_ipd);
    }
}

// We continue here after all data collected

void ifn2_ipd(void)
{
  //DEBUG_STOP;
  // We have the URI, process it and find out which page to return
  // based on it
  process_uri(byte_buffer);
}

// Processes the AT+CIPSEND string

void ifn_cipsend(int i)
{
  write_display_extra(1, 'C');

  if( match(input_text, input_list[i].str))
    {
      // remove the command
      remove_n(match_num_scanned);

      // We now have to send the data and then close the connection
      start_task("send");

      // The reply to the send will trigger the close
    }
}

void ifn_recv(int i)
{
  write_display_extra(1, 'r');

  if( match(input_text, input_list[i].str))
    {
      // remove the command
      remove_n(match_num_scanned);

      // We now have to send the data and then close the connection
      start_task("close");

      // The reply to the send will trigger the close
    }
}

void ifn_disconnect(int i)
{
  bt_link_up = 0;
}

  void ifn_connect(int i)
{
  write_display_extra(1, 'n');

  if( match(input_text, input_list[i].str))
    {
      // remove the command
      remove_n(match_num_scanned);

      // Store the connection number
      connection = match_int_arg[0];

      // Signal link is up
      bt_link_up = 1;
    }
}

void ifn_ignore(int i)
{
  write_display_extra(1, 'i');

  if( match(input_text, input_list[i].str))
    {
      // remove the command
      remove_n(match_num_scanned);

      // All done
    }
}

void ifn_closed(int i)
{
  write_display_extra(1, 'c');

  if( match(input_text, " 0,CLOSED OK"))
    {
      // remove the command
      remove_n(match_num_scanned);

      // All done
    }
}

void ifn_busy(int i)
{
  write_display_extra(1, 'c');

  if( match(input_text, " busy p..."))
    {
      // remove the command
      remove_n(match_num_scanned);

      // All done
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// We have discovered a device
//
////////////////////////////////////////////////////////////////////////////////

void ifn_startdisc(int i)
{
  write_display_extra(2, 'd');
  
  //DEBUG_STOP;
  
  if( match(input_text, " +BTSTARTDISC:\"%x:%x:%x:%x:%x:%x\",%[^,],0x%x,0x%x,0x%x,%[0x0-9a-fA-F-]\r") )
    {
      //DEBUG_STOP;
      
      // remove the command
      remove_n(match_num_scanned);
      
      // Get the data
      
      // The device name
      int known = 0;
      
      if( bt_device_i < NUM_BT_DEVICES )
	{
	  // If we don't already know about it
	  for(int i=0; i<bt_device_i; i++)
	    {
	      if( strcmp(bt_device[i].name, match_str_arg[0]) == 0 )
		{
		  known = 1;
		  break;
		}
	    }
	  
	  if( !known )
	    {
	      strcpy(bt_device[bt_device_i].name, match_str_arg[0]);
	      sprintf(bt_device[bt_device_i].id, "%x:%x:%x:%x:%x:%x",
		      match_int_arg[0],      
		      match_int_arg[1],      
		      match_int_arg[2],      
		      match_int_arg[3],      
		      match_int_arg[4],      
			  match_int_arg[5]);


	      // If device is the one we want to connect to then do it
	      if( strcmp(bt_connect_name, match_str_arg[0]) == 0 )
		{
		    sprintf(cmd, "AT+BTSPPCONN=0,0,\"%s\"\r\n", bt_device[bt_device_i].id);
#if WIFI_UART_PIO
		    w_uart_puts(cmd);
#else
		    uart_puts(UART_ID, cmd);
#endif
		}

	      bt_device_i++;
	    }
	}
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// BTDATA
//
// Bluetooth data has come in
//
////////////////////////////////////////////////////////////////////////////////

// Processes the +IPD string
void ifn_btdata(int i)
{
  write_display_extra(2, 'P');

  //DEBUG_STOP;
  
  // We need to get the IPD textoff the input stream
  // +IPD,0,370:
  
  if( match(input_text, " +BTDATA:%d,") )
    {
      // remove the command
      remove_n(match_num_scanned);
      
      // Get the data
      // numchars holds the number of characters of data we can get
      // with a CIPREVDATA command. The URI should be in the input stream next
      // though, so we get that.

      // We now need to wait for numchars bytes to come in as that is the data for the IPD
      get_n_bytes_then(match_int_arg[0], ifn2_btdata);
    }
}

// We continue here after all data collected
// We fork data off to the comms link, or command handler

void ifn2_btdata(void)
{
  //DEBUG_STOP;
  // We have the URI, process it and find out which page to return
  // based on it
  switch(bluetooth_mode )
    {
    case BT_MODE_CLI:
      process_btcmd(byte_buffer);
      break;
      
    case BT_MODE_COMMS_LINK:
      comms_link_input(byte_buffer, num_bytes_collected);
      break;
#if 0      
    case BT_MODE_TERM:
      process_bt_term(byte_buffer, num_bytes_collected);
      break;
#endif
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Starts off a bluetooth reply. The WTY_SENDDATA task will send the actual
// data. Reply must be in output_text

void send_bt_reply(void)
{
  //DEBUG_STOP;
  output_text_len = strlen(output_text);
  sprintf(cmd, "AT+BTSPPSEND=0,%d\r\n", output_text_len);

#if WIFI_UART_PIO
    w_uart_puts(cmd);
#else
    uart_puts(UART_ID, cmd);
#endif
    
  sending_bt_data = 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Starts off a reply. The WTY_SENDDATA task will send the actual
// data. Reply must be in output_text

void send_reply(void)
{
  output_text_len = strlen(output_text);
  sprintf(cmd, "AT+CIPSEND=0,%d\r\n", output_text_len);

#if WIFI_UART_PIO
    w_uart_puts(cmd);
#else
    uart_puts(UART_ID, cmd);
#endif

}

////////////////////////////////////////////////////////////////////////////////
//
// URI processing

// Index page, we send back the main page with data added



void ufn_index(void)
{
}

void ufn_memory_addr(int addr, char *line_term)
{
}

void ufn_memory_0(void)
{
}

void ufn_memory_at(void)
{
}

void ufn_ram(void)
{

}

void ufn_memory_write(void)
{
}

void core_eeprom_write(void)
{
}

void ufn_eeprom_write(void)
{
}

void ufn_eeprom_read(void)
{
}

////////////////////////////////////////////////////////////////////////////////
//
//

void btfn_hello(void)
{
  // Give a reply
  sprintf(output_text, "Hello from Psion Organiser2");
  send_bt_reply();
}

void btfn_mem_rd(void)
{
}

void btfn_mem_wr(void)
{
}

void btfn_eeprom_wr(void)
{
}

void btfn_eeprom_rd(void)
{
}

void btfn_processor_status(void)
{
}

void btfn_display(void)
{
}

// Press keys on the keyboard

void btfn_key(void)
{
}

////////////////////////////////////////////////////////////////////////////////

void start_task(char *label)
{
  for(int i=0; i<W_NUM_TASKS; i++)
    {
      if( (tasklist[i].type == WTY_LABEL) && (strcmp(tasklist[i].string, label)==0) )
	{
	  // Found task label, so set it up to run
	  w_task_index = i;
	  w_task_running = 1;

	  // All done
	  tasks_run++;
	  return;
	}
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Main loop task for communicating with the WROOM
//
// Needs to be in a loop externally
//


void wireless_taskloop(void)
{
  long parameter = 0;
  int c;
  int process_text = 0;

  // Process serial data coming from and going to the Wifi module
  w_uart_tasks();
  
  // The bluetooth to comms link processing runs independently of the rest of this loop
  if( bt_cl_in != bt_cl_out )
    {

      // Something to send to the comms link, is the receive data ready?
      // RDRF bit is set when data still in the data register, only
      // move data to comms link when clear
      // We also wait for interrupts to be enabled
#if 0      
      if( (!(ramdata[SERIAL_TRCSR] & TRCSR_RDRF)) && !FLG_I && (ramdata[SERIAL_TRCSR] & TRCSR_RIE) )
	{
	  // We can move a data byte in to the RDR register, set up status bits and
	  // generate an interrupt
	  ramdata[SERIAL_RDR] = bt_cl_buffer[bt_cl_out];
	  bt_cl_out = (bt_cl_out + 1) % BT_CL_BUFFER_SIZE;

	  // Set status bits in the control register
	  serial_set_rdrf();
	  
	  interrupt_request(0xFFF0);
	}
#endif
      // We send data to the Psion using a buffer
      data_out[data_tx_in_idx] = bt_cl_buffer[bt_cl_out];
      bt_cl_out = (bt_cl_out + 1) % BT_CL_BUFFER_SIZE;
      
      //      tx_char = (tx_char +1) % strlen(tx_msg);
      data_tx_in_idx = (data_tx_in_idx+1) % DATA_TX_LEN;

    }

  // if we are in comms link mode
  if( bluetooth_mode == BT_MODE_COMMS_LINK)
    {
      // Are we sending data? If so, hold off sending more
      if( !sending_bt_data )
	{
	  // Any bluetooth data to send?
	  if( cl_bt_in != cl_bt_out )
	    {
	      // We get characters and send them to the bluetooth module
	      // We grab what is available and chunk it up for sending
	      output_text[0] = '\0';
	      int out_i = 0;
	      
	      while(cl_bt_in != cl_bt_out)
		{
		  output_text[out_i++] = cl_bt_buffer[cl_bt_out] & 0x7f;
		  cl_bt_out = (cl_bt_out + 1) % CL_BT_BUFFER_SIZE;
		}
	      
	      // terminate so we send the correct number of bytes
	      output_text[out_i] = '\0';
	      
	      // Send this data
	      send_bt_reply();
	    }
	}
    }
  
  cxx++;
	
  if( (cxx % 10) == 0 )
    {
      if( t )
	{
	  write_display_extra(3, 'W');
	}
      else
	{
	  write_display_extra(3, ' ');
	}
      t = !t;
    }


#if UART_INTERRUPTS

  // Any more characters?
  // If so, collect them
#if 0
  // Disabled as interrupts should be disabled before running this
  if( uart_is_readable(UART_ID) )
    {
      on_uart_rx();
      char_in_loop++;
    }
#endif
  // Has anything come in?
  // If so, add it to the input buffer

  while( irq_text_out_ptr != irq_text_in_ptr )  
    {
      char ch[2] = " ";
      ch[0] = interrupt_text[irq_text_out_ptr++];
      irq_text_out_ptr = (irq_text_out_ptr % INTERRUPT_TEXT_SIZE);
      
#else
      
#if WIFI_UART_PIO      
      while( !pio_sm_is_rx_fifo_empty(wrx_pio, wrx_sm) )
	{
	  char ch[2] = " ";
	  
	  // Capture RX serial data from the Psion
	  ch[0] = uart_wrx_program_getc(wrx_pio, wrx_sm);

#else
      while( uart_is_readable (UART_ID) )
       {
         char ch[2] = " ";
         ch[0] = uart_getc(UART_ID);
#endif
	      
#endif
	      
	 // check for special characters
      switch(ch[0])
	{
	  // CTRL-T: Toggle between BT cli and BT comms link and keyboard emulation
	case 0x14:
	  bluetooth_mode = (bluetooth_mode + 1) % NUM_BT_MODES;
	  strcpy(output_text, "Unknown mode");
	  
	  switch(bluetooth_mode )
	    {
	    case 0:
	      strcpy(output_text, "CLI Mode");
	      break;

	    case 1:
	      strcpy(output_text, "Comms Link Mode");
	      break;
	    case 2:
	      strcpy(output_text, "Terminal Mode");
	      break;
	    }

	  send_bt_reply();
	  
	  // return as we don't want to process the toggle character
	  return;
	  break;
	}
      
      // If we are collecting data then store it in buffer and don't process it
      if( collecting_bytes,0 )
	{
	  byte_buffer[byte_buffer_index++] = ch[0];
	  bytes_left_to_collect--;

	  if( bytes_left_to_collect == 0)
	    {
	      collecting_bytes = 0;
	      
	      // Call done function
	      (*when_done_fn)();
	    }
	  return;
	}
      else
	{
	  
	  // Add to input buffer if it is a character that we don't want to ignore
	  // Only process the input text if a full line has been received, i.e.
	  // a '\n' has been seen
	  
	  switch(ch[0])
	    {
	    case '\0':
	      break;
	      
	    case '\r':
	      //break;
	      
	    case '\n':
	      process_text = 1;
	      //break;
	      
	    default:
	      // Store input stream for debug
	      w_data_in[data_wrx_in_idx++] = ch[0];
	      data_wrx_in_idx = (data_wrx_in_idx % DATA_WRX_LEN);
	      
	      strcat(input_text, ch);
	      input_text_len++;
	      break;
	    }
	}
    }
  
  // We collect bytes for buffers here on the output of the input_text
  // array so the ordering of characters is correct. We have to count
  // '\r' and '\n' (and '\0' if they exist) characters
  
  if( collecting_bytes )
    {
      char ch;
      
      while( (bytes_left_to_collect > 0) && (input_text_len > 0) )
	{
	  ch = input_text[0];
	  remove_n(1);
	  
	  byte_buffer[byte_buffer_index++] = ch;
	  bytes_left_to_collect--;
	}
      
      if( bytes_left_to_collect == 0)
	{
	  collecting_bytes = 0;
	  
	  // Call done function
	  (*when_done_fn)();
	}
      
      // 
      return;
    }
  
  // Check the table of input string to see if anything matched
  if( process_text,1 )
    {
      // Drop leading whitespace

      while( isspace(input_text[0]) )
	{
	  remove_n(1);
	}
      
      for(int i=0; i<I_NUM_TASKS; i++)
	{
	  switch(input_list[i].type )
	    {
	    case ITY_STRING:
	      if( match(input_text, input_list[i].str) )
		{
		  // Match, execute the function
		  (*input_list[i].fn)(i);
		}
	      break;
	      
	    case ITY_FUNC:
	      if( (*(input_list[i].mfn))(i) )
		{
		  // Match, execute the function
		  (*input_list[i].fn)(i);
		}
	      break;
	    }
	}
    }
  
  // Run one task from the task table
  if( w_task_running )
    {
      if( w_task_delaying )
	{
	  u_int64_t now = time_us_64();
	  
	  // Waiting for a delay to finish
	  if( now >= w_task_delay_end )
	    {
	      // Delay over
	      w_task_delaying = 0;

	      // We want to go round and process the opcode that we have
	      // delayed on, it isn't delay as the index was incremented
	      // after the delay was set up
	      return;
	    }
	  else
	    {
	      // Delay not over
	      return;
	    }
	}
      else
	{
	  //DEBUG_STOP;
	  switch(tasklist[w_task_index].type)
	    {
	    case WTY_DELAY_MS:
	      sscanf(tasklist[w_task_index].string, "%ld", &parameter);
	      w_task_delaying = 1;
	      w_task_delay_end = time_us_64() + parameter*1000;
	      sprintf(delay_text, "%ld", parameter);
	  
#if WIFI_TEST
	      printxy_str(2,2,delay_text);
#endif
	      break;
	      
	    case WTY_PUTS:
	      sprintf(cmd,  tasklist[w_task_index].string);
#if WIFI_TEST
	      printxy_str(0,3, cmd);
#endif

#if WIFI_UART_PIO
    w_uart_puts(cmd);
#else
    uart_puts(UART_ID, cmd);
#endif
	      break;
	      
	    case WTY_SENDDATA:
#if WIFI_UART_PIO
	      w_uart_puts(output_text);
#else
	      uart_puts(UART_ID, output_text);
#endif
	      break;
	      
	    case WTY_STOP:
	      w_task_running = 0;
	      break;

	      // Run function
	    case WTY_FN:
	      (*tasklist[w_task_index].fn)();
	      break;
	    }
	}
      
      // Move to next index, if we aren't pointing to a stop
      if( tasklist[w_task_index].type != WTY_STOP )
	{
	  w_task_index++;
#if WIFI_TEST
	  printxy_hex(1,1,w_task_index);
#endif
	}
    }
}
