# generate assembly code
# clang -S file.c -o file.ll

# generate llvm IR
clang -S -emit-llvm file.c -o file.ll
