    .text
    .globl  x
    .type   x,  @function
x:
    pushq   %rbp
    movq    %rsp,   %rbp
    movl    $250,   %eax
    leave
    ret