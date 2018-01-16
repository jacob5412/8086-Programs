DATA SEGMENT
    var1 DB 85H
    var2 DB 32H
    res DB ?
DATA ENDS   

ASSUME CS:CODE,DS:DATA

CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX           ;initialize data segment
    
           MOV AL,var1
           ADD AL,var2         ;add the 2 bytes
    
           MOV res,AL          ;stores result in memory
    
           MOV AH,4CH
           INT 21H
    
CODE ENDS
END START