data segment
    var1 dw 1234H
    var2 dw 5140H
    result dw ?
    carry db 00H
data ends

code segment
    
    assume cs:code,ds:data
    
    mov ax,data
    mov ds,ax
   
start: mov ax,var1
       add ax,var2
       jnc skip
       mov carry,01H

Skip: mov result,ax

      int 03H

end start
code ends
end