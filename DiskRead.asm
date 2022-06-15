
PROGRAM_SPACE equ 0x7c00

ReadDisk:
    mov bx, PROGRAM_SPACE
    mov al, 4
    mov dl, [BOOT_DRIVE]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02

    int 0x13
    
    jc DiskReadFailed

    ret

BOOT_DSIK:
    db 0

DiskReadErrorString:
    db 'disk read did not work',0

DiskReadFailed:
    mov bx, DiskReadErrorString
    call printstring
    
    jmp $