#PURPOSE: Program to illustrate how functions work
# This program will compute the value of
# 2^3 + 5^2
#
# Everything in the main program is stored in registers,
# so the data section doesn’t have anything.
 .section .data

 .section .text

 .globl _start
_start:
 pushl $3 		#push second argument
 pushl $3		#push first argument
 call power 		#call the function
 addl $8, %esp 		#move the stack pointer back

 pushl %eax 		#save the first answer before
			#calling the next function
 movl %eax, %ebx

 movl $1, %eax 	#exit (%ebx is returned)
 int $0x80

 .type power, @function
power:

 pushl %ebp 		#save old base pointer
 movl %esp, %ebp 	#make stack pointer the base pointer
 subl $4, %esp 		#get room for our local storage

 movl 8(%ebp), %ebx 	#put first argument in %eax

 movl %ebx, %eax 	#store current result
 imull %ebx, %eax

 movl %ebp, %esp 	#restore the stack pointer
 popl %ebp 		#restore the base pointer
 ret
