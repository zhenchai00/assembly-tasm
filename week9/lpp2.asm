.model small
.stack 100h

.code
main proc
    mov bl, 5

    mov ah, 02h
top:
    mov dl, 42
    int 21h

    dec bl          ;dec = decreament the bl value = 5
    cmp bl, 0
    jne top

    mov ah, 4ch
    int 21h
main endp
end main