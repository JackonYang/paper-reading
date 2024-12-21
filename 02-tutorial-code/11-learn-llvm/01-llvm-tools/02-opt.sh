opt -debug-pass-manager -passes=dot-cfg file.ll -disable-output

# opaque mode is required on GNU clang
# opt -opaque-pointers -debug-pass-manager -dot-cfg file.ll -disable-output
