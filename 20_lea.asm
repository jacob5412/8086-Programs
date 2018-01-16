ORG 100H

MOV AL,var1         ;check value of var1 by moving it to AL

LEA BX,var1         ;get address of var1 in BX

MOV b.[BX],44h      ;check value of var1 by moving it to AL

RET

var1 DB 22H

END