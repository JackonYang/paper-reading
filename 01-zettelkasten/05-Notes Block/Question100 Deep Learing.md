# Question100 Deep Learing

Created: 2022-05-19 19:12

## 模型加速

### Convoluton2d 的一般实现方式有哪些？

1. naive 的实现，一般来说内存访问效率较低
2. im2col 实现，具体参见 caffe 的实现方式，优点：实现简单；缺点：增加了不必要的内存占用和内存访问
3. winograd 算法，优点：减少了计算量，以conv 3(1)为例，可以减少5/9的乘加计算，缺点：可能会损失部分精度，以及对于 kernel_size 较大的情况效率并不高
4. FFT，优点：减少了计算量，缺点：在 kernel_size 很小的情况下效率并不高

### Caffe 中实现的 im2col 实现卷积，有什么优缺点？

优点：实现简单，将卷积转换成 gemm 操作，可以利用现有的高效 BLAS 库

缺点：占用了额外的 memory，以及增加了额外的memory

im2col 的一个示例程序具体参见：[http://blog.csdn.net/mrhiuser/article/details/52672824](http://blog.csdn.net/mrhiuser/article/details/52672824)

### Winograd 算法的基本原理是什么？有什么优缺点？

具体参见论文[https://arxiv.org/abs/1509.09308](https://arxiv.org/abs/1509.09308)

### Winograd 一般被用于处理 Conv 3(1)，能处理其他参数的卷积层吗？为什么能或者不能，为什么不这么做？

可以用于其他层的处理，包括 conv 5(1) 或者 conv 3(2)，但是效率不高

### 为什么在计算卷积过程中，没有大规模的运用 FFT？

因为

1. FFT 只有在较大的kernel_size 的情况下会有较好的加速效果（较大一般是指大于10）
2. 以及，FFT 会牺牲精度；

### Caffe 中，blob、layer、net、solver 分别对应什么？

1. blob：对应的是数据流
2. layer：网络的层
3. net：网络
4. solver：网络的超参数

### BLAS、Linpack、Lapack 的区别和关系是什么？在深度学习框架中，BLAS 的作用是什么？

基本概念：

- BLAS: Basic Linear Algebra Subprograms (BLAS) is a specification that prescribes a set of low-level routines for performing common linear algebra operations such as vector addition, scalar multiplication, dot products, linear combinations, and matrix multiplication.
- Linpack ： LINPACK is a software library for performing numerical linear algebra on digital computers.
- Lapack：LAPACK (Linear Algebra Package) is a standard software library for numerical linear algebra.

简单说明： BLAS 只解决基本的矩阵-向量的加减乘除的高效问题；Linpack 和 Lapack 在 BLAS 的基础上解决数学问题，比如矩阵的 Det 值等；

BLAS 的基本操作包括：

- 矩阵操作(比如矩阵乘法gemm)
- 矩阵向量操作（比如矩阵向量乘法gemv）
- 向量向量操作（比如gevv）

深度学习中用到了大量的矩阵运算，一般会用到 BLAS 库，比如 OpenBLAS 或者 MKL 等。

参考链接：

- [https://en.wikipedia.org/wiki/Basic_Linear_Algebra_Subprograms](https://en.wikipedia.org/wiki/Basic_Linear_Algebra_Subprograms)
- [https://en.wikipedia.org/wiki/LINPACK](https://en.wikipedia.org/wiki/LINPACK)
- [https://en.wikipedia.org/wiki/LAPACK](https://en.wikipedia.org/wiki/LAPACK)

## References

1.
