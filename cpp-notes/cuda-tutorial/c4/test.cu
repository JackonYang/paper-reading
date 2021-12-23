/*
matrix add using CUDA
demonstrate that the order of accessing momery matters a lot on speed performance

compile: make

run: ./test 10240 1024

output(using 2080ti):

#################### LOOP_M_FIRST #########################

<M, N> = <10240 1024>
Take 0.247000 ms 169.809879 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.240000 ms 174.762667 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.240000 ms 174.762667 GB/s
Take 0.238000 ms 176.231261 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.238000 ms 176.231261 GB/s
Take 0.238000 ms 176.231261 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.238000 ms 176.231261 GB/s
Take 0.239000 ms 175.493891 GB/s
Take 0.240000 ms 174.762667 GB/s

#################### LOOP_N_FIRST #########################
<M, N> = <10240 1024>
Take 0.760000 ms 55.188211 GB/s
Take 0.752000 ms 55.775319 GB/s
Take 0.768000 ms 54.613333 GB/s
Take 0.763000 ms 54.971219 GB/s
Take 0.767000 ms 54.684537 GB/s
Take 0.751000 ms 55.849587 GB/s
Take 0.748000 ms 56.073583 GB/s
Take 0.752000 ms 55.775319 GB/s
Take 0.750000 ms 55.924053 GB/s
Take 0.751000 ms 55.849587 GB/s
Take 0.750000 ms 55.924053 GB/s
Take 0.750000 ms 55.924053 GB/s
Take 0.761000 ms 55.115690 GB/s
Take 0.751000 ms 55.849587 GB/s
Take 0.765000 ms 54.827503 GB/s
Take 0.768000 ms 54.613333 GB/s
Take 0.751000 ms 55.849587 GB/s
Take 0.766000 ms 54.755927 GB/s
Take 0.750000 ms 55.924053 GB/s
Take 0.766000 ms 54.755927 GB/s

*/

#include <stdio.h>
#include <curand.h>
#include <sys/time.h>
#include <assert.h>
#include <iostream>
#include <limits>
#include <mma.h>
#include <vector>


// step 1. compile and run. fast
// step 2. comment this line, compile and run. slow
// #define LOOP_M_FIRST

#define TIME(a,b) ((double)((b).tv_sec-(a).tv_sec) * 1000.0 + (double)((b).tv_usec-(a).tv_usec)/(double)1000.0)

// Define some error checking macros.
#define cudaErrCheck(stat) { cudaErrCheck_((stat), __FILE__, __LINE__); }
void cudaErrCheck_(cudaError_t stat, const char *file, int line) {
   if (stat != cudaSuccess) {
      fprintf(stderr, "CUDA Error: %s %s %d\n", cudaGetErrorString(stat), file, line);
   }
}


__global__ void AddGpuKernel(float *C,
    const float *A, const float *B,
    size_t M, size_t N)
{
    const int tidx = threadIdx.x + blockIdx.x * blockDim.x;
    const int tidy = threadIdx.y + blockIdx.y * blockDim.y;
    const int tnumx = blockDim.x * gridDim.x;
    const int tnumy = blockDim.y * gridDim.y;

#if defined(LOOP_M_FIRST)
    for (int i = tidy; i < M; i += tnumy)
    {
        for (int j = tidx; j < N; j += tnumx)
        {
            const int offset = i * N + j;
            C[offset] = A[offset] + B[offset];
        }
    }
#else
    for (int i = tidy; i < N; i += tnumy)
    {
        for (int j = tidx; j < M; j += tnumx)
        {
            const int offset = j * N + i;
            C[offset] = A[offset] + B[offset];
        }
    }
#endif
}


int main(int argc, char* argv[]) {

    int M = atoi(argv[1]);
    int N = atoi(argv[2]);
    printf("<M, N> = <%d %d>\n", M, N);

    // cudaSetDevice(0);

    // input data
    float *A_device;
    float *B_device;

    // output data
    float *C_device;

    // init input data
    size_t size = M * N * sizeof(float);
    cudaErrCheck(cudaMalloc((void**)(&A_device), size));
    cudaErrCheck(cudaMalloc((void**)(&B_device), size));
    cudaErrCheck(cudaMemset(A_device, 0, size));
    cudaErrCheck(cudaMemset(B_device, 0, size));

    // init output data
    cudaErrCheck(cudaMalloc((void**)(&C_device), size));

    // used to log processing speed
    size_t bytes = M * N * sizeof(float);

    for (int s = 0; s < 20; s ++)
    {
        dim3 grid(32, 32, 1);
        dim3 block(32, 32, 1);

        struct timeval t0, t1;
        gettimeofday(&t0, NULL);

        AddGpuKernel<<<grid, block>>>(C_device, A_device, B_device, M, N);
        cudaDeviceSynchronize();

        gettimeofday(&t1, NULL);
        printf("Take %.6f ms %.6lf GB/s\n", TIME(t0, t1), bytes / TIME(t0, t1) / 1000000.0);
    }

    cudaErrCheck(cudaFree(A_device));
    cudaErrCheck(cudaFree(B_device));
    cudaErrCheck(cudaFree(C_device));

    return 0;
}
