/PROG  S01FAULT_UENTOSA	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Estacion 01";
PROG_SIZE	= 872;
CREATE		= DATE 26-02-12  TIME 09:13:36;
MODIFIED	= DATE 26-03-03  TIME 15:03:20;
FILE_NAME	= STYLE010;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1168;
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
   8:  UTOOL_NUM=1 ;
   9:  UFRAME_NUM=1 ;
  10:   ;
  11:   ;
  12:  OVERRIDE=25% ;
  13:  CALL POUNCE_STA1    ;
  14:  CALL SERVICE_POS    ;
  15:   ;
  16:  SET_STEP(201) ;
  17:  OK_T0CONT    ;
  18:  F[19:OFF:Falla Ventosa]=(OFF) ;
  19:J P[1] 100% CNT20    ;
  20:J PR[1:HOME] 100% CNT10    ;
  21:  OVERRIDE=100% ;
  22:  !***************** ;
  23:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1106.783  mm,	Y =  1667.835  mm,	Z =  1125.859  mm,
	W =  -178.323 deg,	P =   -16.826 deg,	R =    88.483 deg
};
/END
