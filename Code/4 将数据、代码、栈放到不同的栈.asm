assume cs:code, ds:data, ss:stack
data segment
		dw 0123H, 0456H, 0789H, 0abcH, 0defH, 0fedH, 0cbaH, 0987H, 0654H, 0321H
data ends

stack segment
		dw 0, 0, 0, 0, 0, 0, 0, 0
stack ends

code segment
start:
		mov ax, stack
		mov ss, ax
		mov sp, 20h		;初始化栈和栈指针
		mov ax, data
		mov ds, ax		;初始化数据段

		mov bx, 0		
		mov cx, 8
	s:	push [bx]		;在8086中入栈，栈指针减
		add bx, 2
		loop s
	
		mov bx, 0
		mov cx, 8
	s0:	pop [bx]		;在8086中出站，栈指针加
		add bx, 2
		loop s0

		mov ax, 4c00h
		int 21h
code ends
end start