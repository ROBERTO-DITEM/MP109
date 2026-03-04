/PROG  ZERO
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 594;
CREATE		= DATE 25-12-07  TIME 09:47:02;
MODIFIED	= DATE 25-12-07  TIME 10:10:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 3;
MEMORY_SIZE	= 954;
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
   1:J P[1] 100% FINE    ;
   2:J P[2] 100% FINE    ;
   3:J P[3] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -50.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -50.000 deg,	J3=     -.000 deg,
	J4=     -.000 deg,	J5=   -97.286 deg,	J6=      .000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,	
	J1=   -30.000 deg,	J2=     0.000 deg,	J3=     -.000 deg,
	J4=     -.000 deg,	J5=   -97.286 deg,	J6=      .000 deg
};
/END
