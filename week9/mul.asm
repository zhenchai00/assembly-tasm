.model small
.stack 100h

.code
main proc
    mov al, 2
    mov bl, 4
    mul bl

    mov dl, al      ; mov al to dl for display purpose
    add dl, 30h     ; because of acsii code value 7 is hex 37h to display need to add another 30 value

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main