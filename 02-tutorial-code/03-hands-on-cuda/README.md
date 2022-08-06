# Hands On Cuda

1. [CUDA hello world](c1/test.cu) Run a device function in multi threads.
2. [passing parameters to device function](c2/test.cu) demonstrate why memory copy in CUDA is very important
3. [dive into memory copy between host(CPU memory) and device(GPU memory)](c3/test.cu) pinned memory is much faster than pagable memory
4. [matrix add using CUDA](c4/test.cu) demonstrate that GPU cache line is important to high speed performance
