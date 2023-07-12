include 'emu8086.inc'
.model small
.stack 100h
.data 

.code
main proc
    print 'Input your value: '
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    cmp bl,'a'
    jge yes
    
    jmp exit
    
    
    
    yes:
    cmp bl,'z'
    jle result
    
    jmp exit
    
    
    result:
         print 'Yes!!! It is lower case alphabate : ' 
         
         mov ah,2
         mov dl,bl 
         int 21h
         
         mov ah,4
         int 21h
         
         
         
    exit:
        print 'No!!! It is not a lower case alphabate : '
        
        mov ah,2
        mov dl,bl 
        int 21h
         
         
        mov ah,4
        int 21h   
        
        main endp
end main