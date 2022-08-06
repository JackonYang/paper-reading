CC = g++

test:
	make compile && make run

compile: test.cpp
	$(CC) --std=c++11 -o test test.cpp

run:
	./test

clean:
	rm -f test

.PHONY: test compile run clean
