    .equ    localsize,   16
    .equ    number,     -16
    .equ    STDOUT,       1
    .equ    SYSWRITE,     1

    .section    .rodata
prompt:
    .string     "Enter an integer: "
    .equ        prmpSz, .-prompt-1 
disppmt:
    .string     "You entered: "
    .equ        dispSz,  .-disppmt-1
scanformat:
    .string     "%d"
dispformat:
    .string     "%x\n"

    .text
    .globl      main
    .type       globl,  @function
main:
    pushq   %rbp
    movq    %rsp,   %rbp    #build stack frame

    subq    $localsize, %rsp    #reserve size for localvar

    movq    $STDOUT,    %rdi        #print prompt
    movq    $prompt,    %rsi
    movq    $prmpSz,    %rdx
    movq    $SYSWRITE,  %rax
    syscall

    leaq    number(%rbp),   %rsi    #scan the number
    movq    $scanformat,    %rdi
    movq    $0,             %rax
    call    scanf

    movq    $STDOUT,    %rdi    #print output string
    movq    $disppmt,    %rsi
    movq    $dispSz,    %rdx
    movq    $SYSWRITE,   %rax
    syscall

    movl    number(%rbp),    %esi   #print number in hex
    movq    $dispformat,     %rdi
    movq    $0,              %rax
    call    printf   

    movq    %rbp,   %rsp
    popq    %rbp
    ret
