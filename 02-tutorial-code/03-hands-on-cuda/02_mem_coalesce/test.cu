/*
CUDA hello world.
Add two vectors in parallel using CUDA.

`make run`
*/

#include <iostream>

#define N 1024 * 1024 * 1024
#define elementsPerThread 4

// CUDA kernel for vector addition
__global__ void vector_add(const float *a, const float *b, float *c)
{
    // hit peak bw at elementsPerThread = 2
    // int base = (blockIdx.x * blockDim.x + threadIdx.x) * elementsPerThread;
    // #pragma unroll
    // for (int i = 0; i < elementsPerThread; ++i) {
    //     int tid = base + i;
    //     if (tid < N) {
    //         c[tid] = a[tid] + b[tid];
    //     }
    // }

    // impl 2: using float4 instruction
    int tid = blockIdx.x * blockDim.x + threadIdx.x;
    if (tid < N/4) {
        float4 a4 = reinterpret_cast<const float4*>(a)[tid];
        float4 b4 = reinterpret_cast<const float4*>(b)[tid];
        float4 c4;
        c4.x = a4.x + b4.x;
        c4.y = a4.y + b4.y;
        c4.z = a4.z + b4.z;
        c4.w = a4.w + b4.w;
        reinterpret_cast<float4*>(c)[tid] = c4;
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
    int grid_size = (N + block_size - 1) / block_size / elementsPerThread;
    std::cout << "N: " << N/1024/1024 << "M, grid_size: " << grid_size << ", block_size: " << block_size << ", elementsPerThread: " << elementsPerThread << std::endl;

    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);

    cudaEventRecord(start);
    vector_add<<<grid_size, block_size>>>(dev_a, dev_b, dev_c);
    cudaEventRecord(stop);
    cudaEventSynchronize(stop);

    float time_ms;
    cudaEventElapsedTime(&time_ms, start, stop);

    // Copy the result from device to the host
    cudaMemcpy(c, dev_c, N * sizeof(float), cudaMemcpyDeviceToHost);

    // clean up (free device memory)
    cudaFree(dev_a);
    cudaFree(dev_b);
    cudaFree(dev_c);

    // print first 10 elements of the result
    // for (int i = 0; i < 10; i++)
    // {
    //     std::cout << c[i] << " ";
    // }
    // std::cout << std::endl;

    // Verify the result
    for (int i = 0; i < N; i++)
    {
        if (c[i] != a[i] + b[i])
        {
            std::cerr << "Error: mismatch at " << i << " expected " << a[i] + b[i] << " but got " << c[i] << std::endl;
            return 1;
        }
    }

    const size_t data_size = N * sizeof(float);
    float bandwidth = (2.0f * data_size) / (time_ms / 1000.0f) / (1e9);  // GB/s
    printf("Success! time cost: %.3f ms, HBM Bandwidth: %.2f GB/s\n", time_ms, bandwidth);

    free(a);
    free(b);
    free(c);

    return 0;
}

