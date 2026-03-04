/PROG  S02FAULT_AUSEN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Estacion 01";
PROG_SIZE	= 625;
CREATE		= DATE 26-02-12  TIME 09:24:22;
MODIFIED	= DATE 26-03-03  TIME 15:03:38;
FILE_NAME	= S01FAULT;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1037;
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
  13:  MESSAGE[Ausencia] ;
  14:  SET_STEP(202) ;
  15:  OK_T0CONT    ;
  16:   ;
  17:  IF R[170]=1,JMP LBL[99] ;
  18:   ;
  19:  IF (R[170]=2) THEN ;
  20:  JMP LBL[99] ;
  21:  ENDIF ;
  22:   ;
  23:  LBL[99] ;
  24:  CALL POUNCE_STA2    ;
  25:  OVERRIDE=100% ;
/POS
/END
