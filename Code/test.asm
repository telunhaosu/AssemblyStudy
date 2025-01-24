assume cs:code
code segment
        mov ax, 0ffffh  ; 数据不能以字母开头
        mov ds, ax
        mov bx, 6
        mov al, [bx]
        mov ah, 0
        
        mov dx, 0
        mov cx, 3
    s:  add dx, ax
        loop s
    
    s0: mov bx, 0
        pop cx:[bx]
        add bx, 2
        loop s0


        mov ax, 4c00h
        int 21h
code ends
end start

