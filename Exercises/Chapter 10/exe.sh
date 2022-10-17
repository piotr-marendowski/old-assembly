as --32 integer-to-string.s -o integer-to-number.o
as --32 count-chars.s -o count-chars.o
as --32 write-newline.s -o write-newline.o
as --32 conversion-program.s -o conversion-program.o
ld -melf_i386 integer-to-number.o count-chars.o write-newline.o conversion-program.o -o conversion-program
./conversion-program

#as --32 maximum.s -o maximum.o
#ld -melf_i386 maximum.o -o maximum
#./maximum
#echo $?
