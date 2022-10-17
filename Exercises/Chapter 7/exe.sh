as --32 add-year.s -o add-year.o
as --32 error-exit.s -o error-exit.o
ld -melf_i386 add-year.o write-newline.o error-exit.o read-record.o write-record.o count-chars.o -o add-year
./add-year
echo $?
#as --32 maximum.s -o maximum.o
#ld -melf_i386 maximum.o -o maximum
#./maximum
#echo $?
