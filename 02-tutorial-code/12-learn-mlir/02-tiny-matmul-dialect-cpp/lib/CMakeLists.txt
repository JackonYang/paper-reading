add_mlir_dialect_library(TinyMatmulDialect
  TinyMatmulDialect.cpp

  LINK_LIBS PUBLIC
  MLIRIR
  MLIRInferTypeOpInterface
  MLIRFuncDialect
  )
