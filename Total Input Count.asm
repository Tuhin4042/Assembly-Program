
.model small
.stack 100h
.data 

.code
    main proc    
        mov cl,0
        
        mov ah,1 
        
        toop:
            int 21h
            cmp al,0dh
            je exit
            inc cl
            jmp toop
            
        exit:
            mov ah,2 
            mov dl,cl
            int 21h 
            
            mov ah,4
            int 21h

        main endp
end main