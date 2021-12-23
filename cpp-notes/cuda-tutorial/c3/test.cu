/*
dive into memory copy between host(CPU memory) and device(GPU memory)
demonstrate that pinned memory is 2.5x faster than pagable memory

compile: make

run: ./test

output(using 2080ti):

#################### pagable memory #########################

Data Length is 104857600
========= Test Host To Device ========
Step  0 Time is 20.865 ms, Bandwidth is 5025.526 MB/s
Step  1 Time is 20.749 ms, Bandwidth is 5053.622 MB/s
Step  2 Time is 20.587 ms, Bandwidth is 5093.389 MB/s
Step  3 Time is 20.632 ms, Bandwidth is 5082.280 MB/s
Step  4 Time is 20.585 ms, Bandwidth is 5093.884 MB/s
Step  5 Time is 20.483 ms, Bandwidth is 5119.250 MB/s
Step  6 Time is 20.725 ms, Bandwidth is 5059.474 MB/s
Step  7 Time is 20.452 ms, Bandwidth is 5127.010 MB/s
Step  8 Time is 20.822 ms, Bandwidth is 5035.904 MB/s
Step  9 Time is 20.605 ms, Bandwidth is 5088.940 MB/s
Step 10 Time is 20.674 ms, Bandwidth is 5071.955 MB/s
Step 11 Time is 20.755 ms, Bandwidth is 5052.161 MB/s
Step 12 Time is 20.728 ms, Bandwidth is 5058.742 MB/s
Step 13 Time is 20.696 ms, Bandwidth is 5066.564 MB/s
Step 14 Time is 20.749 ms, Bandwidth is 5053.622 MB/s
Step 15 Time is 20.871 ms, Bandwidth is 5024.081 MB/s
Step 16 Time is 20.605 ms, Bandwidth is 5088.940 MB/s
Step 17 Time is 20.635 ms, Bandwidth is 5081.541 MB/s
Step 18 Time is 20.775 ms, Bandwidth is 5047.297 MB/s
Step 19 Time is 20.536 ms, Bandwidth is 5106.038 MB/s
========= Test Device To Host ========
Step  0 Time is 19.895 ms, Bandwidth is 5270.550 MB/s
Step  1 Time is 21.020 ms, Bandwidth is 4988.468 MB/s
Step  2 Time is 21.183 ms, Bandwidth is 4950.083 MB/s
Step  3 Time is 20.933 ms, Bandwidth is 5009.201 MB/s
Step  4 Time is 20.994 ms, Bandwidth is 4994.646 MB/s
Step  5 Time is 21.194 ms, Bandwidth is 4947.513 MB/s
Step  6 Time is 20.965 ms, Bandwidth is 5001.555 MB/s
Step  7 Time is 21.064 ms, Bandwidth is 4978.048 MB/s
Step  8 Time is 21.220 ms, Bandwidth is 4941.451 MB/s
Step  9 Time is 21.179 ms, Bandwidth is 4951.018 MB/s
Step 10 Time is 21.107 ms, Bandwidth is 4967.906 MB/s
Step 11 Time is 20.881 ms, Bandwidth is 5021.675 MB/s
Step 12 Time is 21.053 ms, Bandwidth is 4980.649 MB/s
Step 13 Time is 20.923 ms, Bandwidth is 5011.595 MB/s
Step 14 Time is 21.110 ms, Bandwidth is 4967.200 MB/s
Step 15 Time is 21.095 ms, Bandwidth is 4970.732 MB/s
Step 16 Time is 20.885 ms, Bandwidth is 5020.713 MB/s
Step 17 Time is 21.065 ms, Bandwidth is 4977.812 MB/s
Step 18 Time is 21.062 ms, Bandwidth is 4978.521 MB/s
Step 19 Time is 21.094 ms, Bandwidth is 4970.968 MB/s

#################### pagable memory #########################

Data Length is 104857600
========= Test Host To Device ========
Step  0 Time is 8.635 ms, Bandwidth is 12143.324 MB/s
Step  1 Time is 8.582 ms, Bandwidth is 12218.317 MB/s
Step  2 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step  3 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step  4 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step  5 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step  6 Time is 8.577 ms, Bandwidth is 12225.440 MB/s
Step  7 Time is 8.577 ms, Bandwidth is 12225.440 MB/s
Step  8 Time is 8.577 ms, Bandwidth is 12225.440 MB/s
Step  9 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 10 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 11 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 12 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 13 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 14 Time is 8.577 ms, Bandwidth is 12225.440 MB/s
Step 15 Time is 8.588 ms, Bandwidth is 12209.781 MB/s
Step 16 Time is 8.584 ms, Bandwidth is 12215.471 MB/s
Step 17 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 18 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
Step 19 Time is 8.578 ms, Bandwidth is 12224.015 MB/s
========= Test Device To Host ========
Step  0 Time is 7.978 ms, Bandwidth is 13143.344 MB/s
Step  1 Time is 7.962 ms, Bandwidth is 13169.756 MB/s
Step  2 Time is 7.961 ms, Bandwidth is 13171.411 MB/s
Step  3 Time is 7.957 ms, Bandwidth is 13178.032 MB/s
Step  4 Time is 7.950 ms, Bandwidth is 13189.635 MB/s
Step  5 Time is 7.957 ms, Bandwidth is 13178.032 MB/s
Step  6 Time is 7.955 ms, Bandwidth is 13181.345 MB/s
Step  7 Time is 7.957 ms, Bandwidth is 13178.032 MB/s
Step  8 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step  9 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 10 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 11 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 12 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 13 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 14 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 15 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 16 Time is 7.948 ms, Bandwidth is 13192.954 MB/s
Step 17 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 18 Time is 7.949 ms, Bandwidth is 13191.295 MB/s
Step 19 Time is 7.950 ms, Bandwidth is 13189.635 MB/s

*/

