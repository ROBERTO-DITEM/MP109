/PROG  OFFSETLAT_STA2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 837;
CREATE		= DATE 26-02-07  TIME 14:06:30;
MODIFIED	= DATE 26-02-07  TIME 14:06:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 1145;
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
   4:   ;
   5:  IF (R[55:CAMA_ST2]=3 OR R[55:CAMA_ST2]=4) THEN ;
   6:  IF (R[56:STACK_ST2]=5 OR R[56:STACK_ST2]=10 OR R[56:STACK_ST2]=15 OR R[56:STACK_ST2]=20 OR R[56:STACK_ST2]=25) THEN ;
   7:L P[1] 200mm/sec FINE INC    ;
   8:  ENDIF ;
   9:  ENDIF ;
  10:   ;
  11:  IF (R[55:CAMA_ST2]=3 OR R[55:CAMA_ST2]=4) THEN ;
  12:  IF (R[56:STACK_ST2]=4 OR R[56:STACK_ST2]=9 OR R[56:STACK_ST2]=14 OR R[56:STACK_ST2]=19 OR R[56:STACK_ST2]=24) THEN ;
  13:L P[2] 200mm/sec FINE INC    ;
  14:  ENDIF ;
  15:  ENDIF ;
  16:   ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =    80.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =   -80.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
