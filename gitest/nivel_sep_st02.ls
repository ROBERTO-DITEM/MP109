/PROG  NIVEL_SEP_ST02	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1140;
CREATE		= DATE 26-01-11  TIME 12:16:02;
MODIFIED	= DATE 26-02-24  TIME 06:45:52;
FILE_NAME	= NIVEL_CA;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1628;
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
   1:   ;
   2:  PR[70:STK_ACTUAL]=LPOS    ;
   3:   ;
   4:  R[55:CAMA_ST2]=GI[13:0:Nvl Cama ST02]    ;
   5:   ;
   6:  SELECT R[55:CAMA_ST2]=1,JMP LBL[10] ;
   7:         =2,JMP LBL[11] ;
   8:         =3,JMP LBL[12] ;
   9:         =4,JMP LBL[13] ;
  10:   ;
  11:  !Nivel de cama 1 ;
  12:  LBL[10] ;
  13:J PR[70:STK_ACTUAL] 100% FINE    ;
  14:  JMP LBL[99] ;
  15:   ;
  16:  !Nivel de cama 2 ;
  17:  LBL[11] ;
  18:J PR[70:STK_ACTUAL] 100% FINE    ;
  19:L P[1] 500mm/sec FINE INC    ;
  20:  JMP LBL[99] ;
  21:   ;
  22:  !Nivel de cama 3 ;
  23:  LBL[12] ;
  24:J PR[70:STK_ACTUAL] 100% FINE    ;
  25:L P[2] 500mm/sec FINE INC    ;
  26:  JMP LBL[99] ;
  27:   ;
  28:  !Nivel de cama 4  ;
  29:  LBL[13] ;
  30:J PR[70:STK_ACTUAL] 100% FINE    ;
  31:L P[3] 500mm/sec FINE INC    ;
  32:  JMP LBL[99] ;
  33:   ;
  34:  !END ;
  35:  LBL[99] ;
  36:  PR[70:STK_ACTUAL]=LPOS    ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -115.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -230.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[3]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =  -345.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
