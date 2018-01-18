ORG 100H

MOV AL,var1         ;check value of var1 by moving it to AL

MOV BX,OFFSET var1  ;get address of var1 in BX

MOV b.[BX],44h      ;modify the contents of var1

MOV AL,var1         ;check value of VAR1 by moving it to AL

RET

var1 DB 22H

END