#include <stdio.h>
#include <sys/time.h>

// step 1. compile and run
// step 2. comment this line, compile and run
#define USE_PINNED_MEMORY

#define TIME(a,b) ((double)((b).tv_sec-(a).tv_sec) * 1000.0 + (double)((b).tv_usec-(a).tv_usec)/(double)1000.0)

#define cudaErrCheck(stat) { cudaErrCheck_((stat), __FILE__, __LINE__); }
void cudaErrCheck_(cudaError_t stat, const char *file, int line) {
   if (stat != cudaSuccess) {
      fprintf(stderr, "CUDA Error: %s %s %d\n", cudaGetErrorString(stat), file, line);
   }
}


__global__ void function()
{
    int tid = threadIdx.x;
    int gid = blockIdx.x;
    printf("Thread Id: %2d, Block Id: %2d Print\n", tid, gid);
}

int main(int argc, char* argv[])
{
    size_t length = 1024*1024*100;

    // use 1st arg in cli as length
    if (argc > 1) length = atoi(argv[1]);
    printf("Data Length is %lld\n", (long long)length);

    char *host = NULL;
    char *device = NULL;

    // malloc device memory
    cudaErrCheck(cudaMalloc((void**)&device, length));

    // malloc host memory
#if defined(USE_PINNED_MEMORY)
    cudaErrCheck(cudaMallocHost((void**)&host, length));
#else
    host = (char*)malloc(length);
#endif

    // init array in host memory
    for (int i = 0; i < length; i ++) host[i] = 100;

    printf("========= Test Host To Device ========\n");
    for (int s = 0; s < 20; s ++)  // repeat 20 times
    {
        struct timeval t0, t1;
        gettimeofday(&t0, NULL);
        cudaErrCheck(cudaMemcpy(device, host, length, cudaMemcpyHostToDevice));
        gettimeofday(&t1, NULL);
        printf("Step %2d Time is %.3lf ms, Bandwidth is %.3lf MB/s\n",
            s, TIME(t0, t1), length / TIME(t0, t1) / 1000.0);
    }

    printf("========= Test Device To Host ========\n");
    for (int s = 0; s < 20; s ++)  // repeat 20 times
    {
        struct timeval t0, t1;
        gettimeofday(&t0, NULL);
        cudaErrCheck(cudaMemcpy(host, device, length, cudaMemcpyDeviceToHost));
        gettimeofday(&t1, NULL);
        printf("Step %2d Time is %.3lf ms, Bandwidth is %.3lf MB/s\n",
            s, TIME(t0, t1), length / TIME(t0, t1) / 1000.0);
    }

    cudaErrCheck(cudaFree(device));
#if defined(USE_PINNED_MEMORY)
    cudaErrCheck(cudaFreeHost(host));
#else
    free(host);
#endif

    return 0;
}
