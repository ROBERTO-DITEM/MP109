/PROG  S02FAULT_UENTOSA	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Estacion 01";
PROG_SIZE	= 509;
CREATE		= DATE 26-02-12  TIME 09:18:32;
MODIFIED	= DATE 26-03-03  TIME 15:05:02;
FILE_NAME	= S01FAULT;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 817;
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
   2:  !Celda 04 ;
   3:  !Robot  01 ;
   4:  !Clarion ;
   5:  !Estacion S01 ;
   6:  !***************** ;
   7:   ;
   8:  OVERRIDE=25% ;
   9:  CALL POUNCE_STA2    ;
  10:J PR[2:SERVICE] 25% FINE    ;
  11:   ;
  12:  SET_STEP(201) ;
  13:  OK_T0CONT    ;
  14:   ;
  15:  F[19:OFF:Falla Ventosa]=(OFF) ;
  16:  CALL POUNCE_STA2    ;
  17:  OVERRIDE=100% ;
  18:   ;
/POS
/END
