/PROG  ZPKSEPARACK02
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2029;
CREATE		= DATE 26-02-05  TIME 15:38:20;
MODIFIED	= DATE 26-02-05  TIME 15:38:20;
FILE_NAME	= PKSEPARA;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 2461;
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
   2:  !Celda 04 ;
   3:  !Robot  01 ;
   4:  !Rutina: Separador St02 ;
   5:  !Clarion ;
   6:  !***************** ;
   7:   ;
   8:  UTOOL_NUM=3 ;
   9:  UFRAME_NUM=2 ;
  10:   ;
  11:J P[1] 100% FINE    ;
  12:  LBL[1] ;
  13:  R[81:Reintento ventoa]=0    ;
  14:  DO[198:OFF:Vacuum ON]=OFF ;
  15:  DO[197:OFF:Vacuum OFF]=ON ;
  16:   ;
  17:L P[2] 1000mm/sec CNT100    ;
  18:  DO[197:OFF:Vacuum OFF]=OFF ;
  19:L P[3] 500mm/sec FINE    ;
  20:  CALL NIVEL_SEP_ST02    ;
  21:  CALL VACUUM_ON    ;
  22:J PR[70:STK_ACTUAL] 25% FINE    ;
  23:   ;
  24:  IF R[81:Reintento ventoa]=1,JMP LBL[1] ;
  25:   ;
  26:  DO[35:OFF:PICK_STA02]=PULSE,1.0sec ;
  27:   ;
  28:L P[4] 500mm/sec FINE INC    ;
  29:   ;
  30:L P[5] 700mm/sec FINE    ;
  31:   ;
  32:L P[6] 1000mm/sec FINE    ;
  33:L P[7] 1000mm/sec CNT10    ;
  34:L P[8] 1000mm/sec CNT10    ;
  35:L P[9] 1000mm/sec CNT10    ;
  36:L P[10] 1000mm/sec CNT20    ;
  37:  //L P[14] 500mm/sec FINE    ;
  38:L P[17] 500mm/sec FINE    ;
  39:   ;
  40:  IF (GI[15:0:Separador Sup ST02]<=10) THEN ;
  41:  JMP LBL[10] ;
  42:  ENDIF ;
  43:  LBL[10] ;
  44:   ;
  45:   ;
  46:L P[18] 500mm/sec FINE    ;
  47:   ;
  48:  CALL VACUUM_OFF    ;
  49:   ;
  50:L P[19] 500mm/sec FINE    ;
  51:   ;
  52:L P[20] 1500mm/sec CNT50    ;
  53:J P[21] 60% CNT50    ;
  54:J P[22] 50% FINE    ;
  55:  R[200:ajusteArrastre]=1    ;
  56:   ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -409.055  mm,	Y =  -104.094  mm,	Z =  1060.907  mm,
	W =    90.215 deg,	P =     1.336 deg,	R =    20.879 deg
};
P[2]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[3]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   565.302  mm,	Y =   452.689  mm,	Z =   356.144  mm,
	W =  -177.852 deg,	P =     -.490 deg,	R =   -45.698 deg
};
P[4]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =    -2.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[5]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[6]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -440.868  mm,	Y =   590.214  mm,	Z =  1292.213  mm,
	W =  -157.145 deg,	P =   -13.671 deg,	R =   -32.787 deg
};
P[7]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -540.194  mm,	Y =   691.116  mm,	Z =  1220.069  mm,
	W =  -149.752 deg,	P =    20.042 deg,	R =   -25.440 deg
};
P[8]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -680.752  mm,	Y =   563.045  mm,	Z =  1883.575  mm,
	W =  -123.382 deg,	P =    21.916 deg,	R =    -9.005 deg
};
P[9]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -571.865  mm,	Y =   313.391  mm,	Z =  2255.638  mm,
	W =  -147.975 deg,	P =      .498 deg,	R =   -46.485 deg
};
P[10]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =    91.634  mm,	Y =   423.432  mm,	Z =  2262.409  mm,
	W =  -166.684 deg,	P =    -4.522 deg,	R =   -48.758 deg
};
P[14]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   463.611  mm,	Y =   491.980  mm,	Z =  2159.736  mm,
	W =  -172.818 deg,	P =    -2.776 deg,	R =   -49.414 deg
};
P[17]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, -1, 1',
	X =   572.879  mm,	Y =   476.475  mm,	Z =  2198.409  mm,
	W =  -175.558 deg,	P =    -1.119 deg,	R =   -47.409 deg
};
P[18]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, -1, 1',
	X =   578.153  mm,	Y =   479.337  mm,	Z =  2123.506  mm,
	W =  -175.558 deg,	P =    -1.119 deg,	R =   -47.409 deg
};
P[19]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   463.611  mm,	Y =   491.980  mm,	Z =  2159.736  mm,
	W =  -172.818 deg,	P =    -2.776 deg,	R =   -49.414 deg
};
P[20]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -126.798  mm,	Y =   314.987  mm,	Z =  2260.032  mm,
	W =  -164.236 deg,	P =    -5.204 deg,	R =   -49.185 deg
};
P[21]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -423.392  mm,	Y =   447.038  mm,	Z =  2169.983  mm,
	W =  -170.627 deg,	P =    -3.405 deg,	R =   -48.486 deg
};
P[22]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -409.055  mm,	Y =  -104.094  mm,	Z =  1060.907  mm,
	W =    90.215 deg,	P =     1.336 deg,	R =    20.879 deg
};
/END
