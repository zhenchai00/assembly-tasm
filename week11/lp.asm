.model small
.stack 100h
.data   
    number1 db 10, 13, "Please enter the first number: $"
    number2 db 10, 13, "Please enter the second number: $"
    biggestValue db 10, 13, "The biggest value is $"

    x db 0
    y db 0
.code

main proc
    mov ax, @data
    mov ds, ax

    ; show msg get number 1
    mov ah, 09h
    mov dx, offset number1
    int 21h

    ; read the first number
    mov ah, 01h
    int 21h

    sub al, 30h
    mov x, al                   ; x will have the first value

    mov ah, 09h
    lea dx, number2
    int 21h

    mov ah, 01h
    int 21h

    mov y, al

    mov ah, 09h
    lea dx, biggestValue
    int 21h

    mov dl, x
    cmp dl, y
    jg showX

    mov dl, y
    
showX: 
    mov dl, x

display_label:
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main