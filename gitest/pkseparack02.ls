/PROG  PKSEPARACK02	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2477;
CREATE		= DATE 26-02-16  TIME 11:08:00;
MODIFIED	= DATE 26-03-03  TIME 15:10:14;
FILE_NAME	= SEPARADO;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 2957;
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
   2:  !Celda 02 ;
   3:  !Robot  01 ;
   4:  !Rutina: Separador St02 ;
   5:  !Clarion ;
   6:  !***************** ;
   7:   ;
   8:  UTOOL_NUM=3 ;
   9:  UFRAME_NUM=2 ;
  10:  PAYLOAD[3] ;
  11:   ;
  12:  SET_STEP(14) ;
  13:  OK_T0CONT    ;
  14:   ;
  15:  F[19:OFF:Falla Ventosa]=(OFF) ;
  16:  R[81:Reintento ventoa]=0    ;
  17:J P[1] 100% CNT30    ;
  18:  LBL[1] ;
  19:   ;
  20:  DO[198:OFF:Vacuum ON]=OFF ;
  21:  DO[197:OFF:Vacuum OFF]=ON ;
  22:J P[2] 100% CNT50    ;
  23:  DO[197:OFF:Vacuum OFF]=OFF ;
  24:L P[3] 500mm/sec FINE    ;
  25:  CALL NIVEL_SEP_ST02    ;
  26:  CALL VACUUM_ON    ;
  27:J PR[70:STK_ACTUAL] 25% FINE    ;
  28:   ;
  29:  IF R[81:Reintento ventoa]=0,JMP LBL[2] ;
  30:  !***************** ;
  31:  !Fall de Ventosa ;
  32:  IF (R[81:Reintento ventoa]<3) THEN ;
  33:  JMP LBL[1] ;
  34:  ELSE ;
  35:  DO[198:OFF:Vacuum ON]=OFF ;
  36:  DO[197:OFF:Vacuum OFF]=ON ;
  37:L P[4] 500mm/sec FINE    ;
  38:J P[5] 50% CNT10    ;
  39:  DO[197:OFF:Vacuum OFF]=OFF ;
  40:  F[19:OFF:Falla Ventosa]=(ON) ;
  41:  JMP LBL[99] ;
  42:  ENDIF ;
  43:  !***************** ;
  44:   ;
  45:  LBL[2] ;
  46:  R[81:Reintento ventoa]=0    ;
  47:L P[6] 700mm/sec CNT50    ;
  48:J P[7] 60% CNT100    ;
  49:   ;
  50:  SET_STEP(14) ;
  51:  OK_T0CONT    ;
  52:   ;
  53:J P[8] 50% CNT100    ;
  54:J P[9] 50% CNT50    ;
  55:J P[10] 50% CNT100    ;
  56:J P[11] 50% CNT100    ;
  57:J P[12] 50% CNT50    ;
  58:L P[13] 500mm/sec FINE    ;
  59:   ;
  60:  IF (GI[15:0:Separador Sup ST02]<=10) THEN ;
  61:L P[14] 500mm/sec FINE    ;
  62:  JMP LBL[10] ;
  63:  ENDIF ;
  64:  LBL[10] ;
  65:   ;
  66:  CALL VACUUM_OFF    ;
  67:  SET_STEP(35) ;
  68:   ;
  69:L P[15] 1000mm/sec CNT30    ;
  70:J P[16] 100% CNT100    ;
  71:J P[17] 100% CNT100    ;
  72:J P[18] 100% CNT100    ;
  73:J P[19] 100% CNT50    ;
  74:  SET_STEP(63) ;
  75:  R[200:ajusteArrastre]=1    ;
  76:  LBL[99] ;
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
	X =   565.212  mm,	Y =   502.840  mm,	Z =   320.468  mm,
	W =  -179.476 deg,	P =     1.949 deg,	R =   -45.691 deg
};
P[4]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   565.212  mm,	Y =   502.840  mm,	Z =   283.737  mm,
	W =  -179.476 deg,	P =     1.949 deg,	R =   -45.691 deg
};
P[5]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   565.224  mm,	Y =   502.855  mm,	Z =   448.303  mm,
	W =  -179.474 deg,	P =     1.949 deg,	R =   -45.691 deg
};
P[6]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[7]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -417.016  mm,	Y =   416.740  mm,	Z =  1079.274  mm,
	W =  -158.408 deg,	P =     7.768 deg,	R =   -39.333 deg
};
P[8]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -657.947  mm,	Y =   685.339  mm,	Z =  1236.810  mm,
	W =  -140.010 deg,	P =      .796 deg,	R =    -9.666 deg
};
P[9]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -934.941  mm,	Y =   537.099  mm,	Z =  1882.335  mm,
	W =  -128.783 deg,	P =   -11.386 deg,	R =    13.169 deg
};
P[10]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.281  mm,	Y =   369.042  mm,	Z =  2201.152  mm,
	W =  -131.887 deg,	P =   -26.578 deg,	R =   -42.199 deg
};
P[11]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   -89.630  mm,	Y =   388.412  mm,	Z =  2313.877  mm,
	W =  -157.390 deg,	P =   -12.944 deg,	R =   -40.710 deg
};
P[12]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   375.121  mm,	Y =   469.661  mm,	Z =  2374.433  mm,
	W =  -160.209 deg,	P =   -13.136 deg,	R =   -46.301 deg
};
P[13]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.617  mm,	Y =   477.928  mm,	Z =  2134.290  mm,
	W =  -175.942 deg,	P =     -.555 deg,	R =   -45.481 deg
};
P[14]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.618  mm,	Y =   477.928  mm,	Z =  2037.861  mm,
	W =  -175.942 deg,	P =     -.555 deg,	R =   -45.481 deg
};
P[15]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.617  mm,	Y =   477.928  mm,	Z =  2157.326  mm,
	W =  -175.942 deg,	P =     -.555 deg,	R =   -45.481 deg
};
P[16]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   -89.630  mm,	Y =   388.412  mm,	Z =  2313.877  mm,
	W =  -157.390 deg,	P =   -12.944 deg,	R =   -40.710 deg
};
P[17]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =  -620.090  mm,	Y =    81.652  mm,	Z =  1824.006  mm,
	W =  -164.236 deg,	P =    -5.204 deg,	R =   -49.185 deg
};
P[18]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -387.971  mm,	Y =   -81.318  mm,	Z =  1285.594  mm,
	W =   104.962 deg,	P =   -26.171 deg,	R =     2.120 deg
};
P[19]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -205.942  mm,	Y =    96.086  mm,	Z =   923.280  mm,
	W =    90.594 deg,	P =      .219 deg,	R =     6.783 deg
};
/END
