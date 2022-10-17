as --32 printf-example.s -o printf-example.o
ld -melf_i386 printf-example.o -o printf-example -lc \
-dynamic-linker /lib/ld-linux.so.2
./printf-example
echo $?
#as --32 helloworld-lib.s -o helloworld-lib.o
#ld -melf_i386 -dynamic-linker /lib/ld-linux.so.2 \
#-o helloworld-lib helloworld-lib.o -lc
#./helloworld-lib
#echo $?
