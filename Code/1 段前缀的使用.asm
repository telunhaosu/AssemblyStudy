; assume cs:code
; code segment
;         mov bx, 0
;         mov cx, 12

;     s:  mov ax, 0ffffh
;         mov ds, ax      ; ffffh段赋值给ds
;         mov dl, [bx]    ; ffff:0赋值给dl

;         mov ax, 0020h
;         mov ds, ax      ; ds=20:0=200+0=200
;         mov [bx], dl    ; dl赋值给0:200

;         inc bx          ;加一
;         loop s          ;循环直至cx减到0

;         mov ax, 4c00h
;         int 21h
; code ends
; end
		