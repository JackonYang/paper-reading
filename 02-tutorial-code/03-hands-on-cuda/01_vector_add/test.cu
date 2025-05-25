/*
CUDA hello world.
Add two vectors in parallel using CUDA.

`make run`
*/

#include <iostream>

#define N 8192

// CUDA kernel for vector addition
__global__ void vector_add(const float *a, const float *b, float *c)
{
    // global thread index
    int tid = blockIdx.x * blockDim.x + threadIdx.x;
    if (tid < N)  // check the bound
    {
        c[tid] = a[tid] + b[tid];
    }
}

// Host function to add two vectors
int main(int argc, char* argv[])
{
    float *a, *b, *c;  // host copies of a, b, c
    float *dev_a, *dev_b, *dev_c;  // device copies of a, b, c

    // Allocate memory on the host and initialize
    a = (float*)malloc(N * sizeof(float));
    b = (float*)malloc(N * sizeof(float));
    c = (float*)malloc(N * sizeof(float));

    for (int i = 0; i < N; i++)
    {
        a[i] = static_cast<float>(i);
        b[i] = static_cast<float>(i * 2);
    }

    // Allocate memory on the device
    cudaMalloc((void**)&dev_a, N * sizeof(float));
    cudaMalloc((void**)&dev_b, N * sizeof(float));
    cudaMalloc((void**)&dev_c, N * sizeof(float));

    // Copy input data from host to device
    cudaMemcpy(dev_a, a, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(dev_b, b, N * sizeof(float), cudaMemcpyHostToDevice);

    // Launch kernel
    int block_size = 256;
    int grid_size = (N + block_size - 1) / block_size;
    std::cout << "grid_size: " << grid_size << ", block_size: " << block_size << std::endl;

    vector_add<<<grid_size, block_size>>>(dev_a, dev_b, dev_c);

    // Copy the result from device to the host
    cudaMemcpy(c, dev_c, N * sizeof(float), cudaMemcpyDeviceToHost);

    // clean up (free device memory)
    cudaFree(dev_a);
    cudaFree(dev_b);
    cudaFree(dev_c);


    // Verify the result
    for (int i = 0; i < N; i++)
    {
        if (c[i] != a[i] + b[i])
        {
            std::cerr << "Error: mismatch at " << i << " expected " << a[i] + b[i] << " but got " << c[i] << std::endl;
            return 1;
        }
    }

    // print first 10 elements of the result
    for (int i = 0; i < 10; i++)
    {
        std::cout << c[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "Success!" << std::endl;

    free(a);
    free(b);
    free(c);

    return 0;
}

