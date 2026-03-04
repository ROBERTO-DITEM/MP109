/PROG  NIVEL_CAMA_ST01	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 731;
CREATE		= DATE 26-02-17  TIME 09:02:22;
MODIFIED	= DATE 26-02-24  TIME 07:01:42;
FILE_NAME	= NIVEL_CA;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1219;
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
   3:  R[50:CAMA_ST1]=GI[10:2:Nvl Cama ST01]    ;
   4:   ;
   5:  SELECT R[50:CAMA_ST1]=1,JMP LBL[10] ;
   6:         =2,JMP LBL[11] ;
   7:         =3,JMP LBL[12] ;
   8:         =4,JMP LBL[13] ;
   9:   ;
  10:  !Nivel de cama 1 ;
  11:  LBL[10] ;
  12:   ;
  13:  JMP LBL[99] ;
  14:   ;
  15:  !Nivel de cama 2 ;
  16:  LBL[11] ;
  17:  PR[70,3:STK_ACTUAL]=PR[70,3:STK_ACTUAL]-115    ;
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
