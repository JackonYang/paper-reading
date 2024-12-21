rm -rf build && mkdir build && cd build
cmake ..
make

clang -O1 -S -emit-llvm ../input.c -o input.ll
echo "input.ll generated at build/input.ll"
