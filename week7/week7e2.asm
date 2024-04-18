.model small 
stack 100h
.code 
.data 
    msg1 db 'What is your name?$'
    msg2 db ""
    msg3 db "My name is $"

.code 
Main proc 

    mov ax, @data   ; is to retrieving data from memory 
    mov ds, ax      ; then put the data segment register from the memery

    mov ah, 09h          ; display string
    mov dx, offset msg1  ; to display the all the offset value, offset = memeory value
    int 21h

    mov dx, offset msg3
    int 21h

    mov ah, 0Ah
    mov dx, offset msg2
    int 21h

    mov ah, 4ch
    int 21h

Main endp
end Main