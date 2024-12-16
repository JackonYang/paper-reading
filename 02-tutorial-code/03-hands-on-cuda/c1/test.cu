/*
CUDA hello world.
Run a device function in multi threads.

`make run`

output:

Thread Id:  0 Print
Thread Id:  1 Print
Thread Id:  2 Print
Thread Id:  3 Print
Thread Id:  4 Print
Thread Id:  5 Print
Thread Id:  6 Print
Thread Id:  7 Print

 */

#include <stdio.h>


__global__ void kernel_func()
{
    int tid = threadIdx.x;
    printf("Thread Id: %2d Print\n", tid);
}

int main(int argc, char* argv[])
{
    // https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#kernels
    // <<<GirdSize, BlockSize>>>, 1 block, 8 thread per block.
    kernel_func<<<1, 8>>>();
    cudaDeviceSynchronize();
    return 0;
}

