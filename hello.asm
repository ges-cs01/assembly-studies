;hello world in assembly
;nasm -f elf32 hello.asm; ld -m elf_i386 -o hello hello.o; ./hello

section .data

hello: db "Hello World", 0x0a  ;0x0a = \n
size: equ $-hello              ;$ = current position

section .text

global _start

_start:

;ssize_t write(int fd, const void *buf, size_t count)
mov edx, size    ;count
mov ecx, hello   ;*buf
mov ebx, 1       ;file descriptor
mov eax, 4       ;syscall write
int 0x80

;exit()
mov ebx, 0      ;return 0;
mov eax, 1      ;syscall exit()
int 0x80        ;interruption
