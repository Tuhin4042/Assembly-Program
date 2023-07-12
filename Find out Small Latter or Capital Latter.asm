include 'emu8086.inc'
.model small
.stack 100h
.data
.code
    main proc

       mov cx,10 
       
       mov bl,48
       
       mov ah,2 
       
       
       top:
       mov dl,bl
       int 21h 
       
       inc bl
       
       loop top        
        
     main endp   
end main