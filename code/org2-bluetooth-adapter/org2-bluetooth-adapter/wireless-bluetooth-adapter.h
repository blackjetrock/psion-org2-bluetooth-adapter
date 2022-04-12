////////////////////////////////////////////////////////////////////////////////
//
// Wireless functions
//
// Wifi and Bluetooth
//

#define WIFI                 0
#define BLUETOOTH            1     // Enable bluetooth comms
#define BLUETOOTH_M          0     // Operate BT in master mode
#define BLUETOOTH_S          1     // Operate BT in slave mode

typedef enum _BLUETOOTH_MODE
  {
   BT_MODE_CLI = 0,     // Bluetooth CLI
   BT_MODE_COMMS_LINK,  // Bluetooth goes to comms link/serial registers
   BT_MODE_TERM,        // Bluetooth goes to keyboard/display
   NUM_BT_MODES,        // Number of modes we have
  } BLUETOOTH_MODE;


// Monitor stuff
extern int monitor_active;

#define MONITOR_BUFFER_SIZE  200

extern char monitor_buffer[MONITOR_BUFFER_SIZE];

extern int monitor_buffer_in;
extern int monitor_buffer_out;
void mon_reply(char *s);
extern int monitor_sign_on;

void wireless_init(void);
void wireless_loop(void);
void wireless_taskloop(void);

extern int pending_tx;
typedef void (*MONITOR_CMD_FN)(char *cmd);

#define CL_BT_BUFFER_SIZE  1000

extern int cl_bt_in;
extern int cl_bt_out;

extern BYTE cl_bt_buffer[CL_BT_BUFFER_SIZE];
extern int pending_tx;

#if 1
typedef struct _BT_DEVICE
{
  char name[20];
  char id[6*3+5];
} BT_DEVICE;

#define NUM_BT_DEVICES 30
#endif

extern int bt_device_i;
extern BT_DEVICE bt_device[NUM_BT_DEVICES];
