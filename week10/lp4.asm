.model small
.stack 100h

.code
main PROC
    mov al, 6
    mov bl, 2
    div bl

    ; when display the number, it should convert the value through ascii format
    ; add ax, 30h     ; ascii value is 0
    ; mov dx, ax
    add al, 30h     ; ascii value is 0
    mov dl, al

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main ENDP
end main