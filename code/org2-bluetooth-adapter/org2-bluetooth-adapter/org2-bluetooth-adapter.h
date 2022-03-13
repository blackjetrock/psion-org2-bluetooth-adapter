// Use this if breakpoints don't work
#define DEBUG_STOP {volatile int x = 1; while(x) {} }

// Are we compiling for the gadget breakout or the picopak?
#define PICOPAK 0

// Bluetooth adapter pinout slightly different
#define BLUETOOTH_ADAPTER             1
#define PSION_XFER                    1    // Compile in Psion serial code
#define TRISTATE_ONLY                 1    // Only drive tristate pin
#define PERMANENT_RX                  0    // RX hardware always running

// Drop into a loop that displays key states and does nothing else
#define KEY_DEBUG_ONLY                0
#define TEST_IOPORT                   0

// Interrupts may muck up the pack interface, but it does seem to run with them enabled.
// If USB is ever to work then interrupts need to be enabled.
#define NO_INTERRUPTS_WHILE_POLLING   1
#define TEST_STDIO                    0
#define FORCE_TRISTATE_OFF            0

// Redefine pins to match our hardware
#define PICO_SD_CLK_PIN        5
#define PICO_SD_CMD_PIN       18
#define PICO_SD_DAT0_PIN      19
#define ENABLE_4_PIN           0

#define SUPPORT_ID_BYTE        1
#define PAK_ID_BYTE         0x01
#define READ_ONLY              0
#define INIT_PAK_MEMORY        1
#define FF_FIRST_BYTES         0

// Direct access to GPIO registers is faster, and we need speed
#define DIRECT_GPIO            1

// Number of buttons used for the menu system. The 'exit polling' button is not in this
// list, it is coded as a GPIO line as we don't want to waste time processing the menu
// buttons inthe fast polling loop

#define NUM_BUTTONS            3

// All organiser files are in this subdirectory on the SD card, just to keep things tidy
// and allow the card to be used for other things if needed.
#define PAK_DIR                "/PAK"

// Debounce
#define MAX_BUT_COUNT          6

extern const uint SDA_PIN;
extern const uint SCL_PIN;
extern const int IO0_PIN;
extern const int IO1_PIN;
extern const int IO2_PIN;
extern const int TRISTATE_TX_PIN;
extern const int TX_PSION_PIN;
extern const int WROOM_ON_PIN;
extern const int IO6_PIN;

extern const int OP_CLK_PIN;
extern const int IP_CLK_PIN;

// IO7 can also be used to measure battery voltage
extern const int IO7_PIN;

extern const int SLOT_SPGM_PIN;
extern const int SLOT_SS_PIN;

#if BLUETOOTH_ADAPTER
extern const int SLOT_SCLK_PIN;
#else
extern const int SLOT_SCLK_PIN;
#endif

extern const int SLOT_SOE_PIN;
extern const int SLOT_SMR_PIN;

extern const int SLOT_SD0_PIN;
extern const int SLOT_SD1_PIN;
extern const int SLOT_SD2_PIN;
extern const int SLOT_SD3_PIN;
extern const int SLOT_SD4_PIN;
extern const int SLOT_SD5_PIN;
extern const int SLOT_SD6_PIN;
extern const int SLOT_SD7_PIN;

extern const int LS_DIR_PIN;

#define UART_INTERRUPTS      0     // Interrupt for UART data collection
#define WIFI_UART_PIO        1     // Wifi module UART is PIO based

// Do we use a polling loop of interrupts?
#define USE_INTERRUPTS         0
#define USE_POLLING            1

// For added speed, we poll the address counter stuff on the other core
#define MULTICORE_POLL         1

// Do we drive the OLED?
#define USE_OLED   0

// The address into pak memory
#define PAK_ADDRESS (ss_address | ss_page)

typedef unsigned char BYTE;

// where things are displayed
#define SEL_Y   (2*8)
#define IFN_Y   (1*8)

////////////////////////////////////////////////////////////////////////////////
//
// I2C Port descriptor
//

typedef struct _I2C_PORT_DESC
{
  unsigned char sdaport;
  unsigned char sdabit;
  unsigned char sclport;
  unsigned char sclbit;
} I2C_PORT_DESC;


// Slave device descriptor
typedef struct _I2C_SLAVE_DESC
{
  I2C_PORT_DESC *port;             // Port the device is on
  unsigned char slave_7bit_addr;        // SLave address
} I2C_SLAVE_DESC;

extern I2C_SLAVE_DESC oled0;

////////////////////////////////////////////////////////////////////////////////
//
// PIO UART variables
//

extern PIO wrx_pio;
extern uint wrx_sm;
extern uint wrx_offset;

extern int wrx_init;

// WTX PIO parameters
extern PIO wtx_pio;
extern uint wtx_sm;
extern uint wtx_offset;

extern int wtx_init;

////////////////////////////////////////////////////////////////////////////////
//
// Data received from PIO
#define DATA_RX_LEN 1000

extern int data_rx_in_idx;
extern int data_rx_out_idx;
extern char data_in[DATA_RX_LEN];

// Data sent to Psion
#define DATA_TX_LEN 1000

extern int data_tx_in_idx;
extern int data_tx_out_idx;
extern char data_out[DATA_TX_LEN];

// Wifi module buffers
#define DATA_WRX_LEN 1000

extern int data_wrx_in_idx;
extern int data_wrx_out_idx;
extern char w_data_in[DATA_WRX_LEN];

// Data sent to wifi module

#define DATA_WTX_LEN 1000

extern int data_wtx_in_idx;
extern int data_wtx_out_idx;
extern char w_data_out[DATA_WTX_LEN];

extern int bt_link_up;
