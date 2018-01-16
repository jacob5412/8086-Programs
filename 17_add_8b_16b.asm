DATA SEGMENT
    num1 DB 05H
    num2 DB 06H
    num3 DW 1234H
    num4 DW 0002H
    sum DB ?
    sum2 DW ?
DATA ENDS   

ASSUME CS:CODE,DS:DATA

CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX           ;initialize data segment
    
           MOV AL,num1
           ADD AL,num2         ;add the 2 bytes
    
           MOV sum,AL          ;stores result in memory
    
           MOV CX,num3
           ADD CX,num4         ;add the 2 words
    
           MOV sum2,CX         ;stores the result in memory
    
           MOV AH,4CH
           INT 21H
    
CODE ENDS
END START