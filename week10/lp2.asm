.model small
.stack 100h

.code
main PROC
    mov al, 4
    mov bl, 3
    sub al, bl      ; subtitude 

    ; when display the number, it should convert the value through ascii format
    add al, 30h     ; ascii value is 0
    mov dl, al

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main ENDP
end main