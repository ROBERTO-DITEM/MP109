/PROG  VACUUM_ON	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vacuum On";
PROG_SIZE	= 574;
CREATE		= DATE 26-02-20  TIME 14:50:50;
MODIFIED	= DATE 26-03-03  TIME 07:27:00;
FILE_NAME	= T_VACON;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 986;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/MN
   1:  !***************** ;
   2:  !Apicion: MH ;
   3:  !Robot  01 ;
   4:  !Clarion ;
   5:  !***************** ;
   6:  --dn:pgri[9] ;
   7:  IF DI[10:OFF:TryoutModeReq]=ON,JMP LBL[99] ;
   8:  DO[197:OFF:Vacuum OFF]=OFF ;
   9:  DO[198:OFF:Vacuum ON]=ON ;
  10:  WAIT DI[199:OFF:(Proc3Reserved)]=ON AND DI[200:OFF:(Proc3Reserved)]=ON AND DI[201:OFF:(Proc3Reserved)]=ON AND DI[202:OFF:(Proc3Reserved)]=ON TIMEOUT,LBL[10] ;
  11:  JMP LBL[99] ;
  12:   ;
  13:  LBL[10] ;
  14:  ! R81 Reintento de Ventosas ;
  15:  R[81:Reintento ventoa]=(R[81:Reintento ventoa]+1) ;
  16:  JMP LBL[100] ;
  17:   ;
  18:  LBL[99] ;
  19:  R[81:Reintento ventoa]=0    ;
  20:   ;
  21:  LBL[100] ;
  22:  WAIT    .70(sec) ;
  23:   ;
/POS
/END
