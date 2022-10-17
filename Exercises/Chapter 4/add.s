#added 2 + 2 for fun
 .globl _start
_start:
 movl $2, %eax
 movl $2, %ebx
 addl %eax, %ebx
 movl $1, %eax
 int $0x80
