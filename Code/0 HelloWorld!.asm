assume cs:code, ds:code
code segment
start:
    mov ax, code
    mov ds, ax

    ; Print "Hello, World!"
    mov ah, 09h
    lea dx, message
    int 21h

    ; Exit program
    mov ax, 4c00h
    int 21h

message db 'Hello, World!$'
code ends
end start

