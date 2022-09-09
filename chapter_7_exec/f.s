    .text
    .globl  f
    .type   f,   @function
f:
    pushq   %rbp
    movq    %rsp,   %rbp
    movl    $0,     %eax
    movq    %rbp,   %rsp
    popq    %rbp
    ret