# Makefile for CUDA project with multi-architecture support
# Usage examples:
#   SMS="80 89" make    # Build for specific architectures
#   DEBUG=1 make        # Debug build
#   make clean && make  # Clean and rebuild

# CUDA toolkit configuration
CUDA_PATH ?= /usr/local/cuda
NVCC      = $(CUDA_PATH)/bin/nvcc

# Supported GPU architectures (compute capability versions)
# -------------------------------------------------------
# https://deep-learning.feishu.cn/wiki/RpYiwYWP3i9oC9kNSVmcYifBnhf
# 70: Tesla V100 (Volta)
# 80: A100 (Ampere)
# 86: RTX 3080/3090 (Ampere GA102)
# 89: RTX 4090, L4 (Ada Lovelace)
# 90, 90a: H100, H200 (Hopper)
# 100, 100a: B200, GB200
# 120: 5090

SMS ?= 80 89 90a

# Build configuration
DEBUG     ?= 0
TARGET    = test

# NVCC compilation flags
NVCC_FLAGS  = --std=c++11 -O3
NVCC_FLAGS += -Xcompiler -Wall
NVCC_FLAGS += --ptxas-options=-v
NVCC_FLAGS += --expt-relaxed-constexpr  # For better constexpr handling

# Generate architecture flags (compute_XX,sm_XX)
$(foreach sm,$(SMS),$(eval NVCC_FLAGS += -gencode arch=compute_$(sm),code=sm_$(sm)))

# Debug build configuration
ifeq ($(DEBUG), 1)
    NVCC_FLAGS += -G -g  # Enable GPU debug symbols
else
    NVCC_FLAGS += -DNDEBUG  # Disable assertions
endif

# Linking configuration
LD_FLAGS = -lcudart

# Default target builds and runs
all: $(TARGET)
	@echo "Build successful. Executing..."
	@./$(TARGET)

# Main build rule with dependency tracking
$(TARGET): $(TARGET).cu
	$(NVCC) $(NVCC_FLAGS) -o $@ $< $(LD_FLAGS)
	@echo "Built target with support for architectures: $(SMS)"

# Run target (explicit execution)
run: $(TARGET)
	@echo "Running $(TARGET)..."
	@./$(TARGET)

# Clean build artifacts
clean:
	rm -f $(TARGET)
	@echo "Clean complete"

# Dependency generation (requires initial build)
DEP_FILE = $(TARGET).d
-include $(DEP_FILE)

.PHONY: all run clean
