opt -debug-pass-manager -passes=dot-cfg -disable-output build/input.ll
dot -Tpng .matmul.dot -o graph.png
