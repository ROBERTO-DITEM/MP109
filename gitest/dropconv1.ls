/PROG  DROPCONV1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1247;
CREATE		= DATE 26-02-14  TIME 12:55:02;
MODIFIED	= DATE 26-03-03  TIME 15:13:20;
FILE_NAME	= DROPCONV;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1635;
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
   2:  !Drop de pieza ;
   3:  !Banda 1 de Conveyor ;
   4:  !***************** ;
   5:   ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=4 ;
   8:  PAYLOAD[2] ;
   9:  TIMER[4]=RESET ;
  10:  TIMER[4]=START ;
  11:   ;
  12:  SET_STEP(38) ;
  13:  OK_T0CONT    ;
  14:   ;
  15:J P[1] 100% CNT50    ;
  16:J P[2] 100% CNT100    ;
  17:L P[3] 1500mm/sec CNT30    ;
  18:L P[4] 500mm/sec FINE    ;
  19:   ;
  20:  CALL CIL1_EXTENDER    ;
  21:   ;
  22:L P[5] 700mm/sec CNT10    ;
  23:  DO[19:OFF:(Reserved)]=PULSE,1.0sec ;
  24:L P[6] 2000mm/sec CNT30    ;
  25:J P[7] 100% CNT100    ;
  26:  SET_STEP(63) ;
  27:   ;
  28:  CALL CIL2_EXTENDER    ;
  29:  R[101:Proceso]=0    ;
  30:  R[198]=0    ;
  31:  F[2:OFF:(Reserved)]=(ON) ;
  32:  TIMER[4]=STOP ;
/POS
P[1]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -930.001  mm,	Y =  -750.257  mm,	Z =   248.875  mm,
	W =  -179.965 deg,	P =     1.349 deg,	R =   152.619 deg
};
P[2]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -379.195  mm,	Y =  -251.732  mm,	Z =   245.957  mm,
	W =   179.074 deg,	P =      .213 deg,	R =    86.372 deg
};
P[3]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   257.575  mm,	Y =  -142.006  mm,	Z =    90.723  mm,
	W =  -179.092 deg,	P =     -.565 deg,	R =    92.650 deg
};
P[4]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   257.574  mm,	Y =  -172.006  mm,	Z =   -92.706  mm,
	W =  -179.092 deg,	P =     -.565 deg,	R =    92.650 deg
};
P[5]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   265.289  mm,	Y =  -292.005  mm,	Z =   -92.706  mm,
	W =  -179.092 deg,	P =     -.565 deg,	R =    92.650 deg
};
P[6]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   262.717  mm,	Y =  -292.148  mm,	Z =   134.650  mm,
	W =  -179.092 deg,	P =     -.565 deg,	R =    92.650 deg
};
P[7]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -796.299  mm,	Y =  -616.809  mm,	Z =    78.278  mm,
	W =   179.658 deg,	P =     -.581 deg,	R =   157.820 deg
};
/END
