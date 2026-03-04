/PROG  OK_T0CONT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REQ_CONT V4.3";
PROG_SIZE	= 834;
CREATE		= DATE 26-02-22  TIME 11:53:20;
MODIFIED	= DATE 26-02-22  TIME 11:30:34;
FILE_NAME	= REQ_CONT;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1326;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/MN
   1:  !OK TO ENTER ;
   2:  ! INTO NEXT PATH ;
   3:   ;
   4:  LBL[1:BEGIN] ;
   5:   ;
   6:  !RESET REQUEST CONTINUE ;
   7:  DO[56:OFF:PathSegReqToCont]=OFF ;
   8:   ;
   9:  !PLC OK to continue look ahead ;
  10:  IF (GI[3:0:PathSegmentSelect]=GO[3:0:PathSegment]),JMP LBL[11] ;
  11:   ;
  12:  ! WAIT FOR OK TO CONTINUE=OFF ;
  13:  WAIT DI[56:OFF:PathSegContOK]=OFF    ;
  14:  DO[56:OFF:PathSegReqToCont]=ON ;
  15:   ;
  16:  LBL[10:WAIT FOR OK CONT] ;
  17:  ! SET SegReqConti ;
  18:  R[159]=0    ;
  19:  MESSAGE[WAITING FOR CONTINUE] ;
  20:   ;
  21:  ! WAIT FOR PathSegConti ;
  22:  WAIT DI[56:OFF:PathSegContOK]=ON    ;
  23:  LBL[11:OK to Continue] ;
  24:   ;
  25:  ! Capture Decision Code ;
  26:  R[170]=GI[2:0:DecisionCode]    ;
  27:   ;
  28:  ! Echo Decision Code ;
  29:  GO[2:0:ManualDecCode]=R[170] ;
  30:  JMP LBL[99] ;
  31:   ;
  32:  JMP LBL[1] ;
  33:   ;
  34:   ;
  35:  LBL[99] ;
/POS
/END
