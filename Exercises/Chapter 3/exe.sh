as --32 write-records.s -o write-records.o
as --32 write-record.s -o write-record.o
ld -melf_i386 write-record.o write-records.o -o write-records
./write-records
echo $?
