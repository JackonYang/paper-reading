# CUDA Hierarchy Computing Model

Created: 2022-05-09 17:47

## Compute Hierarchy

### Threads

一个 thread 是一个 cuda core

Each CUDA core has its own memory register that is not available to other threads.

### Thread Blocks

Thread blocks share memory on a per-block basis.

### Kernel Grids

used to perform larger computations in parallel (e.g. those that require more than 1024 threads),

block 之间不共享显存，无法高效的做 synchronization。

## Memory Hierarchy

### Registers

分给 individual threads (CUDA cores)

on-chip memory

handled by compilers

### Read-only Memory

on-chip memory

It is used for specific tasks such as texture memory which can be accessed using CUDA texture functions.

faster and more efficient than using global memory.

### L1 Cache/shared Memory

on-chip memory,

shared within thread blocks (CUDA blocks)

- shared memory usage is controlled via software
- L1 cache is controlled by hardware

### L2 Cache

can be accessed by all threads in all CUDA blocks

### Global Memory

resides in a device’s DRAM

# References

1. https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#thread-hierarchy
