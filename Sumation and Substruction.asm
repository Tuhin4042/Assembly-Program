include 'emu8086.inc'
.model small
.stack 100h
.data

.code
main proc
    print 'Input 2 value: '
    
    
    mov ah,1
    int 21h                                                                  
    mov bl,al
    
    mov ah,1
    int 21h
    mov cl,al 
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
      
    ;sumation
    print 'Sum of two value: '
    add bl,cl
    sub bl,48
               
               
    mov ah,2
    mov dl,bl
    int 21h 
             
             
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;substruction
    
    print 'Substruction : '
    
    sub bl,cl
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    
    inc bl
    print 'increment substruction: ' 
    
     
     
    mov ah,2
    mov dl,bl
    int 21h
 
    
    main endp
end main