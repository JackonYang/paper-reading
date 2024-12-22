out_dir="build/frontend"
mkdir -p $out_dir

input_file=softmax.c


# gen LLVM IR in .ll file
clang -S -emit-llvm $input_file -o $out_dir/$input_file.ll
# gen LLVM IR in .bc file
clang -c -emit-llvm $input_file -o $out_dir/$input_file.bc

# convert .ll to .bc
llvm-as $out_dir/$input_file.ll -o $out_dir/$input_file-convert.bc
# convert .bc to .ll
llvm-dis $out_dir/$input_file.bc -o $out_dir/$input_file-convert.ll

# gen assembly code
llc $out_dir/$input_file.ll -o $out_dir/$input_file.s
