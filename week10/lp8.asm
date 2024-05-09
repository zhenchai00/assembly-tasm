.model small
.stack 100h
.data
    guest db "Yes(Y) or No(N): $"
    answer1 db 13, 10, "You Said Yes!", 13, 10, "$"
    answer2 db 13, 10, "You Said No!", 13, 10, "$"

.code
main PROC
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset guest
    int 21h

    mov ah, 01h
    int 21h

    cmp al, 'Y'
    je saidYes

    cmp al, 'N'
    je saidNo

    saidYes:
        mov ah, 09h
        mov dx, offset answer1
        int 21h
        jmp quit

    saidNo:
        mov ah, 09h
        mov dx, offset answer2
        int 21h
        jmp quit

    quit:
    mov ah, 4ch
    int 21h
main ENDP
end main