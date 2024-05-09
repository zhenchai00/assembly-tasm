.model small
.stack 100h

.code
main proc
    mov cx, 5
outer_loop:
    mov bx, cx
    mov dx, 0

    mov ah, 02h
    mov dl, 42
    int 21h

inner_loop:
    dec bx
    jz line_break

    mov ah, 02h
    mov dl, 32
    int 21h
    jmp inner_loop

line_break:
    mov ah, 02h
    mov dl, 13
    int 21h
    mov ah, 02h
    mov dl, 10
    int 21h

    dec cx
    jnz outer_loop

    mov ah, 4ch
    int 21h
main endp
end main