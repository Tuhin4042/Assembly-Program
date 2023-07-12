include 'emu8086.inc'
.model small
.stack 100h
.data
.code
    main proc 
        
        mov cx,8
        
        print 'Take an Input : '
        mov ah,1
        int 21h
        mov bl,al
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        print 'Binary Result : '
        lebel:
            shl bl,1
            jnc zero
            jc one       
        
        zero:
            mov ah,2
            mov dl,'0'
            int 21h
            loop lebel 
         
        one:
            mov ah,2
            mov dl,'1'
            int 21h
            loop lebel   
        
        main endp
    end main