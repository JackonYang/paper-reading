---
title: LLVM - a compilation framework for lifelong program analysis & transformation
authors:
- Chris Lattner
- V. Adve
fieldsOfStudy:
- Computer Science
meta_key: 2004-llvm-a-compilation-framework-for-lifelong-program-analysis-transformation
numCitedBy: 4656
reading_status: TBD
ref_count: 54
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/LLVM:-a-compilation-framework-for-lifelong-program-Lattner-Adve/d755f461dddae76068f401409ba59c85a2436305?sort=total-citations
venue: International Symposium on Code Generation and Optimization, 2004. CGO 2004.
year: 2004
---

# LLVM - a compilation framework for lifelong program analysis & transformation

## Abstract

We describe LLVM (low level virtual machine), a compiler framework designed to support transparent, lifelong program analysis and transformation for arbitrary programs, by providing high-level information to compiler transformations at compile-time, link-time, run-time, and in idle time between runs. LLVM defines a common, low-level code representation in static single assignment (SSA) form, with several novel features: a simple, language-independent type-system that exposes the primitives commonly used to implement high-level language features; an instruction for typed address arithmetic; and a simple mechanism that can be used to implement the exception handling features of high-level languages (and setjmp/longjmp in C) uniformly and efficiently. The LLVM compiler framework and code representation together provide a combination of key capabilities that are important for practical, lifelong analysis and transformation of programs. To our knowledge, no existing compilation approach provides all these capabilities. We describe the design of the LLVM representation and compiler framework, and evaluate the design in three ways: (a) the size and effectiveness of the representation, including the type information it provides; (b) compiler performance for several interprocedural problems; and (c) illustrative examples of the benefits LLVM provides for several challenging compiler problems.

## Paper References

1. A provably sound TAL for back-end optimization
2. Efficient and language-independent mobile programs
3. Daisy - Dynamic Compilation For 10o?40 Architectural Compatibility
4. A practical system fljr intermodule code optimization at link-time
5. LLVA - a low-level virtual instruction set architecture
6. Simple and effective link-time optimization of Modula-3 programs
7. The Transmeta Code Morphing#8482; Software - using speculation, recovery, and adaptive retranslation to address real-life challenges
8. Implementing typed intermediate languages
9. Region-based memory management in cyclone
10. The Transmeta Code Morphing/spl trade/ Software - using speculation, recovery, and adaptive retranslation to address real-life challenges
11. Ensuring code safety without runtime checks for real-time control systems
12. Memory safety without runtime checks or garbage collection
13. Data Structure Analysis - A Fast and Scalable Context-Sensitive Heap Analysis
14. Scalable cross-module optimization
15. Achieving high performance via co-designed virtual machines
16. A practical flow-sensitive and context-sensitive C and C++ memory leak detector
17. Continuous program optimization - A case study
18. Automatic pool allocation for disjoint data structures
19. Implementation of exception handling
20. Global register allocation at link time
21. Enforcing high-level protocols in low-level software
22. Efficient implementation of the smalltalk-80 system
23. Efficiently computing static single assignment form and the control dependence graph
24. Instrumentation and optimization of Win32/intel executables using Etch
25. Cache-conscious structure definition
26. Which pointer analysis should I use?
27. UNCOL - The myth and the fact
28. The Java Virtual Machine Specification
29. Self - The power of simplicity
30. Spike - an optimizer for alpha/NT executables
31. Optimizing Alpha Executables on Windows NT with Spike
32. Alto - a platform for object code modification
33. SafeTSA - a type safe and referentially secure mobile-code representation based on static single assignment form
34. Slim binaries
35. FX!32 a profile-directed binary translator
36. From system F to typed assembly language
37. DAISY - Dynamic Compilation for 100% Architectural Compatibility
38. Interprocedural optimization - eliminating unnecessary recompilation
