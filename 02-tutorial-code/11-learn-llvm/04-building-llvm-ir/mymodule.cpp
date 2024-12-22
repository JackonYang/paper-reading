#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"


int main(int argc, char *argv[]) {
    llvm::LLVMContext context;
    llvm::Module module("my_module", context);

    // Output the module to stdout
    module.print(llvm::outs(), nullptr);
    return 0;
}
