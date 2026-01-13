section .data
    numbers dd 10, 20, 30, 40     ;Four 32-bit numbers
    result  dd 0                  ;Space for result

section .text
    global _start


_start:
    ;Load first numbers
    mov eax, [numbers]            ;Load 10

    ;Add second number 
    mov ebx, [numbers + 4]        ;Load 20 (4 bytes later)
    add eax, ebx                  ;eax = 30

    ;Store result
    mov [result], eax

    ;Exit
    mov edi, eax
    mov rax, 60
    syscall
