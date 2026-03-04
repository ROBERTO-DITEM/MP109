/PROG  GOHOME_RESET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 728;
CREATE		= DATE 26-02-01  TIME 11:16:28;
MODIFIED	= DATE 26-02-20  TIME 12:04:54;
FILE_NAME	= GOHOME;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1112;
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
/MN
   1:  !***************** ;
   2:  !Posicion de casa  ;
   3:  !IO Reset          ;
   4:  !***************** ;
   5:   ;
   6:J PR[1:HOME] 100% FINE    ;
   7:  PAYLOAD[1] ;
   8:  CALL CIL2_EXTENDER    ;
   9:  CALL CIL1_EXTENDER    ;
  10:  R[104:AUSENCIA]=0    ;
  11:  R[105:COLISION]=0    ;
  12:  F[19:OFF:Falla Ventosa]=(OFF) ;
  13:  F[20:OFF:Cam_St_FaVentosa]=(OFF) ;
  14:  F[25:OFF:COLISION]=(OFF) ;
  15:  R[120:SENSIBILIDAD]=100    ;
  16:  R[198]=0    ;
  17:  R[199]=0    ;
  18:  R[200:ajusteArrastre]=0    ;
  19:  R[69:CALCULO]=0    ;
  20:  DO[422:OFF:do_ColGuardErr]=OFF ;
  21:  DO[401:OFF:RECHAZO VISION ST1]=OFF ;
  22:  DO[402:OFF:AUSENCIA VISION ST1]=OFF ;
  23:  DO[403:OFF:(Reserved)]=OFF ;
  24:  DO[405:OFF:RECHAZO VISION ST2]=OFF ;
  25:  DO[406:OFF:AUSENCIA VISION ST2]=OFF ;
  26:  DO[407:OFF:(Reserved)]=OFF ;
  27:  DO[409:OFF:(Reserved)]=OFF ;
  28:  DO[410:OFF:(Reserved)]=OFF ;
  29:  DO[411:OFF:(Reserved)]=OFF ;
  30:  DO[412:OFF:(Reserved)]=OFF ;
  31:  GO[1:0:ManualStyle]=0 ;
  32:  R[81:Reintento ventoa]=0    ;
  33:  R[87]=0    ;
/POS
/END
