BITS 64

section .text
    global my_Revstr

my_Revstr:
    xor rcx, rcx
    xor rax, rax
    xor r8, r8
    jmp loop_push_revstr

loop_push_revstr:
    mov r8b, [rdi + rcx]
    cmp r8b, 0
    jne loop_push
    jmp loop_pop_revstr

loop_push:
    push r8
    inc rcx
    jmp loop_push_revstr
    

loop_pop_revstr:
    pop r8
    mov [rdi + rax], r8
    inc rax
    dec rcx
    cmp rcx, 0
    jne loop_pop_revstr
    ret
