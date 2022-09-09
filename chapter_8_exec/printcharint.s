    .equ    m,  -4
    .equ    n,  -8
    .equ    x,  -12
    .equ    y,  -16
    .equ    ca,  -17
    .equ    cb,  -18
    .equ    cc,  -19
    .equ    cd,  -20
    .equ    localSz,    32

    .section    .rodata
formatint:
    .string "%d %d %d %d\n"
formatchar:
    .string "%c %c %c %c\n"

    .text
    .globl  main
    .type   main,   @function
main:
    pushq   %rbp
    movq    %rsp,       %rbp

    subq    $localSz,   %rsp        #reserve space
    movl    $1,         m(%rbp)     #initialize
    movl    $2,         n(%rbp)
    movl    $3,         x(%rbp)
    movl    $4,         y(%rbp)
    movb    $'a',       ca(%rbp)
    movb    $'b',       cb(%rbp)
    movb    $'c',       cc(%rbp)
    movb    $'d',       cd(%rbp)
    
    movq    $formatint, %rdi    #print ints
    movq    $0,         %rax
    movl    m(%rbp),    %esi
    movl    n(%rbp),    %edx
    movl    x(%rbp),    %ecx
    movl    y(%rbp),    %r8d
    call    printf

    movq    $formatchar,    %rdi    #print chars
    movq    $0,             %rax
    movb    ca(%rbp),       %sil
    movb    cb(%rbp),       %dl
    movb    cc(%rbp),       %cl
    movb    cd(%rbp),       %r8b
    call    printf

    movq    $0,     %rax
    movq    %rbp,   %rsp
    popq    %rbp
    ret
