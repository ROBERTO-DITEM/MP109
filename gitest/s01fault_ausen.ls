/PROG  S01FAULT_AUSEN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Estacion 01";
PROG_SIZE	= 924;
CREATE		= DATE 26-02-12  TIME 09:13:02;
MODIFIED	= DATE 26-03-03  TIME 14:58:40;
FILE_NAME	= FAULT_UE;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1344;
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
   6:  !Estacion S01 ;
   7:  !***************** ;
   8:   ;
   9:  OVERRIDE=25% ;
  10:  CALL POUNCE_STA1    ;
  11:  CALL SERVICE_POS    ;
  12:   ;
  13:  SET_STEP(202) ;
  14:  OK_T0CONT    ;
  15:   ;
  16:  IF R[170]=1,JMP LBL[99] ;
  17:   ;
  18:  IF (R[170]=2) THEN ;
  19:  JMP LBL[99] ;
  20:  ENDIF ;
  21:   ;
  22:  LBL[99] ;
  23:J P[1] 100% CNT20    ;
  24:J PR[1:HOME] 100% CNT10    ;
  25:  OVERRIDE=100% ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1106.783  mm,	Y =  1667.835  mm,	Z =  1125.859  mm,
	W =  -178.323 deg,	P =   -16.826 deg,	R =    88.483 deg
};
/END
