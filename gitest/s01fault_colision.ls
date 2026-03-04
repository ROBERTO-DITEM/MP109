/PROG  S01FAULT_COLISION	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Estacion 01";
PROG_SIZE	= 912;
CREATE		= DATE 26-02-17  TIME 10:20:20;
MODIFIED	= DATE 26-03-03  TIME 15:00:00;
FILE_NAME	= S01FAULT;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1200;
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
   9:  OVERRIDE=10% ;
  10:  UTOOL_NUM=1 ;
  11:  UFRAME_NUM=1 ;
  12:   ;
  13:  OVERRIDE=25% ;
  14:  CALL POUNCE_STA1    ;
  15:  CALL SERVICE_POS    ;
  16:   ;
  17:  MESSAGE[Colision] ;
  18:   ;
  19:  SET_STEP(203) ;
  20:  OK_T0CONT    ;
  21:   ;
  22:  F[25:OFF:COLISION]=(OFF) ;
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
