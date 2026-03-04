/PROG  KEY_VS_SAMPLEPROGRAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1202;
CREATE		= DATE 25-07-01  TIME 09:07:40;
MODIFIED	= DATE 25-07-01  TIME 09:07:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1706;
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
   1:  !************************** ;
   2:  !This program is a sample ;
   3:  !program for operation. ;
   4:  !When using it, please ;
   5:  !verify the actual operation ;
   6:  !of the robot and make ;
   7:  !the necessary changes first ;
   8:  !before implementation. ;
   9:  !************************** ;
  10:   ;
  11:  !Please output X,Y,Z,Rx,Ry,Rz, ;
  12:  !and the judged value ;
  13:  !delimited by commas. ;
  14:   ;
  15:  !Opens the connection. ;
  16:  CALL K_VS_CONNECT    ;
  17:   ;
  18:  !Issues the trigger. ;
  19:  CALL K_VS_SENDCMD('TRG') ;
  20:  !Waits for the reply and ;
  21:  !sets the reply to R20. ;
  22:  CALL K_VS_WAITCMD('TRG',20) ;
  23:  IF R[20]<>0,JMP LBL[999] ;
  24:   ;
  25:  !Receives the values and ;
  26:  !sets received values to R30,31,. ;
  27:  CALL K_VS_RECVVAL(30) ;
  28:   ;
  29:  !Moves to the detected position. ;
  30:  IF R[30]<>1,JMP LBL[999] ;
  31:  PR[10,1]=R[31]    ;
  32:  PR[10,2]=R[32]    ;
  33:  PR[10,3]=R[33]    ;
  34:  PR[10,4]=R[34]    ;
  35:  PR[10,5]=R[35]    ;
  36:  PR[10,6]=R[36]    ;
  37:L PR[10] 400mm/sec FINE    ;
  38:   ;
  39:  LBL[999:END] ;
  40:  !Closes the connection. ;
  41:  CALL K_VS_CLOSE    ;
  42:   ;
/POS
/END
