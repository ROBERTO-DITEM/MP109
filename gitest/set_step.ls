/PROG  SET_STEP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SET SEGMENT V4.1";
PROG_SIZE	= 2050;
CREATE		= DATE 26-02-22  TIME 12:19:38;
MODIFIED	= DATE 26-02-22  TIME 12:19:38;
FILE_NAME	= SET_SEGM;
VERSION		= 0;
LINE_COUNT	= 79;
MEMORY_SIZE	= 2494;
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
   1:  ! SET PATH SEGMENT; TO SIGNAL ;
   2:  ! THE ACTIVE PATH SEGMENT ;
   3:   ;
   4:  LBL[1:Begin] ;
   5:   ;
   6:  !Check for Valid Argument ;
   7:  IF (AR[1]<0 OR AR[1]>255) THEN ;
   8:  UALM[1] ;
   9:  !**************** ;
  10:  !Segments 1-255 allowed ;
  11:  !Arguments < 1 or > 255 ;
  12:  !are invalid ;
  13:  !**************** ;
  14:  JMP LBL[1] ;
  15:  ENDIF ;
  16:   ;
  17:  !Reset G1G2 segment Reduced Reg ;
  18:  IF (R[465]=1),R[469]=0 ;
  19:   ;
  20:  !Normal Mode ;
  21:  IF (R[465]=0) THEN ;
  22:  GO[3:0:PathSegment]=AR[1] ;
  23:  ! RESET SEGMENT REQUEST CONTINUE ;
  24:  DO[56:OFF:PathSegReqToCont]=OFF ;
  25:  ENDIF ;
  26:   ;
  27:  !G1G2 Mode Delta1 ;
  28:  IF (R[465]=1 AND (AR[1]>63 AND AR[1]<72)) THEN ;
  29:  MESSAGE[G1G2 Segment Reduced] ;
  30:  GO[3:0:PathSegment]=(AR[1]-R[466]) ;
  31:  ! RESET SEGMENT REQUEST CONTINUE ;
  32:  DO[56:OFF:PathSegReqToCont]=OFF ;
  33:  !Set G1G2 segment Reduced Reg ;
  34:  R[469]=1    ;
  35:  ENDIF ;
  36:  !G1G2 Mode Delta2 ;
  37:  IF (R[465]=1 AND (AR[1]=109)) THEN ;
  38:  MESSAGE[G1G2 Segment Reduced] ;
  39:  GO[3:0:PathSegment]=(AR[1]-R[467]) ;
  40:  ! RESET SEGMENT REQUEST CONTINUE ;
  41:  DO[56:OFF:PathSegReqToCont]=OFF ;
  42:  !Set G1G2 segment Reduced Reg ;
  43:  R[469]=1    ;
  44:  ENDIF ;
  45:   ;
  46:  !G1G2 Mode Delta3 ;
  47:  IF (R[465]=1 AND (AR[1]>159 AND AR[1]<165)) THEN ;
  48:  MESSAGE[G1G2 Segment Reduced] ;
  49:  GO[3:0:PathSegment]=(AR[1]-R[468]) ;
  50:  ! RESET SEGMENT REQUEST CONTINUE ;
  51:  DO[56:OFF:PathSegReqToCont]=OFF ;
  52:  !Set G1G2 segment Reduced Reg ;
  53:  R[469]=1    ;
  54:  ENDIF ;
  55:   ;
  56:  !G1G2 Valid Segment ;
  57:  IF (R[465]=1 AND (AR[1]<64)) THEN ;
  58:  MESSAGE[G1G2 Valid Segment] ;
  59:  GO[3:0:PathSegment]=(AR[1]) ;
  60:  ! RESET SEGMENT REQUEST CONTINUE ;
  61:  DO[56:OFF:PathSegReqToCont]=OFF ;
  62:  !Set G1G2 segment Reduced Reg ;
  63:  R[469]=1    ;
  64:  ENDIF ;
  65:   ;
  66:  !G1G2 Mode Value Check ;
  67:  IF (R[465]=1 AND R[469]=0) THEN ;
  68:   ;
  69:  UALM[1] ;
  70:  !**************** ;
  71:  !G1G2 Mode Segments ;
  72:  !must be less than 64 ;
  73:  !some values reduced ;
  74:  !other functions not valid ;
  75:  !**************** ;
  76:  JMP LBL[1] ;
  77:  ENDIF ;
  78:  LBL[99:END] ;
  79:   ;
/POS
/END
