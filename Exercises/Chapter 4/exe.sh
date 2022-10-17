as --32 add.s -o add.o
ld -melf_i386 add.o -o add
./add
echo $?
