---
title: Fast Algorithms for Convolutional Neural Networks
authors:
- Andrew Lavin
- Scott Gray
fieldsOfStudy:
- Computer Science
meta_key: 2016-fast-algorithms-for-convolutional-neural-networks
numCitedBy: 617
reading_status: TBD
ref_count: 31
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Fast-Algorithms-for-Convolutional-Neural-Networks-Lavin-Gray/d5eadd6f059d742d76441fd0a635a21694dd7392?sort=total-citations
venue: 2016 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2016
---

# Fast Algorithms for Convolutional Neural Networks

## Abstract

Deep convolutional neural networks take GPU-days of computation to train on large data sets. Pedestrian detection for self driving cars requires very low latency. Image recognition for mobile phones is constrained by limited processing resources. The success of convolutional neural networks in these situations is limited by how fast we can compute them. Conventional FFT based convolution is fast for large filters, but state of the art convolutional neural networks use small, 3 3 filters. We introduce a new class of fast algorithms for convolutional neural networks using Winograd's minimal filtering algorithms. The algorithms compute minimal complexity convolution over small tiles, which makes them fast with small filters and small batch sizes. We benchmark a GPU implementation of our algorithm with the VGG network and show state of the art throughput at batch sizes from 1 to 64.

## Paper References

1. Fast Training of Convolutional Networks through FFTs
2. Fast Convolutional Nets With fbfft - A GPU Performance Evaluation
3. Minimizing Computation in Convolutional Neural Networks
4. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
5. [Deep Learning with Limited Numerical Precision](2015-deep-learning-with-limited-numerical-precision.md)
6. maxDNN - An Efficient Convolution Kernel for Deep Learning with Maxwell GPUs
7. Low precision arithmetic for deep learning
8. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
9. Fast Algorithms for Signal Processing
10. One weird trick for parallelizing convolutional neural networks
11. Model Accuracy and Runtime Tradeoff in Distributed Deep Learning - A Systematic Study
12. Gaussian elimination is not optimal
13. Fast Algorithms for Signal Processing
14. On Multiplication of Polynomials Modulo a Polynomial
15. Powers of tensors and fast matrix multiplication
16. Arithmetic complexity of computations
17. The digital signal processing handbook
