.model small
.stack 100h
.data
    mar db 5, 10, 15, 20, 25, 30, 35
    msg db "Yes found it$"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; mov bx, 00h
    mov si, 00h

; L1: mov ah, mar[bx]
;     inc bx
L1: mov ah, mar[si]
    inc si

    cmp ah, 20h
    jne L1

    mov ah, 09h
    mov dx, offset msg
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
