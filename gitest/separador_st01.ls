/PROG  SEPARADOR_ST01
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 1701;
CREATE		= DATE 26-02-14  TIME 13:01:04;
MODIFIED	= DATE 26-02-14  TIME 13:01:04;
FILE_NAME	= PKSEPARA;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 2197;
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
   1:  UTOOL_NUM=3 ;
   2:  UFRAME_NUM=1 ;
   3:   ;
   4:L P[1] 2000mm/sec CNT30    ;
   5:  LBL[1] ;
   6:  R[81:Reintento ventoa]=0    ;
   7:  DO[198:OFF:Vacuum ON]=OFF ;
   8:  DO[197:OFF:Vacuum OFF]=PULSE,1.0sec ;
   9:   ;
  10:L P[2] 1500mm/sec CNT50    ;
  11:L P[3] 500mm/sec FINE    ;
  12:  CALL NIVEL_SEP_ST01    ;
  13:  CALL VACUUM_ON    ;
  14:  WAIT    .50(sec) ;
  15:J PR[70:STK_ACTUAL] 40% FINE    ;
  16:  IF R[81:Reintento ventoa]=1,JMP LBL[1] ;
  17:   ;
  18:  DO[34:OFF:PICK_STA01]=PULSE,1.0sec ;
  19:   ;
  20:L P[4] 1000mm/sec CNT50    ;
  21:L P[5] 1000mm/sec CNT50    ;
  22:   ;
  23:J P[6] 50% CNT30    ;
  24:L P[7] 1000mm/sec CNT50    ;
  25:L P[8] 1000mm/sec CNT50    ;
  26:L P[9] 1000mm/sec CNT50    ;
  27:   ;
  28:L P[10] 700mm/sec FINE    ;
  29:  IF (GI[15:0:Separador Sup ST02]<=10) THEN ;
  30:L P[11] 500mm/sec FINE    ;
  31:  JMP LBL[10] ;
  32:  ENDIF ;
  33:  LBL[10] ;
  34:  CALL VACUUM_OFF    ;
  35:  WAIT    .50(sec) ;
  36:   ;
  37:L P[12] 1000mm/sec CNT100    ;
  38:L P[13] 1000mm/sec CNT50    ;
  39:L P[14] 1000mm/sec CNT50    ;
  40:J P[15] 100% CNT50    ;
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
	X =   534.015  mm,	Y =   478.032  mm,	Z =   303.554  mm,
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
	X =   -16.984  mm,	Y =   478.032  mm,	Z =   637.000  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -45.794 deg
};
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -636.524  mm,	Y =   603.816  mm,	Z =  1177.547  mm,
	W =  -176.050 deg,	P =    -8.906 deg,	R =   -88.999 deg
};
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -783.147  mm,	Y =   393.772  mm,	Z =  1863.081  mm,
	W =  -152.115 deg,	P =     3.765 deg,	R =  -119.105 deg
};
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -521.864  mm,	Y =   490.089  mm,	Z =  2181.992  mm,
	W =  -152.115 deg,	P =     3.765 deg,	R =   -94.997 deg
};
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.166  mm,	Y =   476.891  mm,	Z =  2150.913  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.450  mm,	Y =   476.890  mm,	Z =  2117.484  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.451  mm,	Y =   476.889  mm,	Z =  2008.054  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[12]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.450  mm,	Y =   476.891  mm,	Z =  2150.912  mm,
	W =  -174.364 deg,	P =    -1.522 deg,	R =   -45.382 deg
};
P[13]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -569.120  mm,	Y =   503.958  mm,	Z =  2272.063  mm,
	W =  -151.264 deg,	P =    -8.223 deg,	R =   -85.352 deg
};
P[14]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -386.998  mm,	Y =   365.505  mm,	Z =  1553.640  mm,
	W =   133.124 deg,	P =   -36.696 deg,	R =   -29.824 deg
};
P[15]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -258.768  mm,	Y =   397.980  mm,	Z =  1033.305  mm,
	W =    89.999 deg,	P =      .002 deg,	R =     2.111 deg
};
/END
