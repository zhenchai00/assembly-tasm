.model small
.stack 100h

.code
main PROC
        mov ah, 02h
        mov cx, 26
        mov dl, 65
    loop_c: 
        int 21h

        mov bl, dl
        mov dl, " "
        int 21h

        mov dl, bl
        inc dl
        dec cx
        jnz loop_c

    mov ah, 4ch
    int 21h
main ENDP
end main