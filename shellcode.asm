;nasm -f elf64 -o shellcode.o shellcode.asm
;ld -o shellcode shellcode.o

;executa shell

section .text
        global _start

_start:
        mov rax, 0x3b   ;sys_execve
        mov rdx, 0
        mov rsi, 0
        mov rdi, cmd
        syscall

cmd:    db '/bin/sh', 0 
