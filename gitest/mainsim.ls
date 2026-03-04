/PROG  MAINSIM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 458;
CREATE		= DATE 25-10-23  TIME 20:23:20;
MODIFIED	= DATE 25-11-05  TIME 02:03:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 918;
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
/MN
   1:  LBL[1] ;
   2:  CALL GOHOME    ;
   3:   ;
   4:  CALL HOME_POUNCE    ;
   5:   ;
   6:  CALL POUNCE_RACK2    ;
   7:   ;
   8:  CALL DCD_PICK    ;
   9:   ;
  10:  CALL RACK2_POUNCE    ;
  11:   ;
  12:  CALL GOHOME    ;
  13:   ;
  14:  CALL DCD_DROP    ;
  15:   ;
  16:  CALL GOHOME    ;
  17:   ;
  18:   ;
  19:  DO[1:OFF:Cmd enabled]=OFF ;
  20:  DO[2:OFF:System ready]=OFF ;
  21:  IF R[100]<25,JMP LBL[1] ;
  22:  R[100]=0    ;
  23:  ABORT ;
/POS
/END
