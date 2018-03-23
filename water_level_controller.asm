;Emulate water level controller on emu8086 with the following specifications:
;a. No. of water levels in the overhead tank is 8
;b. Display the current level of water with a buzzer
;c. Switch on the motor if the water level is 1
;d. Switch off the motor if the water level is 8
;e. Switch on the buzzer on water overflow

DATA SEGMENT
    msg1 db 10,13,"The water level is: $"
    msg2 db 10,13,"Switch on motor. $"
    msg3 db 10,13,"Switch off motor. $"
DATA ENDS

CODE SEGMENT
    ASSUME DS:DATA,CS:CODE

START: mov ax,@data ;intialize data segment
       mov ds,ax
       
       mov cl,1h

L1:    lea dx,msg1  ;displaying water level
       mov ah,9h
       int 21h
       
       add cl,30H
       mov dl,cl
       mov ah,2h
       int 21h
       sub cl,30H 

       cmp cl,8     ;switch off motor
       je off
       
       cmp cl,1     ;switch on motor
       je on
       
back:  inc cl
       cmp cl,9h
       jnz l1
       
       jmp exit 
       
on:    lea dx,msg2
       mov ah,9h
       int 21h
       jmp back
       
off:   lea dx,msg3
       mov ah,9h
       int 21h
       jmp back


exit:  mov ah,4ch
       int 21h              
       
CODE ENDS
END START