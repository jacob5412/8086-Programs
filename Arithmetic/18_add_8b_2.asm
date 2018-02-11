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
           
           ADD AL,num1         ;add num1 to num2
           MOV RES,AL          ;store sum in res
           MOV AH,0            ;clear garabage value (ah to be used later)
           AAA                 ;converts hex to bcd and stores values in ah and al 
           ADD AH,30H          ;first digit converted into bcd
           ADD AL,30H          ;second digit converted from ASCII to BCD
           
           MOV BX,AX           ;save value of ax into bx
           LEA DX,MSG3         ;print ms3
           MOV AH,9H
           INT 21H
           
           MOV AH,2H           ;print first digit
           MOV DL,BH                                
           INT 21H
           
           MOV AH,2            ;print second digit
           MOV DL,BL
           INT 21H
    
           MOV AH,4CH
           INT 21H
    
CODE ENDS
END START