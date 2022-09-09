    .text
    .globl  y
    .type   y,  @function
y:
    pushq   %rbp
    movq    %rsp,   %rbp

    movb    $'y',   %al
    shl     $8,     %eax
    movb    $'e',   %al
    shl     $8,     %eax
    movb    $'l',   %al
    shl     $8,     %eax
    movb    $'p',    %al

    leave
    ret