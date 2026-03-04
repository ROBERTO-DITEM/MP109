/PROG  ARRASTRE_STA2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1830;
CREATE		= DATE 26-02-07  TIME 14:05:52;
MODIFIED	= DATE 26-02-11  TIME 10:09:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 77;
MEMORY_SIZE	= 2282;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  UTOOL_NUM=2 ;
   2:  UFRAME_NUM=2 ;
   3:   ;
   4:  IF (R[56:STACK_ST2]=1 OR R[56:STACK_ST2]=2 OR R[56:STACK_ST2]=3) THEN ;
   5:   ;
   6:  PR[10]=LPOS    ;
   7:  PR[10,6]=0    ;
   8:  //PR[10,1]=PR[10,1]-50    ;
   9:   ;
  10:L PR[10] 100mm/sec FINE    ;
  11:   ;
  12:L P[1] 800mm/sec CNT10 INC    ;
  13:   ;
  14:  IF (DI[10:OFF:TryoutModeReq]=ON) THEN ;
  15:  R[45:ARR_ST2_PK1]=315    ;
  16:  R[46:ARR_ST1_PK2]=310    ;
  17:  R[49:ARR_ST2_PK3]=315    ;
  18:  JMP LBL[1] ;
  19:  ENDIF ;
  20:   ;
  21:  PR[10]=LPOS    ;
  22:  PR[10,1]=PR[10,1]-150    ;
  23:   ;
  24:  SKIP CONDITION GI[4:0:DistanceSensor]>=320    ;
  25:L PR[10] 50mm/sec FINE Skip,LBL[99]    ;
  26:   ;
  27:  SELECT R[56:STACK_ST2]=1,JMP LBL[70] ;
  28:         =2,JMP LBL[71] ;
  29:         =3,JMP LBL[72] ;
  30:  LBL[70] ;
  31:  PR[10]=LPOS    ;
  32:  R[45:ARR_ST2_PK1]=PR[10,1]    ;
  33:  JMP LBL[1] ;
  34:   ;
  35:  LBL[71] ;
  36:  PR[10]=LPOS    ;
  37:  R[48:ARR_ST2_PK2]=PR[10,1]    ;
  38:  JMP LBL[1] ;
  39:   ;
  40:  LBL[72] ;
  41:  PR[10]=LPOS    ;
  42:  R[49:ARR_ST2_PK3]=PR[10,1]    ;
  43:  JMP LBL[1] ;
  44:   ;
  45:  ENDIF ;
  46:   ;
  47:  IF (R[56:STACK_ST2]=6 OR R[56:STACK_ST2]=11 OR R[56:STACK_ST2]=16 OR R[56:STACK_ST2]=21) THEN ;
  48:  PR[10]=LPOS    ;
  49:  PR[10,6]=0    ;
  50:  PR[10,1]=R[45:ARR_ST2_PK1]-5    ;
  51:L PR[10] 800mm/sec FINE    ;
  52:  JMP LBL[1] ;
  53:  ENDIF ;
  54:   ;
  55:   ;
  56:  IF (R[56:STACK_ST2]=7 OR R[56:STACK_ST2]=12 OR R[56:STACK_ST2]=17 OR R[56:STACK_ST2]=22 OR R[56:STACK_ST2]=4 OR R[56:STACK_ST2]=9 OR R[56:STACK_ST2]=14 OR R[56:STACK_ST2]=19 OR R[56:STACK_ST2]=24) THEN ;
  57:  PR[10]=LPOS    ;
  58:  PR[10,6]=0    ;
  59:  PR[10,1]=R[48:ARR_ST2_PK2]-5    ;
  60:L PR[10] 800mm/sec FINE    ;
  61:  JMP LBL[1] ;
  62:  ENDIF ;
  63:   ;
  64:  IF (R[56:STACK_ST2]=8 OR R[56:STACK_ST2]=13 OR R[56:STACK_ST2]=18 OR R[56:STACK_ST2]=23 OR R[56:STACK_ST2]=5 OR R[56:STACK_ST2]=10 OR R[56:STACK_ST2]=15 OR R[56:STACK_ST2]=20 OR R[56:STACK_ST2]=25) THEN ;
  65:  PR[10]=LPOS    ;
  66:  PR[10,6]=0    ;
  67:  PR[10,1]=R[49:ARR_ST2_PK3]-5    ;
  68:L PR[10] 800mm/sec FINE    ;
  69:  JMP LBL[1] ;
  70:  ENDIF ;
  71:   ;
  72:   ;
  73:  LBL[1] ;
  74:   ;
  75:  PR[10]=LPOS    ;
  76:  PR[10,1]=PR[10,1]+20    ;
  77:L PR[10] 800mm/sec CNT10    ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =   -50.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
