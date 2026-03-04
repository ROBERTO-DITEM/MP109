/PROG  NIVEL_CAMA_ST02	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 681;
CREATE		= DATE 26-01-11  TIME 09:53:44;
MODIFIED	= DATE 26-02-24  TIME 07:02:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1169;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:   ;
   2:   ;
   3:  R[55:CAMA_ST2]=GI[13:0:Nvl Cama ST02]    ;
   4:   ;
   5:  SELECT R[55:CAMA_ST2]=1,JMP LBL[10] ;
   6:         =2,JMP LBL[11] ;
   7:         =3,JMP LBL[12] ;
   8:         =4,JMP LBL[13] ;
   9:   ;
  10:  !Nivel de cama 1 ;
  11:  LBL[10] ;
  12:  JMP LBL[99] ;
  13:   ;
  14:  !Nivel de cama 2 ;
  15:  LBL[11] ;
  16:  PR[70,3:STK_ACTUAL]=PR[70,3:STK_ACTUAL]-115    ;
  17:   ;
  18:   ;
  19:  JMP LBL[99] ;
  20:   ;
  21:  !Nivel de cama 3 ;
  22:  LBL[12] ;
  23:  PR[70,3:STK_ACTUAL]=PR[70,3:STK_ACTUAL]-230    ;
  24:   ;
  25:   ;
  26:  JMP LBL[99] ;
  27:   ;
  28:  !Nivel de cama 4  ;
  29:  LBL[13] ;
  30:  PR[70,3:STK_ACTUAL]=PR[70,3:STK_ACTUAL]-345    ;
  31:   ;
  32:   ;
  33:  JMP LBL[99] ;
  34:   ;
  35:  !END ;
  36:  LBL[99] ;
/POS
/END
