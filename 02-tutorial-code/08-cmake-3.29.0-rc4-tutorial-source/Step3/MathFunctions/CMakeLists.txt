add_library(MathFunctions MathFunctions.cxx)

# TODO 1: State that anybody linking to MathFunctions needs to include the
# current source directory, while MathFunctions itself doesn't.
# Hint: Use target_include_directories with the INTERFACE keyword
# Hint 2: we use PUBLIC in step2
target_include_directories(MathFunctions
                           INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
                           )

# should we use our own math functions
option(USE_MYMATH "Use tutorial provided math implementation" ON)
if (USE_MYMATH)
message("!!!!!!!!!!!!! DebugInfo: USE_MYMATH is ON!!!!!!!!!!!!!!!!!!!!!")
  target_compile_definitions(MathFunctions PRIVATE "USE_MYMATH")

  # library that just does sqrt
  add_library(SqrtLibrary STATIC
              mysqrt.cxx
              )

  # TODO 6: Link SqrtLibrary to tutorial_compiler_flags

  target_link_libraries(SqrtLibrary PRIVATE tutorial_compiler_flags)

  # TODO 7: Link MathFunctions to tutorial_compiler_flags
  target_link_libraries(MathFunctions PRIVATE SqrtLibrary tutorial_compiler_flags)

endif()
