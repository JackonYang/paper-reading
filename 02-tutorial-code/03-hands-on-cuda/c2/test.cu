/*
passing parameters to device function.
1. demonstrate data copying between host(CPU memory) and device(GPU memory)
2. understand why memory copy in CUDA is very important

compile: make

run: ./test

output:
2 + 7 = 9
 */

#include <stdio.h>


__global__ void add(int a, int b, int *c)
{
    *c = a + b;
}

int main() {
    int c;
    int *dev_c;

    cudaMalloc((void**)&dev_c, sizeof(int));
    add<<<1,1>>>(2, 7, dev_c);

    // copy from device to host
    cudaMemcpy(&c,
               dev_c,
               sizeof(int),
               cudaMemcpyDeviceToHost);

    printf("2 + 7 = %d\n", c);
    cudaFree(dev_c);

    return 0;
}
