mov ah, 0x0e

mov al, 'c'

int 0x10

mov al, 'o'

int 0x10

mov al, 'o'

int 0x10

mov al,  'l'

int 0x10

jmp $

times 510-($-$$) db 0

dw 0xaa55