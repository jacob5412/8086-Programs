;Program to count number of binary 1s
DATA SEGMENT
    DATA1 db ? 
    MSG1 DB 10,13,"ENTER THE NUMBER: $"
    MSG3 DB 10,13,"NUMBER OF 1s ARE: $"
DATA ENDS   
 
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
start: mov ax,data
       mov ds,ax
       sub bl,bl
       
       lea dx,MSG1         ;load address of msg1 into dx
       mov ah,9H           ;interrupt to display contents of dx
       int 21H
       
       mov ah,1H           ;read a character from console
       int 21H
       sub al,30H          ;converting from ASCII into BCD form
       
       mov dl,8H           ;set up count register
AGAIN: rol al,1
       jnc next            ;conditional jump if carry flag is 0
       inc bl              ;number of 1s
 NEXT: dec dl
       jnz AGAIN           ;short jump if del is not zero
       
       lea DX,MSG3         ;print msg3
       mov AH,9H
       int 21H
           
       mov AH,2H           ;print number of 1s
       add bl,30H
       mov DL,BL                                
       int 21H
       
EXIT: mov ah,04CH
      mov al,0
      int 21H 
      
CODE ENDS
end start