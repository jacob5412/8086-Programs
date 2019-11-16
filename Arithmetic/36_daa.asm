.MODEL SMALL
.STACK 200
.DATA
NUM1	DB 	27H
NUM2	DB	35H	
.CODE
.STARTUP

	MOV	AL,  NUM1	;load AX with number NUM1
	ADD 	AL,  NUM2	;AL = AL + NUM2 i.e. AL = 5CH = 92 in decimal
	;The expected result is 62 in decimal
	DAA			; AL = 62
.EXIT
END
