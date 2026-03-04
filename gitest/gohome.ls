/PROG  GOHOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 256;
CREATE		= DATE 26-02-03  TIME 15:17:28;
MODIFIED	= DATE 26-02-16  TIME 11:00:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 600;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 4000,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/MN
   1:  !***************** ;
   2:  !Posicion de Casa ;
   3:  !***************** ;
   4:   ;
   5:  UTOOL_NUM=1 ;
   6:J PR[1:HOME] 100% FINE    ;
   7:   ;
/POS
/END
