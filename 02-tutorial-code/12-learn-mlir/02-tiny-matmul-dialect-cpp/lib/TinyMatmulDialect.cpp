#include "TinyMatmulDialect.h"

#include <iostream>

namespace tiny_matmul {

TinyMatmulDialect::TinyMatmulDialect(mlir::MLIRContext *ctx)
    : mlir::Dialect(
      TinyMatmulDialect::getDialectNamespace(), ctx,
      TinyMatmulDialect::getTypeID()) {
  std::cout << "TinyMatmulDialect registered." << std::endl;
  // Register operations, types, etc. here if needed.
}

}
