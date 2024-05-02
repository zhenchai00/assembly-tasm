.model small
.stack 100h
.data
        msg1 db "MENU: "
             db 10, "1. CSLLT "
             db 10, "2. CTF "
             db 10, "3. ISC "
             db 10, "4. DSTR "
             db 10, "5. CRI"
             db 10, "6. EXIT "
             db 10, "ENTER YOUR CHOICE: $"
        msg2 db 10, "YOU HAVE ENTERED: $"
        name1 db 10, "What is your name? $"
        nameinp db 10, "My name is $"
        
.code

StrDisp Macro Mess
        mov ah, 09h
        mov dx, offset Mess
        int 21h
endM

Main Proc
        mov ax, @data
        mov ds, ax

        StrDisp msg1

        mov ah, 01h   ;calling function to accept input char
        int 21h

        StrDisp msg2
        
       ; mov ah, 02h
       ; mov dl, al
       ; int 21h
       call CharDisp

        StrDisp name1

        StrDisp nameinp
       
        mov ah, 0Ah
        int 21h

        mov ah, 4ch
        int 21h
Main endp

CharDisp Proc
     push ax
     mov ah, 02h
     mov dl, al
     int 21h
     pop ax
     ret 
CharDisp endp
end Main
