/PROG  ARRASTRE_STA1
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 1836;
CREATE		= DATE 26-02-23  TIME 10:23:06;
MODIFIED	= DATE 26-02-23  TIME 10:23:06;
FILE_NAME	= ARRASTRE;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 2296;
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
   2:  UFRAME_NUM=1 ;
   3:   ;
   4:  IF (R[51:STACK_ST1]=1 OR R[51:STACK_ST1]=2 OR R[51:STACK_ST1]=3) THEN ;
   5:   ;
   6:  PR[10]=LPOS    ;
   7:  PR[10,6]=(-1)    ;
   8:L PR[10] 100mm/sec FINE    ;
   9:   ;
  10:L P[1] 800mm/sec CNT10 INC    ;
  11:   ;
  12:  IF (DI[10:OFF:TryoutModeReq]=ON) THEN ;
  13:  R[43:ARR_ST1_PK1]=315    ;
  14:  R[46:ARR_ST1_PK2]=310    ;
  15:  R[47:ARR_ST1_PK3]=320    ;
  16:  JMP LBL[1] ;
  17:  ENDIF ;
  18:   ;
  19:  PR[10]=LPOS    ;
  20:  PR[10,1]=PR[10,1]-150    ;
  21:   ;
  22:  SKIP CONDITION GI[4:0:DistanceSensor]>=320    ;
  23:L PR[10] 50mm/sec FINE Skip,LBL[99]    ;
  24:   ;
  25:  SELECT R[51:STACK_ST1]=1,JMP LBL[70] ;
  26:         =2,JMP LBL[71] ;
  27:         =3,JMP LBL[72] ;
  28:  LBL[70] ;
  29:  PR[10]=LPOS    ;
  30:  R[43:ARR_ST1_PK1]=PR[10,1]    ;
  31:  JMP LBL[1] ;
  32:   ;
  33:  LBL[71] ;
  34:  PR[10]=LPOS    ;
  35:  R[46:ARR_ST1_PK2]=PR[10,1]    ;
  36:  JMP LBL[1] ;
  37:   ;
  38:  LBL[72] ;
  39:  PR[10]=LPOS    ;
  40:  R[47:ARR_ST1_PK3]=PR[10,1]    ;
  41:  JMP LBL[1] ;
  42:   ;
  43:  ENDIF ;
  44:   ;
  45:  IF (R[51:STACK_ST1]=6 OR R[51:STACK_ST1]=11 OR R[51:STACK_ST1]=16 OR R[51:STACK_ST1]=21) THEN ;
  46:  PR[10]=LPOS    ;
  47:  PR[10,6]=(-1)    ;
  48:  PR[10,1]=R[43:ARR_ST1_PK1]-5    ;
  49:L PR[10] 800mm/sec FINE    ;
  50:  JMP LBL[1] ;
  51:  ENDIF ;
  52:   ;
  53:   ;
  54:  IF (R[51:STACK_ST1]=7 OR R[51:STACK_ST1]=12 OR R[51:STACK_ST1]=17 OR R[51:STACK_ST1]=22 OR R[51:STACK_ST1]=4 OR R[51:STACK_ST1]=9 OR R[51:STACK_ST1]=14 OR R[51:STACK_ST1]=19 OR R[51:STACK_ST1]=24) THEN ;
  55:  PR[10]=LPOS    ;
  56:  PR[10,6]=(-1)    ;
  57:  PR[10,1]=R[46:ARR_ST1_PK2]-5    ;
  58:L PR[10] 800mm/sec FINE    ;
  59:  JMP LBL[1] ;
  60:  ENDIF ;
  61:   ;
  62:  IF (R[51:STACK_ST1]=8 OR R[51:STACK_ST1]=13 OR R[51:STACK_ST1]=18 OR R[51:STACK_ST1]=23 OR R[51:STACK_ST1]=5 OR R[51:STACK_ST1]=10 OR R[51:STACK_ST1]=15 OR R[51:STACK_ST1]=20 OR R[51:STACK_ST1]=25) THEN ;
  63:  PR[10]=LPOS    ;
  64:  PR[10,6]=(-1)    ;
  65:  PR[10,1]=R[47:ARR_ST1_PK3]-5    ;
  66:L PR[10] 800mm/sec FINE    ;
  67:  JMP LBL[1] ;
  68:  ENDIF ;
  69:   ;
  70:   ;
  71:  LBL[1] ;
  72:   ;
  73:  PR[10]=LPOS    ;
  74:  PR[10,1]=PR[10,1]+20    ;
  75:L PR[10] 800mm/sec CNT10    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =   -50.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
