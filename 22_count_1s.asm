DATA SEGMENT
    DATA1 db 0 
DATA ENDS
 
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
start: mov ax,data
       mov ds,ax
       sub bl,bl
       mov dl,8
       mov al,DATA1
       
       AGAIN: rol al,1
       
       jnc next
       inc bl
       
       NEXT: dec dl
       
       jnz AGAIN
       
exit: mov ah,04ch
      mov al,0
      int 21h
CODE ENDS
end start