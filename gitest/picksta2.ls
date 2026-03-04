/PROG  PICKSTA2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1938;
CREATE		= DATE 26-02-15  TIME 12:55:50;
MODIFIED	= DATE 26-03-03  TIME 15:07:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 2458;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !***************** ;
   2:  !Matriz de posiciones ;
   3:  !Posicion de inspeccion ;
   4:  !***************** ;
   5:   ;
   6:  UTOOL_NUM=2 ;
   7:  UFRAME_NUM=2 ;
   8:   ;
   9:  F[25:OFF:COLISION]=(OFF) ;
  10:  IF (DI[10:OFF:TryoutModeReq]=ON),JMP LBL[10] ;
  11:   ;
  12:J PR[10] 50% CNT30    ;
  13:J PR[10] 100% FINE    ;
  14:   ;
  15:  R[120:SENSIBILIDAD]=150    ;
  16:  SKIP CONDITION DO[300:OFF:doShopSpec44]=ON    ;
  17:   ;
  18:L P[1] 3000mm/sec FINE INC Skip,LBL[6]    ;
  19:   ;
  20:  IF (F[25:OFF:COLISION]) THEN ;
  21:  OVERRIDE=10% ;
  22:L P[10] 800mm/sec FINE INC    ;
  23:  R[105:COLISION]=1    ;
  24:  JMP LBL[99] ;
  25:  ENDIF ;
  26:   ;
  27:  LBL[6] ;
  28:  R[120:SENSIBILIDAD]=100    ;
  29:  CALL OFFSETLAT_STA2    ;
  30:  CALL ARRASTRE_STA2    ;
  31:  CALL CIL2_RETRAER    ;
  32:   ;
  33:  IF (R[55:CAMA_ST2]=4) THEN ;
  34:L P[3] 500mm/sec FINE INC    ;
  35:  JMP LBL[5] ;
  36:  ENDIF ;
  37:   ;
  38:L P[8] 500mm/sec FINE INC    ;
  39:   ;
  40:  LBL[5] ;
  41:  CALL CIL1_RETRAER_FAULTST02    ;
  42:  WAIT    .25(sec) ;
  43:  SET_STEP(16) ;
  44:   ;
  45:L P[4] 1000mm/sec CNT50 INC    ;
  46:  DO[195:OFF:Cil2Retract]=OFF ;
  47:  DO[196:OFF:Cil2Extend]=ON ;
  48:   ;
  49:  IF (DI[10:OFF:TryoutModeReq]=OFF) THEN ;
  50:  JMP LBL[99] ;
  51:  ENDIF ;
  52:   ;
  53:  LBL[10:DRY CYCLE] ;
  54:J PR[10] 100% FINE    ;
  55:L P[2] 1000mm/sec CNT10 INC    ;
  56:L P[5] 1000mm/sec FINE INC    ;
  57:   ;
  58:  CALL OFFSETLAT_STA2    ;
  59:  CALL ARRASTRE_STA2    ;
  60:  CALL CIL2_RETRAER    ;
  61:   ;
  62:L P[6] 1500mm/sec FINE INC    ;
  63:   ;
  64:  CALL CIL1_RETRAER    ;
  65:  WAIT    .25(sec) ;
  66:  SET_STEP(16) ;
  67:   ;
  68:L P[7] 3000mm/sec FINE INC    ;
  69:   ;
  70:  LBL[99:END] ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -108.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   230.000  mm,	Y =   -92.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[3]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   -20.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[4]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   150.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[5]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -108.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[6]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   -30.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[7]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   150.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[8]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   -30.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[10]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   150.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
