.model small
.stack 100h
.data

.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    inc bl     ; increment
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
    XCHG cl,bl   ;Exchange
    
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    
    mov ah,2
    mov dl,cl
    int 21h  
     
    
    main endp
end main