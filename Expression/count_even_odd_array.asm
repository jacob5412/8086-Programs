;Count odd and even numbers using division in 8086 compatible assembly language
stack   SEGMENT STACK
                DW 100h dup(?)
        stack   ends

        data    SEGMENT
        p_n db 10,13, 'Enter n: $'
		p_num db  10,13, 'Enter the array: $'
		p_even db 10,13, 'Even nos: $'
		p_odd db 10,13, 'Odd  nos: $'
		n dw ?
        evn dw ?
		odd dw ?
		two dw ?
		num dw 100 DUP  (?)
		tmpstr dw 40 DUP (?)
        data    ENDS

        code    SEGMENT
                ASSUME cs:code,ds:data
        start:  mov ax,data
                mov ds,ax

                output p_n		;input n
		inputs tmpstr, 10
		atoi tmpstr
		mov n, ax

		mov dx, n		;initilize 4 inp
		lea bx, num

		output p_num	;input iterate array
	nxtinp: inputs tmpstr, 10
		atoi tmpstr
		mov [bx], ax
		add bx, 02h
		dec dx
		jnz nxtinp

		mov cx, n		;initilize to check
		mov ax, 0
		mov evn, ax
		mov odd, ax
		lea bx, num
		mov two, 02h

 chknxt:	mov ax, [bx]	;iterate to count even and odd
		cwd
		idiv two
		cmp dx,0
		jnz l_odd
          l_evn:inc evn
		jmp nxt
          l_odd:inc odd
            nxt:add bx, 02h
	        dec cx
		jnz chknxt

		output p_even	;output even
		mov ax, evn
		itoa tmpstr, ax
		output tmpstr

		output p_odd	;output odd
		mov ax, odd
		itoa tmpstr, ax
		output tmpstr
        quit:   mov al,0		;quit
                mov ah,4ch
                int 21h
        code    ENDS
                END start