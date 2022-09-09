compmain:
	gcc -S -O0 -fno-asynchronous-unwind-tables main3.c

assem:
	as -gstabs x.s -o x.o

assemmain:
	as -gstabs main3.s -o main3.o

lnk:
	gcc main3.o h.o x.o y.o -o main3