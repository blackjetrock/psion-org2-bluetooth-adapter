////////////////////////////////////////////////////////////////////////////////
//
// Match utility
//
////////////////////////////////////////////////////////////////////////////////

#include <ctype.h>
#include <stdlib.h>

#define MAX_INT_ARGS          15
#define MAX_STR_ARGS          2
#define MAX_STR_ARG_LEN       20

#define MATCH_MAX_SETSPEC     40
#define MATCH_NUM_MATCH_SPEC  20

typedef enum _MATCH_POL
  {
   MATCH_POL_NON_INVERTED = 1,
   MATCH_POL_INVERTED,
   
  } MATCH_POL;

typedef struct _MATCH_SPEC
{
  MATCH_POL polarity;    // match if in range or out of range
  int       range_first; // First char of range
  int       range_last;  // Last char of range
} MATCH_SPEC;

extern char *match_err;
extern char *match_err_parm;
extern int match_err_int_parm;
extern int match_num_scanned;

extern int match_int_arg[MAX_INT_ARGS];
extern int match_int_arg_i;

extern char match_str_arg[MAX_STR_ARGS][MAX_STR_ARG_LEN];
extern int match_str_arg_i;


int match(char *str, char *fmt);
