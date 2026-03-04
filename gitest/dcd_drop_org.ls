/PROG  DCD_DROP_ORG	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 434;
CREATE		= DATE 26-02-23  TIME 08:53:26;
MODIFIED	= DATE 26-02-23  TIME 08:53:26;
FILE_NAME	= DCD_DROP;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 754;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/MN
   1:  !***************** ;
   2:  !Seleccion de Drop ;
   3:  !***************** ;
   4:   ;
   5:  IF (F[2:OFF:(Reserved)]=OFF) THEN ;
   6:  R[60]=(1) ;
   7:  ENDIF ;
   8:  IF (F[2:OFF:(Reserved)]=ON) THEN ;
   9:  R[60]=(2) ;
  10:  ENDIF ;
  11:   ;
  12:  SELECT R[60]=1,CALL DROPCONV1 ;
  13:         =2,CALL ... ;
  14:   ;
  15:   ;
/POS
/END
