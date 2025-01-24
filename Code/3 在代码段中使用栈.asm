assume cs:codesg
codesg segment
        dw 0123H, 0456, 0789, 0abcH, 0defH, 0fedH, 0cbaH, 0987H
        dw 0, 0, 0, 0, 0, 0, 0, 0
start:	mov ax, cx
		mov ss, ax
		mov sp, 30h
		mov cx, 8
		c


codesg ends
		
        
