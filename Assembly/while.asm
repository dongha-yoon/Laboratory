loop_while:
    movq $0, %eax
    jmpq .L2
.L3:
    leaq (,%rsi,%rdi), %rdx
    addq %rdx, %rax
    subq $1, $rdi
.L2:
    cmpq %rsi, %rdi
    jg  .L3
    rep; ret