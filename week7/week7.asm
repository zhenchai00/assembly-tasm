.model small 
stack 100h
.code 
.data 
    msg1 db 'Hi, are you sleepy?$'

.code 
Main proc 

    mov ax, @data   ; is to retrieving data from memory 
    mov ds, ax      ; then put the data segment register from the memery

    ; display string
    mov ah, 09h
    mov dx, offset msg1
    int 21h

    mov ah, 4ch
    int 21h

Main endp
end Main