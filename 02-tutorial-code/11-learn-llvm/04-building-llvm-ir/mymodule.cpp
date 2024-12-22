#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Type.h>


int main(int argc, char *argv[]) {
    llvm::LLVMContext context;
    llvm::Module module("my_module", context);

    llvm::IRBuilder<> builder(context);

    // Create a function signature: int add(int, int)
    llvm::FunctionType *funcType = llvm::FunctionType::get(builder.getInt32Ty(),
        {builder.getInt32Ty(), builder.getInt32Ty()}, false);
    // Create the function
    llvm::Function *addFunction = llvm::Function::Create(funcType,
        llvm::Function::ExternalLinkage, "add", module);

    // Create a basic block to hold the function body
    llvm::BasicBlock *bb = llvm::BasicBlock::Create(context, "entry", addFunction);
    builder.SetInsertPoint(bb);

    // Get function arguments
    auto args = addFunction->arg_begin();
    llvm::Value *a = args++;
    llvm::Value *b = args;

    // Create the addition instruction
    llvm::Value *sum = builder.CreateAdd(a, b, "sum");

    // Return the sum
    builder.CreateRet(sum);

    // Output the module to stdout
    module.print(llvm::outs(), nullptr);
    return 0;
}
