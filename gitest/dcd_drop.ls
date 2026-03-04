/PROG  DCD_DROP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 474;
CREATE		= DATE 26-02-14  TIME 12:57:20;
MODIFIED	= DATE 26-02-23  TIME 09:20:12;
FILE_NAME	= DCD_PICK;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 814;
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
   5:   ;
   6:  IF (R[90:DCD_DROP]>=4) THEN ;
   7:  R[90:DCD_DROP]=0    ;
   8:  ENDIF ;
   9:   ;
  10:  R[90:DCD_DROP]=(R[90:DCD_DROP]+1) ;
  11:   ;
  12:  SELECT R[90:DCD_DROP]=1,CALL DROPCONV3 ;
  13:         =2,CALL DROPCONV4 ;
  14:         =3,CALL DROPCONV1 ;
  15:         =4,CALL DROPCONV2 ;
  16:   ;
/POS
/END
