/PROG  VISTEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1566;
CREATE		= DATE 26-01-08  TIME 15:34:38;
MODIFIED	= DATE 26-01-08  TIME 17:43:30;
FILE_NAME	= KEY_VS_S;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 2026;
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
/MN
   1:  !************************** ;
   2:  !This program is a sample ;
   3:  !program for operation. ;
   4:  !When using it, please ;
   5:  !verify the actual operation ;
   6:  !of the robot and make ;
   7:  !the necessary changes first ;
   8:  !before implementation. ;
   9:  !************************** ;
  10:  CALL VISION_D2    ;
  11:  !Please output X,Y,Z,Rx,Ry,Rz, ;
  12:  !and the judged value ;
  13:  !delimited by commas. ;
  14:  !Opens the connection. ;
  15:  CALL K_VS_CONNECT    ;
  16:  PR[10]=LPOS    ;
  17:   ;
  18:  R[31]=PR[10,1]    ;
  19:  R[32]=PR[10,2]    ;
  20:  R[33]=PR[10,3]    ;
  21:  R[34]=PR[10,4]    ;
  22:  R[35]=PR[10,5]    ;
  23:  R[36]=PR[10,6]    ;
  24:   ;
  25:   ;
  26:  CALL K_VS_SENDCMD('RBCPW',4,R[31],R[32],R[33],R[34],R[35],R[36]) ;
  27:  CALL K_VS_WAITCMD('RBCPW',200) ;
  28:  IF R[12]<>0,JMP LBL[999] ;
  29:  !Issues the trigger. ;
  30:  CALL K_VS_SENDCMD('TRG') ;
  31:  !Waits for the reply and ;
  32:  !sets the reply to R20. ;
  33:  CALL K_VS_WAITCMD('TRG',20) ;
  34:  IF R[20]<>0,JMP LBL[999] ;
  35:   ;
  36:  !Receives the values and ;
  37:  !sets received values to R30,31,. ;
  38:  CALL K_VS_RECVVAL(30) ;
  39:   ;
  40:  PR[10,1]=R[31]    ;
  41:  PR[10,2]=R[32]    ;
  42:  PR[10,3]=R[33]    ;
  43:  PR[10,4]=R[34]    ;
  44:  PR[10,5]=R[35]    ;
  45:  PR[10,6]=R[36]    ;
  46:   ;
  47:  !Moves to the detected position. ;
  48:  IF R[30]<>1,JMP LBL[999] ;
  49:   ;
  50:L PR[10] 400mm/sec FINE    ;
  51:   ;
  52:  LBL[999:END] ;
  53:  !Closes the connection. ;
  54:  CALL K_VS_CLOSE    ;
  55:   ;
/POS
/END
