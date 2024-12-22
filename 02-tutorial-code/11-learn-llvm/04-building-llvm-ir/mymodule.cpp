#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Type.h>


int main(int argc, char *argv[]) {
    llvm::LLVMContext context;
    llvm::Module module("my_module", context);

    llvm::IRBuilder<> builder(context);

    // Create a global variable: int globalVar = 42
    llvm::Type *int32Type = llvm::Type::getInt32Ty(context);
    llvm::GlobalVariable *globalVar = new llvm::GlobalVariable(
        module,                           // Module
        int32Type,                       // Type
        /*isConstant=*/false,           // isConstant
        llvm::GlobalValue::ExternalLinkage, // Linkage
        llvm::ConstantInt::get(int32Type, 42), // Initial value
        "globalVar"                     // Name
    );

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

    // Create the conditional check: if (a < 100)
    llvm::Value *condition = builder.CreateICmpULT(a, llvm::ConstantInt::get(int32Type, 100), "cond");
    // Create blocks for true and false cases
    llvm::BasicBlock *trueBlock = llvm::BasicBlock::Create(context, "true_block", addFunction);
    llvm::BasicBlock *falseBlock = llvm::BasicBlock::Create(context, "false_block", addFunction);
    llvm::BasicBlock *mergeBlock = llvm::BasicBlock::Create(context, "merge_block", addFunction);

    // Conditional branch
    builder.CreateCondBr(condition, trueBlock, falseBlock);

    // True block: perform addition
    builder.SetInsertPoint(trueBlock);
    llvm::Value *sum = builder.CreateAdd(a, b, "sum");
    builder.CreateBr(mergeBlock);  // Jump to merge block

    // False block: return 0
    builder.SetInsertPoint(falseBlock);
    // builder.CreateRet(llvm::ConstantInt::get(int32Type, 0));  // Return 0
    builder.CreateBr(mergeBlock);  // Jump to merge block

    // Merge block
    builder.SetInsertPoint(mergeBlock);
    llvm::PHINode *phiNode = builder.CreatePHI(int32Type, 2, "result");
    phiNode->addIncoming(sum, trueBlock);   // Incoming from true block
    phiNode->addIncoming(llvm::ConstantInt::get(int32Type, 0), falseBlock);  // Incoming from false block

    // Load the global variable and use it (e.g., add it to the sum)
    llvm::Value *globalValue = builder.CreateLoad(int32Type, globalVar, "globalValue");
    llvm::Value *result = builder.CreateAdd(phiNode, globalValue, "result");

    // Return the sum
    builder.CreateRet(result);

    // Output the module to stdout
    module.print(llvm::outs(), nullptr);
    return 0;
}
