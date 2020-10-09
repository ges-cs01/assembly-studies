section .text
        global _start

_start:
        mov rax, 0x3b
        mov rdx, 0
        mov rsi, 0
        mov rdi, cmd
        syscall

cmd:    db '/bin/sh', 0 
