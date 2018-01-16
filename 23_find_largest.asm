;Write a program to find the highest among 5 grades.

data segment
    STRING1 DB 08h,14h,05h,0Fh,09h
data ends
 
code segment
assume cs:code, ds:data
start: mov ax, data
       mov ds, ax         
       mov cx, 04h         ;set up loop counter

       mov bl, 00h         ;bl stores highest grade
       LEA SI, STRING1     ;si points to first grade

up:    mov al, [SI]        ;compare next grade to highest
       cmp al, bl          
       jl nxt              ;jump if al is still the highest
       mov bl, al          ;else bl holds new highest

nxt:   inc si              ;point to next grade
       dec cx
       jnz up
 
       mov dl,bl
       
code ends
end start