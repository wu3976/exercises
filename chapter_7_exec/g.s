    .text
    .globl  g
    .type   g,  @function
g:
    pushq   %rbp
    movq    %rsp,   %rbp
    movq    %rbp,   %rsp
    popq    %rbp
    ret
