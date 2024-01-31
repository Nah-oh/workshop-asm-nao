section .text
    global my_Getnbr

my_Getnbr:
    xor rax, rax
    xor rcx, rcx
    xor r8, r8
    jmp loop_get

loop_get:
    movzx r8, byte[rdi + rcx]
    cmp r8, 0
    je ret_getnbr
    sub r8, '0' ; 'number' - '0'
    imul rax, 10
    add rax, r8 ; ???
    inc rcx
    jmp loop_get

ret_getnbr:
    ret
