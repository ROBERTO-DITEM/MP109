/PROG  OFFSETY_STA2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 831;
CREATE		= DATE 26-01-21  TIME 12:00:34;
MODIFIED	= DATE 26-02-06  TIME 12:31:08;
FILE_NAME	= OFFSETY_;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1315;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !***************** ;
   2:  !Desfase de posicion ;
   3:  !Calculo en eje Y ;
   4:  !***************** ;
   5:   ;
   6:  R[69:CALCULO]=R[56:STACK_ST2] MOD 5    ;
   7:   ;
   8:  SELECT R[69:CALCULO]=0,JMP LBL[100] ;
   9:         =1,JMP LBL[300] ;
  10:         =2,JMP LBL[400] ;
  11:         =3,JMP LBL[200] ;
  12:         =4,JMP LBL[500] ;
  13:   ;
  14:  LBL[100] ;
  15:  PR[70,2:STK_ACTUAL]=PR[99,2:STACK5_STA2]    ;
  16:  JMP LBL[1000] ;
  17:   ;
  18:  LBL[200] ;
  19:  PR[70,2:STK_ACTUAL]=PR[99,2:STACK5_STA2]+R[71:OFFSETY]    ;
  20:  JMP LBL[1000] ;
  21:   ;
  22:  LBL[300] ;
  23:  R[69:CALCULO]=R[71:OFFSETY]*2    ;
  24:  PR[70,2:STK_ACTUAL]=PR[99,2:STACK5_STA2]+R[69:CALCULO]    ;
  25:  JMP LBL[1000] ;
  26:   ;
  27:  LBL[400] ;
  28:  R[69:CALCULO]=R[71:OFFSETY]*3    ;
  29:  PR[70,2:STK_ACTUAL]=PR[99,2:STACK5_STA2]+R[69:CALCULO]    ;
  30:  JMP LBL[1000] ;
  31:   ;
  32:  LBL[500] ;
  33:  R[69:CALCULO]=R[71:OFFSETY]*4    ;
  34:  PR[70,2:STK_ACTUAL]=PR[99,2:STACK5_STA2]+R[69:CALCULO]    ;
  35:  JMP LBL[1000] ;
  36:   ;
  37:  LBL[1000] ;
/POS
/END
