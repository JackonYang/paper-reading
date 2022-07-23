---
title: Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks
authors:
- Chen Zhang
- Peng Li
- Guangyu Sun
- Yijin Guan
- Bingjun Xiao
- J. Cong
fieldsOfStudy:
- Computer Science
meta_key: 2015-optimizing-fpga-based-accelerator-design-for-deep-convolutional-neural-networks
numCitedBy: 1482
reading_status: TBD
ref_count: 19
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Optimizing-FPGA-based-Accelerator-Design-for-Deep-Zhang-Li/7c91eb0f9bbae8e2d3d007db73b8422b61ed1d68?sort=total-citations
venue: FPGA
year: 2015
---

# Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks

## Abstract

Convolutional neural network (CNN) has been widely employed for image recognition because it can achieve high accuracy by emulating behavior of optic nerves in living creatures. Recently, rapid growth of modern applications based on deep learning algorithms has further improved research and implementations. Especially, various accelerators for deep CNN have been proposed based on FPGA platform because it has advantages of high performance, reconfigurability, and fast development round, etc. Although current FPGA accelerators have demonstrated better performance over generic processors, the accelerator design space has not been well exploited. One critical problem is that the computation throughput may not well match the memory bandwidth provided an FPGA platform. Consequently, existing approaches cannot achieve best performance due to under-utilization of either logic resource or memory bandwidth. At the same time, the increasing complexity and scalability of deep learning applications aggravate this problem. In order to overcome this problem, we propose an analytical design scheme using the roofline model. For any solution of a CNN design, we quantitatively analyze its computing throughput and required memory bandwidth using various optimization techniques, such as loop tiling and transformation. Then, with the help of rooine model, we can identify the solution with best performance and lowest FPGA resource requirement. As a case study, we implement a CNN accelerator on a VC707 FPGA board and compare it to previous approaches. Our implementation achieves a peak performance of 61.62 GFLOPS under 100MHz working frequency, which outperform previous approaches significantly.

## Paper References

1. Memory-centric accelerator design for Convolutional Neural Networks
2. CNP - An FPGA-based processor for Convolutional Networks
3. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
4. A Massively Parallel Coprocessor for Convolutional Neural Networks
5. Minimizing Computation in Convolutional Neural Networks
6. Polyhedral-based data reuse optimization for configurable computing
7. A dynamically configurable coprocessor for convolutional neural networks
8. A programmable parallel accelerator for learning and classification
9. Deep Convolutional Neural Networks for Image Classification - A Comprehensive Review
10. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
11. Improving high level synthesis optimization opportunity through polyhedral transformations
12. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
13. [3D Convolutional Neural Networks for Human Action Recognition](2013-3d-convolutional-neural-networks-for-human-action-recognition.md)
14. An empirical evaluation of deep architectures on problems with many factors of variation
15. Roofline - an insightful visual performance model for multicore architectures
