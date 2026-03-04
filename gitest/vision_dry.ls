/PROG  VISION_DRY	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 985;
CREATE		= DATE 26-02-01  TIME 09:30:38;
MODIFIED	= DATE 26-02-01  TIME 10:52:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 39;
MEMORY_SIZE	= 1501;
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
   1:  !Programa en Vacio ;
   2:  !Sistema de Vision ;
   3:   ;
   4:  CALL K_VS_CONNECT    ;
   5:   ;
   6:  CALL K_VS_SENDCMD('RUN') ;
   7:  CALL K_VS_WAITCMD('RUN',1) ;
   8:  IF R[1:KEYENCE]<>0,JMP LBL[999] ;
   9:   ;
  10:  CALL K_VS_SENDCMD('TD',0) ;
  11:  CALL K_VS_WAITCMD('TD',13) ;
  12:  IF R[13]<>0,JMP LBL[999] ;
  13:   ;
  14:  CALL K_VS_SENDCMD('TRG') ;
  15:  CALL K_VS_WAITCMD('TRG',14) ;
  16:  IF R[14]<>0,JMP LBL[999] ;
  17:  CALL K_VS_RECVVAL(15) ;
  18:  WAIT    .50(sec) ;
  19:   ;
  20:  PR[10]=LPOS    ;
  21:  PR[10,3]=PR[10,3]-85    ;
  22:L PR[10] 1500mm/sec FINE    ;
  23:   ;
  24:  CALL K_VS_SENDCMD('TD',0) ;
  25:  CALL K_VS_WAITCMD('TD',13) ;
  26:  IF R[13]<>0,JMP LBL[999] ;
  27:   ;
  28:  CALL K_VS_SENDCMD('TRG') ;
  29:  CALL K_VS_WAITCMD('TRG',14) ;
  30:  IF R[14]<>0,JMP LBL[999] ;
  31:  CALL K_VS_RECVVAL(15) ;
  32:  WAIT    .70(sec) ;
  33:  JMP LBL[1] ;
  34:   ;
  35:  LBL[999] ;
  36:  UALM[1] ;
  37:   ;
  38:  LBL[1] ;
  39:  CALL K_VS_CLOSE    ;
/POS
/END
