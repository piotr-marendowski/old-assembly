as --32 add-year.s -o add-year.o
ld -melf_i386 add-year.o read-record.o write-record.o -o add-year
./add-year
echo $?
