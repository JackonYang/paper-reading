./a.out > condition-example.ll
opt -debug-pass-manager -passes=dot-cfg -disable-output condition-example.ll
dot -Tpng .add.dot -o condition-example.png
