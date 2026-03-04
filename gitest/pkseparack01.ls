/PROG  PKSEPARACK01	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2345;
CREATE		= DATE 26-02-16  TIME 11:16:48;
MODIFIED	= DATE 26-03-03  TIME 15:09:42;
FILE_NAME	= SEPARADO;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2833;
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
/MN
   1:  !***************** ;
   2:  !Celda 02 ;
   3:  !Robot  01 ;
   4:  !Rutina: Separador St02 ;
   5:  !Clarion ;
   6:  !***************** ;
   7:   ;
   8:  UTOOL_NUM=3 ;
   9:  UFRAME_NUM=1 ;
  10:   ;
  11:  SET_STEP(11) ;
  12:  OK_T0CONT    ;
  13:   ;
  14:  F[19:OFF:Falla Ventosa]=(OFF) ;
  15:  R[81:Reintento ventoa]=0    ;
  16:L P[1] 2000mm/sec CNT30    ;
  17:  LBL[1] ;
  18:  DO[198:OFF:Vacuum ON]=OFF ;
  19:  DO[197:OFF:Vacuum OFF]=ON ;
  20:L P[2] 1500mm/sec CNT50    ;
  21:  DO[197:OFF:Vacuum OFF]=OFF ;
  22:L P[3] 500mm/sec FINE    ;
  23:  CALL NIVEL_SEP_ST01    ;
  24:  CALL VACUUM_ON    ;
  25:  WAIT    .50(sec) ;
  26:J PR[70:STK_ACTUAL] 40% FINE    ;
  27:   ;
  28:  IF R[81:Reintento ventoa]=0,JMP LBL[2] ;
  29:   ;
  30:  !***************** ;
  31:  !Fall de Ventosa ;
  32:  IF (R[81:Reintento ventoa]<3) THEN ;
  33:  JMP LBL[1] ;
  34:  ELSE ;
  35:  DO[198:OFF:Vacuum ON]=OFF ;
  36:  DO[197:OFF:Vacuum OFF]=ON ;
  37:L P[4] 1500mm/sec CNT50    ;
  38:L P[5] 2000mm/sec CNT30    ;
  39:  DO[197:OFF:Vacuum OFF]=OFF ;
  40:  F[19:OFF:Falla Ventosa]=(ON) ;
  41:  JMP LBL[99] ;
  42:  ENDIF ;
  43:  !***************** ;
  44:   ;
  45:   ;
  46:  LBL[2] ;
  47:  R[81:Reintento ventoa]=0    ;
  48:L P[6] 1000mm/sec CNT50    ;
  49:L P[7] 1000mm/sec CNT50    ;
  50:   ;
  51:  SET_STEP(12) ;
  52:  OK_T0CONT    ;
  53:   ;
  54:J P[8] 50% CNT30    ;
  55:L P[9] 1000mm/sec CNT50    ;
  56:L P[10] 1000mm/sec CNT50    ;
  57:L P[11] 1000mm/sec CNT50    ;
  58:   ;
  59:L P[12] 700mm/sec FINE    ;
  60:  IF (GI[15:0:Separador Sup ST02]<=10) THEN ;
  61:L P[13] 500mm/sec FINE    ;
  62:  JMP LBL[10] ;
  63:  ENDIF ;
  64:   ;
  65:  LBL[10] ;
  66:  CALL VACUUM_OFF    ;
  67:   ;
  68:L P[14] 1000mm/sec CNT100    ;
  69:L P[15] 1000mm/sec CNT50    ;
  70:L P[16] 1000mm/sec CNT50    ;
  71:J P[17] 100% CNT50    ;
  72:  SET_STEP(63) ;
  73:  R[200:ajusteArrastre]=1    ;
  74:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -258.768  mm,	Y =   397.980  mm,	Z =  1033.305  mm,
	W =    89.999 deg,	P =      .002 deg,	R =     2.111 deg
};
P[2]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[3]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   320.468  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -45.794 deg
};
P[4]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[5]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -258.768  mm,	Y =   397.980  mm,	Z =  1033.305  mm,
	W =    89.999 deg,	P =      .002 deg,	R =     2.111 deg
};
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   534.015  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   -16.984  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -636.524  mm,	Y =   603.816  mm,	Z =  1177.547  mm,
	W =  -176.050 deg,	P =    -8.906 deg,	R =   -88.999 deg
};
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -783.147  mm,	Y =   393.772  mm,	Z =  1863.081  mm,
	W =  -152.115 deg,	P =     3.765 deg,	R =  -119.105 deg
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -521.864  mm,	Y =   490.089  mm,	Z =  2181.992  mm,
	W =  -152.115 deg,	P =     3.765 deg,	R =   -94.997 deg
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.166  mm,	Y =   476.891  mm,	Z =  2150.913  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[12]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.450  mm,	Y =   476.890  mm,	Z =  2117.484  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[13]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.451  mm,	Y =   476.889  mm,	Z =  2008.054  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[14]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.450  mm,	Y =   476.891  mm,	Z =  2150.912  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[15]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -569.120  mm,	Y =   503.958  mm,	Z =  2272.063  mm,
	W =  -151.264 deg,	P =    -8.223 deg,	R =   -85.352 deg
};
P[16]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -386.998  mm,	Y =   365.505  mm,	Z =  1553.640  mm,
	W =   133.124 deg,	P =   -36.696 deg,	R =   -29.824 deg
};
P[17]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -258.768  mm,	Y =   397.980  mm,	Z =  1033.305  mm,
	W =    89.999 deg,	P =      .002 deg,	R =     2.111 deg
};
/END
