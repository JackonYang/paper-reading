CUDA_PATH = /usr/local/cuda
CUDA_INC_DIR = ${CUDA_PATH}/include
CUDA_LIB_DIR = ${CUDA_PATH}/lib64
NVCC = $(CUDA_PATH)/bin/nvcc

test: test.cu
	$(NVCC) --std=c++11 -o test --generate-code arch=compute_61,code=sm_61 --generate-code arch=compute_75,code=sm_75 --generate-code arch=compute_70,code=sm_70 -L${CUDA_LIB_DIR} test.cu

run: test
	./test 100000 1000 


clean:
	rm -f test


