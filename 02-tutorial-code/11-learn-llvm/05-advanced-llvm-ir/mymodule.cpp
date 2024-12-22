#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Type.h>


int main(int argc, char *argv[]) {
    llvm::LLVMContext context;
    llvm::Module module("my_module", context);

    llvm::IRBuilder<> builder(context);

    // Create a function signature: int loadStore(int, int)
    llvm::FunctionType *funcType = llvm::FunctionType::get(builder.getInt32Ty(),
        {builder.getInt32Ty(), builder.getInt32Ty()}, false);
    // Create the function
    llvm::Function *loadStoreFunction = llvm::Function::Create(funcType,
        llvm::Function::ExternalLinkage, "loadStore", module);

    // Create a basic block to hold the function body
    llvm::BasicBlock *bb = llvm::BasicBlock::Create(context, "entry", loadStoreFunction);
    builder.SetInsertPoint(bb);

    // Define the type for an integer
    llvm::Type *intType = llvm::Type::getInt32Ty(context);

    // Create a pointer to an array of integers (a simple vector)
    llvm::Value *size = llvm::ConstantInt::get(intType, 10); // Size of the vector
    llvm::Value *vectorPtr = builder.CreateAlloca(intType->getPointerTo(), size, "vector");

    // Create a GEP instruction to access the first element of the vector
    llvm::Value *zeroIndex = llvm::ConstantInt::get(intType, 0);
    llvm::Value *gep = builder.CreateGEP(intType, vectorPtr, zeroIndex, "gep");

    // Store a value into the first element of the vector
    llvm::Value *valueToStore = llvm::ConstantInt::get(intType, 42); // Value to store
    builder.CreateStore(valueToStore, gep);

    // Load the value from the first element of the vector
    llvm::Value *valueLoaded = builder.CreateLoad(intType, gep, "valueLoaded");

    // Return the loaded value
    builder.CreateRet(valueLoaded);

    // Output the module to stdout
    module.print(llvm::outs(), nullptr);
    return 0;
}
