#! /bin/sh
as --32 gnome-example.s -o gnome-example.o
gcc gnome-example.o ‘gnome-config --lib gnomeui‘ -o gnome-example
./gnome-example

#as --32 maximum.s -o maximum.o
#ld -melf_i386 maximum.o -o maximum
#./maximum
#echo $?
