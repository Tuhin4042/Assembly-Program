include 'emu8086.inc'
.model small
.stack 100h
.data

.code
main proc
    
    print 'Input: '
    
    mov bl
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    print 'Lower to upper:'
    sub bl,32   ;lower to upper (-32)
                ;upper to lower (+32)
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    
    
    
    main endp
end main