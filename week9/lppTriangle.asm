.model small
.stack 100h

.code
Main Proc
    mov cx, 5

    mov ah, 02h
    mov dl, 42
a:  int 21h

    loop a

    mov dl, 10
    int 21h

    mov cx, 4

    mov ah, 02h
    mov dl, 42
b:  int 21h

    loop b

    mov dl, 10
    int 21h

    mov cx, 3

    mov ah, 02h
    mov dl, 42
c:  int 21h

    loop c

    mov dl, 10
    int 21h

    mov cx, 2

    mov ah, 02h
    mov dl, 42
d:  int 21h

    loop d

    mov dl, 10
    int 21h

    mov cx, 1

    mov ah, 02h
    mov dl, 42
e:  int 21h

    loop e


    mov ah, 4ch
    int 21h
Main endp
end Main