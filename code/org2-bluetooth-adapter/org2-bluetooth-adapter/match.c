////////////////////////////////////////////////////////////////////////////////
//
// This is a replacement for sscanf as the sscanf in the Pico SDk seems
// to have problems.
// Hopefully this is a bit quicker too as it doesn't do as much
//
// Arguments are placed in order in
//
// match_int_arg[]
//
//
// ' ' matches any number of whitespace
//
// fmt can have %d in it which matches positive integers
//
// return value:   1 if it matches and 0 if not
//
// If there's a coding error then match fails and error vars are set up
//
////////////////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <string.h>

#include "match.h"

#define DEBUG 0

#if DEBUG
#include <stdio.h>
#define return_fail(XXX) printf(XXX); return(0)
#else
#define return_fail(XX) return(0)
#endif


char *match_err = "no_error";
char *match_err_parm = "none";
int match_err_int_parm = 0;

// Set Specification match specifications
int matchspec_i = 0;
MATCH_SPEC setspec_match[MATCH_NUM_MATCH_SPEC];

int match_num_scanned = 0;
int match_int_arg[MAX_INT_ARGS];
int match_int_arg_i = 0;

char match_str_arg[MAX_STR_ARGS][MAX_STR_ARG_LEN];
int match_str_arg_i = 0;

int add_int_arg(int value, char *fmt)
{
  match_int_arg[match_int_arg_i++] = value;
  
  if( match_int_arg_i >= MAX_INT_ARGS )
    {
      match_err = "Too many %d";
      match_err_parm = fmt;
      match_err_int_parm = match_int_arg_i;
      return_fail("\nToo many args\n");
    }
  
  return(1);
}

int is_space_char(char c)
{
  if( (c <= 0x20) || (c>=0x7f) )
    {
      return(1);
    }
  
  return(0);
}

