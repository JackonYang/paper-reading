#include "mlir/IR/Dialect.h"
#include "mlir/IR/MLIRContext.h"
#include "llvm/ADT/StringRef.h"

#include "mlir/IR/Builders.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Target/LLVMIR/Export.h"

// Define the TinyMatmul Dialect
namespace tiny_matmul {

class TinyMatmulDialect : public mlir::Dialect {
public:
  explicit TinyMatmulDialect(mlir::MLIRContext *ctx);

  static llvm::StringRef getDialectNamespace() { 
    return "tiny_matmul";
  }

  static mlir::TypeID getTypeID() {
    return mlir::TypeID::get<TinyMatmulDialect>();
  }

};

} // namespace tiny_matmul
