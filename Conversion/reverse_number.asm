;Program to reverse a given number
Cr EQU 0ah
Lf EQU 0dh

data SEGMENT
p_num DB cr, lf, 'Enter a number: ',0
p_rev DB cr, lf,'The reverse is: ',0
ten DW ?
tmpstr DW 40 DUP (?)
data ENDS

code SEGMENT
	ASSUME cs:code, ds:data
start:	mov ax, data
	mov ds, ax
		;input the number
	output p_num
	inputs tmpstr, 10
	atoi tmpstr
		;initialize
	mov cx, 00h;stores the reverse number
	mov ten, 10
		;iterate to reverse digits
next:	cmp ax, 0
	jz op_rev;exit the loop if number=0
	cwd
	idiv ten;to extract units digit
	mov bx, dx;to save contents of dx
	xchg ax, cx;to perform multiplication
	imul ten;to insert units digit
	add ax, bx;add the acutal units digit
	xchg ax, cx;save the reverse number back
	jmp next
		;output the reverse
op_rev:	output p_rev
	itoa tmpstr, cx
	output tmpstr
	
quit:	mov al, 00h
	mov ah, 4ch
	int 21h
code ENDS
END start
