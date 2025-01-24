assume cs:code
code segment
		;声明dw:将代码段视为数据段使用，存储临时数据
        dw 0123H, 0456H, 0789H, 0abcH, 0abcH, 0fefh, 0fedH, 0cbaH, 0987H
        
start:  mov bx, 0		;start代码开始的地方
        mov ax, 0
        mov cx, 8
    
    s:  add ax, cs:[bx]
        add bx, 2
        loop s

        mov ax, 4c00h
        int 21h
code ends
end start	;说明了文件结束的位置，和代码开始的地方
