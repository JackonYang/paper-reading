CC = gcc

test:
	make compile && make run

compile: test.c
	$(CC) -g -o test test.c

run:
	./test

gdb:
	gdb ./test

clean:
	rm -f test

.PHONY: test compile run clean gdb
