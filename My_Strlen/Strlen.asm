BITS 64

section .text
    global my_Strlen

my_Strlen:
    xor rax,rax
    jmp loop

loop:
    cmp byte[rdi + rax], 0
    je ret_strlen
    inc rax
    jmp loop

ret_strlen:
    ret
