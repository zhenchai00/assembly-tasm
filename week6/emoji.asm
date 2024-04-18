.model small
.code
.stack 100
Main proc
    mov ah, 09h
    mov bl, 8eh ; blinking character
    mov cx, 2
    int 10h

    mov ah, 02
    mov dl, 03h ; loved emoji
    int 21h

    mov ah, 02
    mov dl, 02h ; shaded smile emoji
    int 21h
Main endp
end Main