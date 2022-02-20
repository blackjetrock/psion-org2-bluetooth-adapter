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


void wireless_init(void);
void wireless_loop(void);
void wireless_taskloop(void);

extern int pending_tx;

#define CL_BT_BUFFER_SIZE  1000

extern int cl_bt_in;
extern int cl_bt_out;

extern BYTE cl_bt_buffer[CL_BT_BUFFER_SIZE];
extern int pending_tx;
