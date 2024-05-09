.model small
.stack 100h

.code
main PROC
    mov al, 6
    mov bl, 8
    add al, bl

    ; when display the number, it should convert the value through ascii format
    add al, 30h     ; ascii value is 0
    mov dl, al

    aaa
    add ax, 3030h

    mov dh, al
    mov dl, ah

    mov ah, 02h
    int 21h

    mov dl, dh
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main ENDP
end main