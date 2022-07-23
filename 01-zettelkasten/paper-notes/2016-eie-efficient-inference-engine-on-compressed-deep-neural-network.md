---
title: EIE - Efficient Inference Engine on Compressed Deep Neural Network
authors:
- Song Han
- Xingyu Liu
- Huizi Mao
- Jing Pu
- A. Pedram
- M. Horowitz
- W. Dally
fieldsOfStudy:
- Computer Science
meta_key: 2016-eie-efficient-inference-engine-on-compressed-deep-neural-network
numCitedBy: 1816
reading_status: TBD
ref_count: 52
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/EIE:-Efficient-Inference-Engine-on-Compressed-Deep-Han-Liu/2e2b189f668cf2c06ebc44dc9b166648256cf457?sort=total-citations
venue: 2016 ACM/IEEE 43rd Annual International Symposium on Computer Architecture (ISCA)
year: 2016
---

# EIE - Efficient Inference Engine on Compressed Deep Neural Network

## Abstract

State-of-the-art deep neural networks (DNNs) have hundreds of millions of connections and are both computationally and memory intensive, making them difficult to deploy on embedded systems with limited hardware resources and power budgets. While custom hardware helps the computation, fetching weights from DRAM is two orders of magnitude more expensive than ALU operations, and dominates the required power. Previously proposed 'Deep Compression' makes it possible to fit large DNNs (AlexNet and VGGNet) fully in on-chip SRAM. This compression is achieved by pruning the redundant connections and having multiple connections share the same weight. We propose an energy efficient inference engine (EIE) that performs inference on this compressed network model and accelerates the resulting sparse matrix-vector multiplication with weight sharing. Going from DRAM to SRAM gives EIE 120x energy saving, Exploiting sparsity saves 10x, Weight sharing gives 8x, Skipping zero activations from ReLU saves another 3x. Evaluated on nine DNN benchmarks, EIE is 189x and 13x faster when compared to CPU and GPU implementations of the same DNN without compression. EIE has a processing power of 102 GOPS working directly on a compressed network, corresponding to 3 TOPS on an uncompressed network, and processes FC layers of AlexNet at 1.88x104 frames/sec with a power dissipation of only 600mW. It is 24,000x and 3,400x more energy efficient than a CPU and GPU respectively. Compared with DaDianNao, EIE has 2.9x, 19x and 3x better throughput, energy efficiency and area efficiency.

## Paper References

1. Minerva - Enabling Low-Power, Highly-Accurate Deep Neural Network Accelerators
2. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
3. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
4. ISAAC - A Convolutional Neural Network Accelerator with In-Situ Analog Arithmetic in Crossbars
5. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
6. ShiDianNao - Shifting vision processing closer to the sensor
7. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
8. Convolutional networks for fast, energy-efficient neuromorphic computing
9. Going Deeper with Embedded FPGA Platform for Convolutional Neural Network
10. Deep learning with COTS HPC systems
11. Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks
12. A High Memory Bandwidth FPGA Accelerator for Sparse Matrix-Vector Multiplication
13. [Speeding up Convolutional Neural Networks with Low Rank Expansions](2014-speeding-up-convolutional-neural-networks-with-low-rank-expansions.md)
14. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
15. A scalable sparse matrix-vector multiplication kernel for energy-efficient sparse-blas on FPGAs
16. CNP - An FPGA-based processor for Convolutional Networks
17. Sparse Matrix-Vector multiplication on FPGAs
18. [Fast Algorithms for Convolutional Neural Networks](2016-fast-algorithms-for-convolutional-neural-networks.md)
19. Automatic performance tuning of sparse matrix kernels
20. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
21. [Exploiting Linear Structure Within Convolutional Networks for Efficient Evaluation](2014-exploiting-linear-structure-within-convolutional-networks-for-efficient-evaluation.md)
22. Implementing sparse matrix-vector multiplication on throughput-oriented processors
23. Ecient Sparse Matrix-Vector Multiplication on CUDA
24. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
25. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
26. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
27. Efficient and accurate approximations of nonlinear convolutional networks
28. CACTI 6.0 - A Tool to Model Large Caches
29. Can Deep Learning Revolutionize Mobile Sensing?
30. [Long Short-Term Memory](1997-long-short-term-memory.md)
31. Automatically Tuning Sparse Matrix-Vector Multiplication for GPU Architectures
32. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
33. Second Order Derivatives for Network Pruning - Optimal Brain Surgeon
34. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model.md)
35. [Fast R-CNN](2015-fast-r-cnn.md)
36. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
37. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
38. [Deep Visual-Semantic Alignments for Generating Image Descriptions](2017-deep-visual-semantic-alignments-for-generating-image-descriptions.md)
39. Comparing Biases for Minimal Network Construction with Back-Propagation
40. [DeepFace - Closing the Gap to Human-Level Performance in Face Verification](2014-deepface-closing-the-gap-to-human-level-performance-in-face-verification.md)
41. [Framewise phoneme classification with bidirectional LSTM and other neural network architectures](2005-framewise-phoneme-classification-with-bidirectional-lstm-and-other-neural-network-architectures.md)
42. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
43. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
44. Optimal Brain Damage
45. LAPACK Working Note 50 - Distributed Sparse Data Structures for Linear Algebra Operations
46. Matrix Computations
47. GPU-Based Deep Learning Inference - A Performance and Power Analysis
