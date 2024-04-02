.model small
.stack
.code

; display vertical APU
Main Proc
    mov ah, 02h
    mov dl, 65
    int 21h

    mov dl, 10
    int 21h

    mov dl, 80
    int 21h

    mov dl, 10
    int 21h

    mov dl, 85
    int 21h

    mov ah, 4ch
    int 21h
Main endp
end Main