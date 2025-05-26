#include <iostream>
#include <cmath>

#define N (1024 * 1024 * 1024)  // 1G elements

#define elementsPerThread 8

// Naive reduction kernel
__global__ void reduce_optimized(float* d_in, float* d_out) {
    // Shared memory declaration
    // - Dynamic shared memory allocation using extern keyword
    // - Visible to all threads in the block
    extern __shared__ float sdata[];
    
    // each thread loads one element GMEM -> SMEM
    // sync to Ensures all threads finish loading before computation
    unsigned int tid = threadIdx.x;  // Thread ID within block
    unsigned int i = (blockIdx.x * blockDim.x + tid) * elementsPerThread;  // Global index

    float sum = 0.0f;
    #pragma unroll
    for (size_t ii = 0; ii < elementsPerThread; ii++) {
        int gtid = i + ii;
        if (gtid < N) {
            sum += d_in[gtid];
        }
    }
    sdata[tid] = sum;
    __syncthreads();

    // do reduction in shared mem
    // - Sequential addressing: Stride starts at half block size
    // - Avoids thread divergence within warps (tid < s condition)
    for(unsigned int s = blockDim.x/2; s > 0; s >>= 1) {
        if (tid < s) {
            sdata[tid] += sdata[tid + s];
        }
        // Prevents race conditions during shared memory access
        __syncthreads();
    }

    // write result for this block to global mem & acc using atomicAdd
    if (tid == 0) atomicAdd(d_out, sdata[0]);
}

// CPU reference implementation (baseline for validation)
float reduce_cpu(float* data, size_t n) {
    // float sums up to 16777216 (2^24)
    double sum = 0.0f;
    size_t i = 0;
    for(i = 0; i < n; ++i) sum += data[i];

    // printf("n: %ld, i: %ld, sum: %.2f\n", n, i, (float)sum);
    return (float)sum;
}

int main() {
    float *h_in, *h_out;
    float *d_in, *d_out;

    // Host allocations and initialize
    h_in = new float[N];
    h_out = new float[1];
    h_out[0] = 0.0f;

    for(int i = 0; i < N; ++i) h_in[i] = 1.0f;  // (1.0f) for easier validation

    // Device allocations
    cudaMalloc(&d_in, N * sizeof(float));
    cudaMalloc(&d_out, sizeof(float));
    
    // Host-to-device data transfer
    cudaMemcpy(d_in, h_in, N * sizeof(float), cudaMemcpyHostToDevice);
    // Initialize output on device
    cudaMemset(d_out, 0, sizeof(float));

    // Launch config
    const int block_size = 512;  // Typical starting value
    const int grid_size = (N + block_size - 1) / block_size / elementsPerThread;
    std::cout << "N: " << N/1024/1024 << "M, grid_size: " << grid_size << ", block_size: " << block_size << ", elementsPerThread: " << elementsPerThread << std::endl;
    
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    
    cudaEventRecord(start);
    // <<<grid, block, shared_mem>>> - Explicit shared memory size specification
    reduce_optimized<<<grid_size, block_size, block_size*sizeof(float)>>>(d_in, d_out);
    cudaEventRecord(stop);
    cudaEventSynchronize(stop);

    // Copy result back to host
    cudaMemcpy(h_out, d_out, sizeof(float), cudaMemcpyDeviceToHost);

    // Result validation
    float cpu_result = reduce_cpu(h_in, N);
    float gpu_result = h_out[0];
    float diff = fabs(cpu_result - gpu_result);
    printf("diff: %2.f, CPU: %.1f, GPU: %.1f.\n", diff, cpu_result, gpu_result);

    float time_ms;
    cudaEventElapsedTime(&time_ms, start, stop);
    const size_t data_size = N * sizeof(float);
    // 2.0f * data_size if copy in and out
    float bandwidth = (1.0f * data_size) / (time_ms / 1000.0f) / (1e9);  // GB/s
    const char* success = (diff < 1e-5) ? "Success" : "Error";
    printf("%s! time cost: %.3f ms, HBM Bandwidth: %.2f GB/s\n", success, time_ms, bandwidth);

    // clean up
    cudaFree(d_in);
    cudaFree(d_out);
    delete[] h_in;
    delete[] h_out;
    return 0;
}
