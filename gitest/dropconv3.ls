/PROG  DROPCONV3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1197;
CREATE		= DATE 26-02-24  TIME 08:56:30;
MODIFIED	= DATE 26-02-24  TIME 08:56:30;
FILE_NAME	= DROPCONV;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1473;
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
  12:J P[10] 100% CNT50    ;
  13:J P[13] 100% CNT100    ;
  14:L P[3] 1000mm/sec CNT30    ;
  15:L P[4] 500mm/sec FINE    ;
  16:   ;
  17:  CALL CIL1_EXTENDER    ;
  18:   ;
  19:L P[5] 700mm/sec CNT10    ;
  20:  DO[19:OFF:(Reserved)]=PULSE,1.0sec ;
  21:L P[6] 2000mm/sec CNT30    ;
  22:J P[12] 100% CNT100    ;
  23:   ;
  24:  CALL CIL2_EXTENDER    ;
  25:  R[101:Proceso]=0    ;
  26:  R[198]=0    ;
  27:  F[2:OFF:(Reserved)]=(ON) ;
  28:  TIMER[4]=STOP ;
/POS
P[3]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   507.472  mm,	Y =  -125.463  mm,	Z =   129.274  mm,
	W =  -179.851 deg,	P =     -.530 deg,	R =    92.657 deg
};
P[4]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   507.471  mm,	Y =  -163.188  mm,	Z =   -93.784  mm,
	W =  -179.851 deg,	P =     -.530 deg,	R =    92.657 deg
};
P[5]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.468  mm,	Y =  -282.286  mm,	Z =   -91.928  mm,
	W =  -179.851 deg,	P =     -.530 deg,	R =    92.657 deg
};
P[6]{
   GP1:
	UF : 4, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.467  mm,	Y =  -282.286  mm,	Z =   117.215  mm,
	W =  -179.851 deg,	P =     -.530 deg,	R =    92.657 deg
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
