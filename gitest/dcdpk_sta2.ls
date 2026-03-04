/PROG  DCDPK_STA2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 523;
CREATE		= DATE 26-01-21  TIME 11:55:14;
MODIFIED	= DATE 26-02-24  TIME 07:22:54;
FILE_NAME	= DCDPK_ST;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 847;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !***************** ;
   2:  !Matriz de posiciones ;
   3:  !Posicion de inspeccion ;
   4:  !***************** ;
   5:   ;
   6:  UTOOL_NUM=2 ;
   7:  UFRAME_NUM=2 ;
   8:   ;
   9:  R[56:STACK_ST2]=GI[14:0:Stack Act ST02]    ;
  10:  PR[70:STK_ACTUAL]=PR[99:STACK5_STA2]    ;
  11:   ;
  12:  CALL OFFSETX_STA2    ;
  13:  CALL OFFSETY_STA2    ;
  14:  CALL NIVEL_CAMA_ST02    ;
  15:   ;
  16:L PR[70:STK_ACTUAL] 2000mm/sec CNT10    ;
  17:   ;
  18:  PR[70:STK_ACTUAL]=LPOS    ;
/POS
/END
