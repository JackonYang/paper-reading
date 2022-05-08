CUDA_PATH = /usr/local/cuda
CUDA_INC_DIR = ${CUDA_PATH}/include
CUDA_LIB_DIR = ${CUDA_PATH}/lib64
NVCC = $(CUDA_PATH)/bin/nvcc

test: test.cu
	$(NVCC) --std=c++11 -o test --ptxas-options=-v --generate-code arch=compute_75,code=sm_75 -L${CUDA_LIB_DIR} test.cu

run: test
	./test

clean:
	rm -f test


