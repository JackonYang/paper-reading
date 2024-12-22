clang++ -O3 mymodule.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o a.out

./a.out
