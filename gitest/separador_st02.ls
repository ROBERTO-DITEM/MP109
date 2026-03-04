/PROG  SEPARADOR_ST02
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2023;
CREATE		= DATE 26-02-06  TIME 08:30:34;
MODIFIED	= DATE 26-02-11  TIME 09:49:22;
FILE_NAME	= PKSEPARA;
VERSION		= 0;
LINE_COUNT	= 54;
MEMORY_SIZE	= 2463;
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
  10:  PAYLOAD[3] ;
  11:   ;
  12:J P[1] 100% CNT50    ;
  13:  LBL[1] ;
  14:  R[81:Reintento ventoa]=0    ;
  15:  DO[198:OFF:Vacuum ON]=OFF ;
  16:  DO[197:OFF:Vacuum OFF]=ON ;
  17:   ;
  18:J P[2] 100% CNT50    ;
  19:  DO[197:OFF:Vacuum OFF]=OFF ;
  20:L P[3] 500mm/sec FINE    ;
  21:  CALL NIVEL_SEP_ST02    ;
  22:  CALL VACUUM_ON    ;
  23:J PR[70:STK_ACTUAL] 25% FINE    ;
  24:   ;
  25:  IF R[81:Reintento ventoa]=1,JMP LBL[1] ;
  26:   ;
  27:  DO[35:OFF:PICK_STA02]=PULSE,1.0sec ;
  28:   ;
  29:L P[4] 700mm/sec CNT50    ;
  30:J P[5] 60% CNT100    ;
  31:J P[6] 50% CNT100    ;
  32:J P[7] 50% CNT50    ;
  33:J P[8] 50% CNT100    ;
  34:J P[9] 50% CNT100    ;
  35:J P[10] 50% CNT50    ;
  36:   ;
  37:L P[11] 500mm/sec FINE    ;
  38:   ;
  39:  IF (GI[15:0:Separador Sup ST02]<=10) THEN ;
  40:L P[12] 500mm/sec FINE    ;
  41:  JMP LBL[10] ;
  42:  ENDIF ;
  43:  LBL[10] ;
  44:   ;
  45:  CALL VACUUM_OFF    ;
  46:   ;
  47:L P[13] 1000mm/sec CNT30    ;
  48:J P[14] 100% CNT100    ;
  49:J P[15] 100% CNT100    ;
  50:J P[16] 100% CNT100    ;
  51:   ;
  52:J P[17] 100% CNT50    ;
  53:  R[200:ajusteArrastre]=1    ;
  54:   ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -205.942  mm,	Y =    96.086  mm,	Z =   923.280  mm,
	W =    90.594 deg,	P =      .219 deg,	R =     6.783 deg
};
P[2]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   565.224  mm,	Y =   502.855  mm,	Z =   448.303  mm,
	W =  -179.474 deg,	P =     1.949 deg,	R =   -45.691 deg
};
P[3]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   565.212  mm,	Y =   502.840  mm,	Z =   283.737  mm,
	W =  -179.476 deg,	P =     1.949 deg,	R =   -45.691 deg
};
P[4]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[5]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -417.016  mm,	Y =   416.740  mm,	Z =  1079.274  mm,
	W =  -158.408 deg,	P =     7.768 deg,	R =   -39.333 deg
};
P[6]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -657.947  mm,	Y =   685.339  mm,	Z =  1236.810  mm,
	W =  -140.010 deg,	P =      .796 deg,	R =    -9.666 deg
};
P[7]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -934.941  mm,	Y =   537.099  mm,	Z =  1882.335  mm,
	W =  -128.783 deg,	P =   -11.386 deg,	R =    13.169 deg
};
P[8]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.281  mm,	Y =   369.042  mm,	Z =  2201.152  mm,
	W =  -131.887 deg,	P =   -26.578 deg,	R =   -42.199 deg
};
P[9]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   -89.630  mm,	Y =   388.412  mm,	Z =  2313.877  mm,
	W =  -157.390 deg,	P =   -12.944 deg,	R =   -40.710 deg
};
P[10]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   375.121  mm,	Y =   469.661  mm,	Z =  2374.433  mm,
	W =  -160.209 deg,	P =   -13.136 deg,	R =   -46.301 deg
};
P[11]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.617  mm,	Y =   477.928  mm,	Z =  2134.290  mm,
	W =  -175.942 deg,	P =     -.555 deg,	R =   -45.481 deg
};
P[12]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.618  mm,	Y =   477.928  mm,	Z =  2037.861  mm,
	W =  -175.942 deg,	P =     -.555 deg,	R =   -45.481 deg
};
P[13]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.617  mm,	Y =   477.928  mm,	Z =  2157.326  mm,
	W =  -175.942 deg,	P =     -.555 deg,	R =   -45.481 deg
};
P[14]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   -89.630  mm,	Y =   388.412  mm,	Z =  2313.877  mm,
	W =  -157.390 deg,	P =   -12.944 deg,	R =   -40.710 deg
};
P[15]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =  -620.090  mm,	Y =    81.652  mm,	Z =  1824.006  mm,
	W =  -164.236 deg,	P =    -5.204 deg,	R =   -49.185 deg
};
P[16]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -387.971  mm,	Y =   -81.318  mm,	Z =  1285.594  mm,
	W =   104.962 deg,	P =   -26.171 deg,	R =     2.120 deg
};
P[17]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -205.942  mm,	Y =    96.086  mm,	Z =   923.280  mm,
	W =    90.594 deg,	P =      .219 deg,	R =     6.783 deg
};
/END
