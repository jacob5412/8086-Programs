DATA SEGMENT
    num1 db ?
    num2 db ?
    res DB ?
    MSG1 DB 10,13,"ENTER THE FIRST NUMBER: $"
    MSG2 DB 10,13,"ENTER THE SECOND NUMBER: $"
    MSG3 DB 10,13,"RESULT OF ADDITION IS: $"
DATA ENDS   

ASSUME CS:CODE,DS:DATA

CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX           ;initialize data segment 
           
           LEA DX,MSG1         ;load address of msg1 into dx
           MOV AH,9H           ;interrupt to display contents of dx
           INT 21H    
           
           MOV AH,1H           ;read a character from console
           INT 21H
           SUB AL,30H          ;convert number into BCD from ASCII form
           MOV NUM1,AL         ;store number as num1
           
           LEA DX,MSG2         ;load address of msg2 into dx
           MOV AH,9H           ;interrupt to display contents of dx
           INT 21H    
           
           MOV AH,1H           ;read a character from console
           INT 21H
           SUB AL,30H          ;convert number into BCD from ASCII form
           MOV NUM2,AL         ;store number as num2
           
           ADD AL,num1
           MOV RES,AL
           MOV AH,0
           AAA
           ADD AH,30H        
           ADD AL,30H
           
           MOV BX,AX
           LEA DX,MSG3
           MOV AH,9H
           INT 21H
           
           MOV AH,2H
           MOV DL,BH
           INT 21H
           
           MOV AH,2
           MOV DL,BL
           INT 21H
    
           MOV AH,4CH
           INT 21H
    
CODE ENDS
END START