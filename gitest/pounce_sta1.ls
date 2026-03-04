/PROG  POUNCE_STA1	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 650;
CREATE		= DATE 26-02-05  TIME 11:46:12;
MODIFIED	= DATE 26-02-23  TIME 09:43:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 978;
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
   1:  !***************** ;
   2:  !Posicion de Pounce ;
   3:  !Acercamiento Est1 ;
   4:  !***************** ;
   5:   ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=1 ;
   8:   ;
   9:J P[1] 100% CNT60    ;
  10:   ;
  11:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -383.626  mm,	Y =   721.897  mm,	Z =   871.971  mm,
	W =   179.999 deg,	P =      .002 deg,	R =     2.111 deg
};
/END
