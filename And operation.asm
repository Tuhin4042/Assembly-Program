.model small
.stack 100h
.data

.code
    main proc
        
        mov bl,86h
        
        and bl,7Eh ;Clear Sign and least significat bit
        
        mov ah,2
        mov dl,bl
        int 21h
        

        
      main endp
 end main    
 
 
 
 
 
 