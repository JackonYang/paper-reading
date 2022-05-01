CC = g++

test:
	make compile && make run

compile: test.cpp
	$(CC) --std=c++11 -o test test.cpp -gdwarf-2 -fno-omit-frame-pointer -O0

perf:
	sudo perf record -g --call-graph dwarf ./test

run:
	./test

clean:
	rm -f test

.PHONY: test compile run clean
