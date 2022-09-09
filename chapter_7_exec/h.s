    .text
    .globl  h
    .type   h,  @function
h:
    pushq   %rbp
    movq    %rsp,   %rbp
    movl    $123,   %eax
    movq    %rbp,   %rsp
    popq    %rbp
    ret
