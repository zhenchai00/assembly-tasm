.model small
.stack 100h

.code
main PROC
    mov ah, 02h
    mov cx, 26
    mov dl, 65
    loop_1: 
        int 21h

        mov bl, dl
        mov dl, " "
        int 21h

        mov dl, bl
        inc dl
        dec cx
        jnz loop_1

    mov dl, 10
    int 21h

    mov ah, 02h
    mov cx, 26
    mov dl, 97
    loop_2: 
        int 21h

        mov bl, dl
        mov dl, " "
        int 21h

        mov dl, bl
        inc dl
        dec cx
        jnz loop_2

    mov dl, 10
    int 21h

    mov ah, 02h
    mov cx, 9
    mov dl, 49
    loop_3: 
        int 21h

        mov bl, dl
        mov dl, " "
        int 21h

        mov dl, bl
        inc dl
        dec cx
        jnz loop_3

    mov dl, 10
    int 21h

    mov ah, 02h
    mov cx, 143
    mov dl, 0
    loop_4: 
        int 21h

        mov bl, dl
        mov dl, " "
        int 21h

        mov dl, bl
        inc dl
        dec cx
        jnz loop_4

    mov ah, 4ch
    int 21h
main ENDP
end main