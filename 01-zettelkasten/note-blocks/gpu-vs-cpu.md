---
tags:
- computer-system
- gpu
---

# GPU Vs CPU

Created: 2022-05-09 12:37

## Notes

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h22o2tvb0jj217s0le0wf.jpg)

1. CPU 的设计目标是并行执行几十个线程，而 GPU 的目标是要并行执行几千个线程
2. GPU 对 Flow Control 的需求低，一个 Control 管一组 cores
3. GPU 的缓存大小远小于 CPU，带宽一般较高

因为 Cache 和 Control 的缺失，适合使用 GPU 的程序

- 计算密集：数值计算比例大于内存操作，因此内存访问的延时可以被计算掩盖，从而对Cache的需求相对CPU没那么大。
- 数据并行：大任务可以拆解为执行相同指令的小任务，因此对复杂流程控制的需求较低。


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h221rzqqbdj21460lydi5.jpg)

## References

1. https://cvw.cac.cornell.edu/GPUarch/gpu_characteristics
2. https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#scalable-programming-model
