#PURPOSE: This program finds the maximum number of a
# set of data items.
#
#VARIABLES: The registers have the following uses:
#
# %edi - Holds the index of the data item being examined
# %ebx - Largest data item found
# %eax - Current data item
#
# The following memory locations are used:
#
# data_items - contains the item data. A 0 is used
# to terminate the data
#
 .section .data

data_items:

 .section .text

 .globl _start
_start:
 
 pushl $2
 pushl $3
 call maximum
 movl $1, %eax 			#1 is the exit() syscall
 int $0x80

 .type maximum,@function
maximum:			# start loop
 pushl %ebp 			#save old base pointer
 movl %esp, %ebp 		#make stack pointer the base pointer
 subl $4, %esp 			#get room for our local storage
 
 movl 8(%ebp), %eax 		#put first argument in %eax
 movl 12(%ebp), %ebx 		#put second argument in %ecx
 	
 cmpl %ebx, %eax 		# compare values
 jg end_maximum 		# jump to loop beginning if the new

				# one isn’t bigger
 movl %eax, -4(%ebp) 		# move the value as the largest
 
end_maximum:
 movl %ebx, -4(%ebp)
 movl -4(%ebp), %eax 		#return value goes in %eax
 movl %ebp, %esp 		#restore the stack pointer
 popl %ebp 			#restore the base pointer
 ret				# %ebx is the status code for the exit system call
				# and it already has the maximum number
