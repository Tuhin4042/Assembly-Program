include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    test al,1
    jz yes
     
     
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    
    
    print ' is Odd number...!'
    
    mov ah,4
    int 21h
    
    yes: 
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
     
    print ' is Even number...!'
    mov ah,4
    int 21h  
    
    
    
    main endp
end main
    
    
    
        
        