int match(char *str, char *fmt)
{
  int si = 0;
  int fi = 0;
  int seti = 0;
  char set[MATCH_MAX_SETSPEC];
  
  int argval;
  unsigned long largval;
  
  match_int_arg_i = 0;
  match_str_arg_i = 0;
  
  match_num_scanned = 0;

  for(int i=0; i<MAX_INT_ARGS; i++)
    {
      match_int_arg[i] = 0;      
    }

  for(int i=0; i<MAX_STR_ARGS; i++)
    {
      match_str_arg[i][0] = '\0';      
    }
  
  // Continue until we reach the end of either string
  while((fmt[fi] != '\0') && (str[si] != '\0') )
    {
#if DEBUG
      printf("\nfmt = '%s' fi=%d si=%d", fmt, fi, si);
#endif
      
      switch(fmt[fi])
	{
	  // Match whitespace. This is text we aren';t interested in. As we deal with
	  // only alphanumeric data here, we treat non alpha numeri data as whitespace
	case ' ':
	  fi++;
	  while( is_space_char(str[si]) )
	    //  while( !isalnum(str[si]) )
	    {
	      si++;
	      match_num_scanned++;
	    }
	  break;
	  
	case '%':
	  fi++;
	  if( fmt[fi] == '\0' )
	    {
	      // Error in fmt string
	      match_err = "Bad fmt";
	      match_err_parm = &(fmt[0]);
	      return_fail("\nBad fmt\n");
	    }

#if DEBUG	  
	  printf("\nTESTCHAR:'%c'", fmt[fi]);
#endif
	  switch(fmt[fi])
	    {
	    case '%':
	      // We must match a %
	      if( str[si++] == '%' )
		{
		  // All ok so far
		}
	      else
		{
		  // Mismatch
		  return_fail("\nMismatch\n");
		}

	      match_num_scanned++;
	      
	      // Move to next fmt char
	      fi++;
	      break;

	      // Match a set of characters
	      // [^,] : Match until comma found
	    case '[':
	      if( str[si] == '\0' )
		{
		  return_fail("\nEndof string:d\n");
		}
	      
	      // Set up ready to collect data
	      match_str_arg[match_str_arg_i][0] = '\0';
	      
	      // Collect the set specification
	      seti = 0;

	      // Skip the open bracket
	      fi++;
	      
	      while( (fmt[fi] != '\0') && (fmt[fi] != ']') && (seti < MATCH_MAX_SETSPEC - 2) )
		{
		  set[seti++] = fmt[fi++];
		}

	      if( seti >= (MATCH_MAX_SETSPEC - 2) )
		{
		  return_fail("\nSet too long\n");
		}
	      
	      // Check correct end of fmt string
	      if( fmt[fi] == '\0' )
		{
		  return_fail("\nNo end bracket in set spec\n");
		}

	      // We look ahead 2 chars so put extra null in
	      set[seti++] = '\0';
	      set[seti++] = '\0';
#if DEBUG
	      printf("\nSET:'%s'", set);
#endif		      
	      // We have the specification of the set, now parse it and build a list of
	      // match specs
	      matchspec_i = 0;
	      int pol = MATCH_POL_NON_INVERTED;
	      
	      for(int i=0; i<strlen(set); i++)
		{
		  // Get a character
		  switch(set[i])
		    {
		      // Special character
		    case '^':
		      pol = MATCH_POL_INVERTED;
		      break;

		      // All other characters
		    default:
		      if( set[i+1] == '-' )
			{
			  i++;
			  
			  // Could be a range, or could be special match of '-'
			  // N nulls at end for look-ahead
			  if( set[i+1] == '\0' )
			    {
			      // Just the end of the set with a '-' to be matched as well
			      setspec_match[matchspec_i].polarity = pol;
			      setspec_match[matchspec_i].range_first = set[i];
			      setspec_match[matchspec_i].range_last = set[i];
			      matchspec_i++;

			      //** check matchspec in range
			      setspec_match[matchspec_i].polarity = pol;
			      setspec_match[matchspec_i].range_first = set[i];
			      setspec_match[matchspec_i].range_last = set[i];
			      matchspec_i++;
			      //** check matchspec in range
			    }
			  else
			    {
			      i++;
			      // It is a range
			      setspec_match[matchspec_i].polarity = pol;
			      setspec_match[matchspec_i].range_first = set[i-2];
			      setspec_match[matchspec_i].range_last = set[i];
			      matchspec_i++;
			    }
			}
		      else
			{
			  // Single character, set up as range of just this char
			  setspec_match[matchspec_i].polarity = pol;
			  setspec_match[matchspec_i].range_first = set[i];
			  setspec_match[matchspec_i].range_last = set[i];
			  matchspec_i++;
			}
		      break;
		    }
		}
#if DEBUG		  	      
	      for(int i=0; i<matchspec_i; i++)
		{
		  printf("\n  MSPEC:'%c' - '%c' pol:%d", setspec_match[i].range_first
			 , setspec_match[i].range_last
			 , setspec_match[i].polarity);
		}
#endif
	      
	      // We have the set specification at this point
	      // Now we can check the string

	      int str_done = 0;
	      while( (str[si] != '\0')  && !str_done )
		{
		  int found_match = 0;
		  
		  // Does this character match?
		  for(int m = 0; m<matchspec_i; m++)
		    {
#if DEBUG
		      printf("\n   MSPEC TEST:'%c'", str[si]);
#endif
		      if(
			 setspec_match[m].polarity==MATCH_POL_NON_INVERTED?
			 
			 ((str[si] >= setspec_match[m].range_first) &&
			  (str[si] <= setspec_match[m].range_last))
			 :
			 !((str[si] >= setspec_match[m].range_first) &&
			  (str[si] <= setspec_match[m].range_last))
			 )
			{
			  // Success
			  if( match_str_arg_i == (MAX_STR_ARGS) )
			    {
			      return_fail("\nToo many string args\n");
			    }

			  // Add character to scanned data
			  char cstr[2];
			  cstr[1] = '\0';
			  cstr[0] = str[si];
			  strcat(match_str_arg[match_str_arg_i], cstr);
#if DEBUG
			  printf(" OK");
#endif
			  found_match = 1;
			  
			  // We have a match so don't search for more
			  break;
			}
		      else
			{
#if DEBUG
			  printf(" NO");
#endif

			  // Failed to match, so end
			  //str_done = 1;
			  // Move to next spec
			  continue;
			}
		      
		    }

		  // All specs checked, so we don't match this character
		  if( !found_match )
		    {
		      str_done = 1;
		    }
		  
		  if( !str_done )
		    {
#if DEBUG
		      printf("\n  MATCHED:'%c'", str[si]);
#endif
		      si++;
		      match_num_scanned++;
		    }
		}

	      match_str_arg_i++;
	      fi++;
	      break;
	      
	      // We match a string of digits
	    case 'd':
	    case 'x':
	      
	      if( str[si] == '\0' )
		{
		  return_fail("\nEndof string:d\n");
		}
	      
	      argval = 0;
	      largval =0;
	      int argval_sign = 1;
	      
	      // We allow a dash anywhere for now in decimal number
	      while(  ((fmt[fi] == 'd') && (isdigit(str[si]) || (str[si] == '-')) ) ||
		      ((fmt[fi] == 'x') && isxdigit(str[si])) )
		{
		  char digit[2] = " ";
		  digit[0] = str[si];

		  switch(fmt[fi])
		    {
		    case 'd':
		      if( digit[0] == '-' )
			{
			  // Dash means negative number
			  argval_sign = -1;
			}
		      else
			{
			  argval *= 10;
			  argval += atoi(digit);
			}
		      break;

		    case 'x':
		      argval *= 16;
		      argval += (int)strtoul(digit, NULL, 16);
		      //		      argval = (int) largval;
		      break;
		    }
		  
		  si++;
		  match_num_scanned++;

		  if( str[si] == '\0' )
		    {
		      // If fmt not completed then fail
		      if( fmt[fi+1] != '\0' )
			{
			  return_fail("\nFmt not completed:1\n");
			}
		      
		      // All digits and at end so success
		      if( add_int_arg(argval * argval_sign, fmt) )
			{
			}
		      else
			{
			  // Error adding the arg
			  return_fail("\nError adding arg:1\n");
			}
		      
		      return(1);
		    }
		}

	      if( si == 0 )
		{
		  // Must be a mismatch
		  return_fail("\nMismatch:2\n");
		}
	      
	      if( ((fmt[fi] == 'd') && (isdigit(str[si-1]) || (str[si-1] == '-'))) ||
		  ((fmt[fi] == 'x') && isxdigit(str[si-1])) )
		{
		  // All ok
		  if( add_int_arg(argval * argval_sign, fmt) )
		    {
		    }
		  else
		    {
		      // Error adding the arg
		      return_fail("\nError adding arg:2\n");
		    }
		}
	      else
		{
		  // mismatch
		  return_fail("\nMismatch:3\n");
		}
	      fi++;
	      break;

	    default:
	      break;
	    }
	  break;

	default:
	  // Literal char must match
	  if( str[si++] == fmt[fi++] )
	    {
#if DEBUG
	      printf("\n    PLAIN:'%c'", str[si-1]);
#endif
	    }
	  else
	    {
#if DEBUG
	      printf("\n    PLAIN FAIL:'%c'", str[si-1]);
#endif
	      return_fail("\nLiteral mismatch:4\n");
	    }
	  match_num_scanned++;
	  break;
	}
    }
  
  // If we get here then we have a match if the format string has
  // also been fully parsed

#if DEBUG
  printf("\nEnd of fmt:'%c' str:'%c'", fmt[fi], str[si]);
#endif
  
  if( fmt[fi] == '\0' )
    {
      return(1);
    }
  else
    {
      // We are not at the end of the fmt string, but it could be a space at the end
      // which is OK
      switch(fmt[fi])
	{
	case ' ':
	  // trailing space is ok, as long as there is nothing after it
	  if( fmt[fi+1] == '\0' )
	    {
	      return(1);
	    }
	  else
	    {
	      return(0);
	    }
	  break;

	default:
	  return_fail("\nEnd fail 1\n");
	  break;
	}
    }
}
