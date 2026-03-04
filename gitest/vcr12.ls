/PROG  VCR12
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 545;
CREATE		= DATE 26-01-05  TIME 12:14:58;
MODIFIED	= DATE 26-01-05  TIME 13:13:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 909;
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
   1:L P[1] 100mm/sec FINE    ;
   2:L P[2] 100mm/sec FINE    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -154.076  mm,	Y =   813.845  mm,	Z =   384.454  mm,
	W =  -179.215 deg,	P =      .969 deg,	R =   -50.587 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -686.505  mm,	Y =  1461.734  mm,	Z =   398.634  mm,
	W =  -179.216 deg,	P =      .969 deg,	R =   -50.586 deg
};
/END
