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

    // Get function arguments to avoid constant folding in CreateInsertElement
    auto args = loadStoreFunction->arg_begin();
    llvm::Value *a = args++;
    llvm::Value *b = args;

    // Define the type for an integer
    llvm::Type *intType = llvm::Type::getInt32Ty(context);
    // Define the type for a vector of 4 integers
    llvm::VectorType *vecType = llvm::VectorType::get(intType, 4, false/*scalable*/);

    // Create an undefined vector
    llvm::Value *vec = llvm::UndefValue::get(vecType);
    // Insert scalars into the vector
    llvm::Value *vecAfterInsert0 = builder.CreateInsertElement(vec, a, llvm::ConstantInt::get(intType, 0));
    llvm::Value *vecAfterInsert1 = builder.CreateInsertElement(vec, b, llvm::ConstantInt::get(intType, 1));
    llvm::Value *vecAfterInsert2 = builder.CreateInsertElement(vec, a, llvm::ConstantInt::get(intType, 2));
    llvm::Value *vecAfterInsert3 = builder.CreateInsertElement(vec, b, llvm::ConstantInt::get(intType, 3));

    // store the vector into a pointer
    llvm::Value *vectorPtr = builder.CreateAlloca(vecType, nullptr, "vectorPtr");
    // llvm::Value *size = llvm::ConstantInt::get(intType, 4); // Size of the vector
    // llvm::Value *vectorPtr = builder.CreateAlloca(intType->getPointerTo(), size, "vector");
    builder.CreateStore(vec, vectorPtr);

    // Extract the first element from the vector
    llvm::Value *extractedElement = builder.CreateExtractElement(vecAfterInsert3, llvm::ConstantInt::get(intType, 3), "extractedElement");

    // Create a GEP instruction to access the first element of the vector
    llvm::Value *zeroIndex = llvm::ConstantInt::get(intType, 0);
    llvm::Value *gep = builder.CreateGEP(intType, vectorPtr, zeroIndex, "gep");

    // Load the value from the first element of the vector
    llvm::Value *valueLoaded = builder.CreateLoad(intType, gep, "valueLoaded");

    // sum the extracted element and the loaded value
    llvm::Value *sum = builder.CreateAdd(extractedElement, valueLoaded, "sum");

    // Return the loaded value
    builder.CreateRet(sum);

    // Output the module to stdout
    module.print(llvm::outs(), nullptr);
    return 0;
}
