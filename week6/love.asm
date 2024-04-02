.model small
.stack
.code

Main Proc

    mov ah, 02h
    mov dl, 73
    int 21h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h
    mov bl, 4
    mov cx, 1
    int 10h

    mov ah, 02h
    mov dl, 3 
    int 21h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 02h
    mov dl, 85
    int 21h

    mov ah, 4ch
    int 21h
Main endp
end Main