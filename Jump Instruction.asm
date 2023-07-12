include 'emu8086.inc'
.model small
.stack 100h
.data

.code
main proc 
    
    print ' input value: '
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
   
    ;compare 
    
    cmp bl,cl
    jg biggest 
    
    print 'Biggest is in cl'
    
    jmp exit
    
   
    biggest:
    print 'biggest value in bl'  
    
    
     
      exit:
    mov ah,9
    int 21h
     
        
    main endp
end main