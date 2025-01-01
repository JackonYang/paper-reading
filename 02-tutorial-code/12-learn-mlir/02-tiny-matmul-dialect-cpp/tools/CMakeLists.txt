get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
        ${dialect_libs}
        ${conversion_libs}
        MLIRArithDialect
        MLIROptLib

        TinyMatmulDialect
        )

add_llvm_executable(tc tc-main.cpp)

llvm_update_compile_flags(tc)
target_link_libraries(tc PRIVATE ${LIBS})
