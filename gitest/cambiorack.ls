/PROG  CAMBIORACK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 642;
CREATE		= DATE 25-12-31  TIME 09:28:24;
MODIFIED	= DATE 26-01-21  TIME 08:46:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 990;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=1 ;
   3:  WAIT (OFF)    ;
   4:L P[1] 100mm/sec FINE    ;
   5:L P[2] 100mm/sec FINE    ;
   6:L P[3] 100mm/sec FINE    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -153.450  mm,	Y =   420.280  mm,	Z =    95.036  mm,
	W =  -179.579 deg,	P =     1.496 deg,	R =  -112.295 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -333.127  mm,	Y =  -164.584  mm,	Z =    88.105  mm,
	W =  -179.579 deg,	P =     1.496 deg,	R =  -112.295 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -798.553  mm,	Y =  -853.383  mm,	Z =    65.539  mm,
	W =  -179.834 deg,	P =     1.546 deg,	R =  -121.752 deg
};
/END
