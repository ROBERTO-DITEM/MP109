/PROG  DROPCONV2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1255;
CREATE		= DATE 26-02-24  TIME 08:55:52;
MODIFIED	= DATE 26-03-03  TIME 15:14:02;
FILE_NAME	= DROPCONV;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1639;
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
   3:  !Banda 2 de Conveyor ;
   4:  !***************** ;
   5:   ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=4 ;
   8:  PAYLOAD[2] ;
   9:  TIMER[5]=RESET ;
  10:  TIMER[5]=START ;
  11:   ;
  12:  SET_STEP(42) ;
  13:  OK_T0CONT    ;
  14:   ;
  15:J P[10] 100% CNT80    ;
  16:   ;
  17:J P[13] 100% CNT100    ;
  18:L P[3] 1000mm/sec CNT10    ;
  19:L P[4] 500mm/sec FINE    ;
  20:   ;
  21:  CALL CIL1_EXTENDER    ;
  22:   ;
  23:L P[5] 800mm/sec CNT10    ;
  24:  DO[19:OFF:(Reserved)]=PULSE,1.0sec ;
  25:L P[6] 1500mm/sec CNT30    ;
  26:J P[12] 100% CNT100    ;
  27:  SET_STEP(63) ;
  28:   ;
  29:  CALL CIL2_EXTENDER    ;
  30:  R[101:Proceso]=0    ;
  31:  R[198]=0    ;
  32:  F[2:OFF:(Reserved)]=(OFF) ;
  33:  TIMER[5]=STOP ;
/POS
P[3]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   239.962  mm,	Y =   356.684  mm,	Z =    93.220  mm,
	W =  -179.642 deg,	P =    -1.153 deg,	R =    93.281 deg
};
P[4]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   239.964  mm,	Y =   341.399  mm,	Z =   -98.065  mm,
	W =  -179.642 deg,	P =    -1.153 deg,	R =    93.280 deg
};
P[5]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   246.182  mm,	Y =   214.574  mm,	Z =   -98.067  mm,
	W =  -179.642 deg,	P =    -1.153 deg,	R =    93.281 deg
};
P[6]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   246.182  mm,	Y =   214.574  mm,	Z =   110.075  mm,
	W =  -179.642 deg,	P =    -1.153 deg,	R =    93.281 deg
};
P[10]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -930.001  mm,	Y =  -750.257  mm,	Z =   248.875  mm,
	W =  -179.965 deg,	P =     1.349 deg,	R =   152.619 deg
};
P[12]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -796.299  mm,	Y =  -616.809  mm,	Z =    78.278  mm,
	W =   179.658 deg,	P =     -.581 deg,	R =   157.820 deg
};
P[13]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -379.195  mm,	Y =  -251.732  mm,	Z =   245.957  mm,
	W =   179.074 deg,	P =      .213 deg,	R =    86.372 deg
};
/END
