/PROG  HOME_POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 515;
CREATE		= DATE 25-10-18  TIME 12:26:46;
MODIFIED	= DATE 25-10-28  TIME 13:28:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 859;
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
/MN
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:   ;
   5:   ;
   6:   ;
   7:J P[1] 80% FINE    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -365.368  mm,	Y =    -1.869  mm,	Z =  1020.117  mm,
	W =  -179.272 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
