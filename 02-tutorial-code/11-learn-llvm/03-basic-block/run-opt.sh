# find .so or .dylib file
pass_name=mypass
plugin_name=MyPass
plugin_path=$(find . -name "lib${plugin_name}.*")

clang -O1 -S -emit-llvm input.c -o build/input.ll
opt -load-pass-plugin $plugin_path -passes=$pass_name -disable-output build/input.ll
