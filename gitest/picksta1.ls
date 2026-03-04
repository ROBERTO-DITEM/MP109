/PROG  PICKSTA1
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 2000;
CREATE		= DATE 26-02-15  TIME 12:56:14;
MODIFIED	= DATE 26-03-03  TIME 15:07:46;
FILE_NAME	= PICKSTA2;
VERSION		= 0;
LINE_COUNT	= 72;
MEMORY_SIZE	= 2520;
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
   7:  UFRAME_NUM=1 ;
   8:   ;
   9:  F[25:OFF:COLISION]=(OFF) ;
  10:   ;
  11:  IF (DI[10:OFF:TryoutModeReq]=ON),JMP LBL[10] ;
  12:   ;
  13:J PR[10] 50% CNT30    ;
  14:J PR[10] 100% FINE    ;
  15:   ;
  16:  R[120:SENSIBILIDAD]=150    ;
  17:  SKIP CONDITION DO[300:OFF:doShopSpec44]=ON    ;
  18:   ;
  19:L P[1] 3000mm/sec FINE INC Skip,LBL[6]    ;
  20:   ;
  21:  IF (F[25:OFF:COLISION]) THEN ;
  22:  OVERRIDE=10% ;
  23:L P[9] 800mm/sec FINE INC    ;
  24:  R[105:COLISION]=1    ;
  25:  JMP LBL[99] ;
  26:  ENDIF ;
  27:   ;
  28:  LBL[6] ;
  29:  R[120:SENSIBILIDAD]=100    ;
  30:  CALL OFFSETLAT_STA1    ;
  31:  CALL ARRASTRE_STA1    ;
  32:  CALL CIL2_RETRAER    ;
  33:   ;
  34:  IF (R[50:CAMA_ST1]=4) THEN ;
  35:L P[2] 500mm/sec FINE INC    ;
  36:  JMP LBL[5] ;
  37:  ENDIF ;
  38:   ;
  39:L P[8] 500mm/sec FINE INC    ;
  40:   ;
  41:  LBL[5] ;
  42:  CALL CIL1_RETRAER_FAULTST01    ;
  43:  WAIT    .25(sec) ;
  44:  SET_STEP(12) ;
  45:   ;
  46:L P[3] 1000mm/sec CNT50 INC    ;
  47:  CALL CIL2_EXTENDER    ;
  48:   ;
  49:  JMP LBL[99] ;
  50:   ;
  51:  IF (DI[10:OFF:TryoutModeReq]=OFF) THEN ;
  52:  JMP LBL[99] ;
  53:  ENDIF ;
  54:   ;
  55:  LBL[10:DRY CYCLE] ;
  56:J PR[10] 100% FINE    ;
  57:L P[4] 1000mm/sec CNT10 INC    ;
  58:L P[5] 1000mm/sec FINE INC    ;
  59:   ;
  60:  CALL OFFSETLAT_STA1    ;
  61:  CALL ARRASTRE_STA1    ;
  62:  CALL CIL2_RETRAER    ;
  63:   ;
  64:L P[6] 1500mm/sec FINE INC    ;
  65:   ;
  66:  CALL CIL1_RETRAER    ;
  67:  WAIT    .25(sec) ;
  68:  SET_STEP(12) ;
  69:   ;
  70:L P[7] 1500mm/sec FINE INC    ;
  71:   ;
  72:  LBL[99:END] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -108.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   -20.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   150.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   230.000  mm,	Y =   -92.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -100.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   -30.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   150.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   -30.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =   150.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
