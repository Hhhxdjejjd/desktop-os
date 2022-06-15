[org 0x7c00]

mov bp, 0x7c00
mov sp, bp

mov bx, teststring
call printstring

jmp $

printstring:
    mov ah, 0x0e
    mov al, [bx]
    int 0x10
    ret
teststring:
    db "this is a test", 0

times 510-($-$$) db 0

dw 0xaa55