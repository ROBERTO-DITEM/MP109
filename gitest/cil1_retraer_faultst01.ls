/PROG  CIL1_RETRAER_FAULTST01	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 896;
CREATE		= DATE 26-02-07  TIME 11:02:48;
MODIFIED	= DATE 26-02-16  TIME 11:03:26;
FILE_NAME	= CIL1_RET;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1300;
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
   1:  !***************** ;
   2:  !Apicion: MH ;
   3:  !Robot  01 ;
   4:  !Clarion ;
   5:  !***************** ;
   6:   ;
   7:  R[87]=0    ;
   8:   ;
   9:  LBL[5] ;
  10:   ;
  11:  DO[194:OFF:Cil1Extend]=OFF ;
  12:  DO[193:OFF:Cil1Retract]=ON ;
  13:  WAIT DI[193:OFF:diCil1Retract]=ON AND DI[194:ON :diCil1Extend]=OFF TIMEOUT,LBL[10] ;
  14:  JMP LBL[99] ;
  15:   ;
  16:  LBL[10] ;
  17:  R[87]=(R[87]+1) ;
  18:  IF (R[87]<3) THEN ;
  19:   ;
  20:L P[1] 100mm/sec FINE INC    ;
  21:  JMP LBL[5] ;
  22:  ENDIF ;
  23:   ;
  24:  LBL[99] ;
  25:  R[87]=0    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     7.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
