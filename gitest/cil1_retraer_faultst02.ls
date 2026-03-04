/PROG  CIL1_RETRAER_FAULTST02	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 990;
CREATE		= DATE 26-02-06  TIME 09:09:42;
MODIFIED	= DATE 26-02-06  TIME 16:02:16;
FILE_NAME	= CIL1_RET;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1378;
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
  19:L P[2] 100mm/sec FINE INC    ;
  20:  JMP LBL[5] ;
  21:  ENDIF ;
  22:   ;
  23:  LBL[999] ;
  24:  UALM[3] ;
  25:  JMP LBL[5] ;
  26:   ;
  27:  //IF DI[194:ON :diCil1Extend]=ON AND DI[193:OFF:diCil1Retract]=OFF AND GI[4:0:DistanceSensor]<141,JMP LBL[5] ;
  28:  LBL[99] ;
  29:  R[87]=0    ;
/POS
P[2]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     5.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
