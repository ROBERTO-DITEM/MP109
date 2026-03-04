/PROG  S02FAULT_COLISION	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Estacion 01";
PROG_SIZE	= 573;
CREATE		= DATE 26-02-17  TIME 10:19:48;
MODIFIED	= DATE 26-03-03  TIME 15:04:16;
FILE_NAME	= S02FAULT;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 865;
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
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !***************** ;
   2:  !Celda 03 ;
   3:  !Robot  01 ;
   4:  !Aplicacion: MH ;
   5:  !Clarion ;
   6:  !Estacion S02 ;
   7:  !***************** ;
   8:   ;
   9:  OVERRIDE=25% ;
  10:  CALL POUNCE_STA2    ;
  11:J PR[2:SERVICE] 25% FINE    ;
  12:   ;
  13:  MESSAGE[Colision] ;
  14:   ;
  15:  SET_STEP(203) ;
  16:  OK_T0CONT    ;
  17:   ;
  18:  F[25:OFF:COLISION]=(OFF) ;
  19:  CALL POUNCE_STA2    ;
  20:   ;
  21:J PR[1:HOME] 100% FINE    ;
  22:  OVERRIDE=100% ;
/POS
/END
