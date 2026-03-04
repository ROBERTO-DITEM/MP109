/PROG  REQ_CONT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REQ_CONT V4.3";
PROG_SIZE	= 1798;
CREATE		= DATE 05-05-26  TIME 14:58:06;
MODIFIED	= DATE 21-06-28  TIME 00:14:54;
FILE_NAME	= REQ_CONT;
VERSION		= 0;
LINE_COUNT	= 78;
MEMORY_SIZE	= 2326;
PROTECT		= READ;
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
   1:  ! REQUEST PERMISSION TO ENTER ;
   2:  ! INTO NEXT PATH SEGMENT ;
   3:   ;
   4:  LBL[1:BEGIN] ;
   5:   ;
   6:  IF R[159]=1,JMP LBL[10] ;
   7:  !RESET REQUEST CONTINUE ;
   8:  DO[56:OFF:PathSegReqToCont]=OFF ;
   9:   ;
  10:  !PLC OK to continue look ahead ;
  11:  IF (GI[3:0:PathSegmentSelect]=GO[3:0:PathSegment]),JMP LBL[11] ;
  12:   ;
  13:  ! WAIT FOR OK TO CONTINUE=OFF ;
  14:  WAIT DI[56:OFF:PathSegContOK]=OFF    ;
  15:  DO[56:OFF:PathSegReqToCont]=ON ;
  16:   ;
  17:  !Prompt User to Continue in Teach ;
  18:  IF UO[8:ON :TP enabled]=OFF,JMP LBL[10] ;
  19:  CALL USERCLR    ;
  20:  CALL CUSTOYN(1,40) ;
  21:  IF UO[8:ON :TP enabled]=OFF,JMP LBL[10] ;
  22:  IF R[40:KEYENCE]=1,JMP LBL[11] ;
  23:   ;
  24:  LBL[10:WAIT FOR OK CONT] ;
  25:  ! SET SegReqConti ;
  26:  R[159]=0    ;
  27:  MESSAGE[WAITING FOR CONTINUE] ;
  28:   ;
  29:  ! WAIT FOR PathSegConti ;
  30:  WAIT DI[56:OFF:PathSegContOK]=ON    ;
  31:  LBL[11:OK to Continue] ;
  32:   ;
  33:  ! Capture Decision Code ;
  34:  R[150:ACOMODAR]=GI[2:0:DecisionCode]    ;
  35:  $SHELL_WRK.$CUR_DECSN=R[150:ACOMODAR] ;
  36:  IF DO[2034: * :PRESSSHOP]=ON,JMP LBL[12] ;
  37:  R[294]=GI[8:0:Decision Byte2]    ;
  38:  R[295]=GI[9:0:Decision Byte3]    ;
  39:  LBL[12] ;
  40:  ! Echo Decision Code ;
  41:  GO[2:0:ManualDecCode]=R[150:ACOMODAR] ;
  42:  IF DO[2034: * :PRESSSHOP]=ON,JMP LBL[13] ;
  43:  GO[8:0:Decision Byte2]=R[294] ;
  44:  GO[9:0:Decision Byte3]=R[295] ;
  45:  LBL[13] ;
  46:  IF (R[150:ACOMODAR]=13 AND (DO[2002: * :Spot1Proc1App] OR DO[2003: * :Spot2Proc2App])),JMP LBL[20] ;
  47:  IF (R[150:ACOMODAR]=14 AND (DO[2002: * :Spot1Proc1App] OR DO[2003: * :Spot2Proc2App])),JMP LBL[30] ;
  48:  IF (R[150:ACOMODAR]=12 AND (DO[2004: * :Disp1Proc1App] OR DO[2005: * :Disp2Proc2App] OR DO[2006: * :Stud1Proc1App])),JMP LBL[40] ;
  49:  JMP LBL[99] ;
  50:   ;
  51:  LBL[20:PedInspectDress] ;
  52:  !Execute Ped Inspection Dress ;
  53:   ;
  54:  DO[56:OFF:PathSegReqToCont]=OFF ;
  55:   ;
  56:  CALL PDINSDRS    ;
  57:   ;
  58:  JMP LBL[1] ;
  59:   ;
  60:  LBL[30:Cap Change] ;
  61:  !Execute Cap Change Functionality ;
  62:   ;
  63:  DO[56:OFF:PathSegReqToCont]=OFF ;
  64:   ;
  65:  CALL TIP_RST    ;
  66:   ;
  67:  JMP LBL[1] ;
  68:   ;
  69:  LBL[40:Wakeup Dispenser] ;
  70:  !Remote Start/Purge Dispenser ;
  71:   ;
  72:  DO[56:OFF:PathSegReqToCont]=OFF ;
  73:   ;
  74:  IF (DI[66:OFF:Proc1BypassReq]=OFF),CALL RMTSTRT1 ;
  75:  IF ($SLEQNUM=2 AND DI[130:OFF:Proc2BypassReq]=OFF),CALL RMTSTRT2 ;
  76:   ;
  77:  JMP LBL[1] ;
  78:  LBL[99] ;
/POS
/END
