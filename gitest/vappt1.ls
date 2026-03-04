/PROG  VAPPT1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 644;
CREATE		= DATE 26-01-06  TIME 10:16:26;
MODIFIED	= DATE 26-01-06  TIME 10:26:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 972;
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
   3:  PAYLOAD[2] ;
   4:   ;
   5:L P[1] 100mm/sec FINE    ;
   6:   ;
   7:  CALL VISION_MAIN    ;
   8:   ;
   9:  PR[10]=LPOS    ;
  10:  PR[10,3]=PR[10,3]-125    ;
  11:L PR[10] 100mm/sec FINE    ;
  12:   ;
  13:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    66.449  mm,	Y =   690.871  mm,	Z =   105.021  mm,
	W =  -178.060 deg,	P =     1.566 deg,	R =    -2.164 deg
};
/END
