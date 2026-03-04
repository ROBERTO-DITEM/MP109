/PROG  OFFSETLAT_STA1
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 907;
CREATE		= DATE 26-02-07  TIME 12:53:08;
MODIFIED	= DATE 26-02-10  TIME 15:44:04;
FILE_NAME	= OFFSETLA;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1203;
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
   1:   ;
   2:   ;
   3:   ;
   4:  UTOOL_NUM=2 ;
   5:  UFRAME_NUM=1 ;
   6:   ;
   7:   ;
   8:  IF (R[50:CAMA_ST1]=3 OR R[50:CAMA_ST1]=4) THEN ;
   9:  IF (R[51:STACK_ST1]=5 OR R[51:STACK_ST1]=10 OR R[51:STACK_ST1]=15 OR R[51:STACK_ST1]=20 OR R[51:STACK_ST1]=25) THEN ;
  10:L P[1] 200mm/sec FINE INC    ;
  11:  ENDIF ;
  12:  ENDIF ;
  13:   ;
  14:  IF (R[50:CAMA_ST1]=3 OR R[50:CAMA_ST1]=4) THEN ;
  15:  IF (R[51:STACK_ST1]=4 OR R[51:STACK_ST1]=9 OR R[51:STACK_ST1]=14 OR R[51:STACK_ST1]=19 OR R[51:STACK_ST1]=24) THEN ;
  16:L P[2] 200mm/sec FINE INC    ;
  17:  ENDIF ;
  18:  ENDIF ;
  19:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =   100.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =  -100.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
