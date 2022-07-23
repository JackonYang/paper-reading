---
title: Eyeriss - A Spatial Architecture for Energy-Efficient Dataflow for Convolutional Neural Networks
authors:
- Yu-hsin Chen
- J. Emer
- V. Sze
fieldsOfStudy:
- Computer Science
meta_key: 2016-eyeriss-a-spatial-architecture-for-energy-efficient-dataflow-for-convolutional-neural-networks
numCitedBy: 838
reading_status: TBD
ref_count: 46
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Eyeriss:-A-Spatial-Architecture-for-Dataflow-for-Chen-Emer/5ec594e9f5ca4b629be28625cd78c882514ea3be?sort=total-citations
venue: 2016 ACM/IEEE 43rd Annual International Symposium on Computer Architecture (ISCA)
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Eyeriss:-A-Spatial-Architecture-for-Dataflow-for-Chen-Emer/5ec594e9f5ca4b629be28625cd78c882514ea3be?sort=total-citations)

# Eyeriss - A Spatial Architecture for Energy-Efficient Dataflow for Convolutional Neural Networks

## Abstract

Deep convolutional neural networks (CNNs) are widely used in modern AI systems for their superior accuracy but at the cost of high computational complexity. The complexity comes from the need to simultaneously process hundreds of filters and channels in the high-dimensional convolutions, which involve a significant amount of data movement. Although highly-parallel compute paradigms, such as SIMD/SIMT, effectively address the computation requirement to achieve high throughput, energy consumption still remains high as data movement can be more expensive than computation. Accordingly, finding a dataflow that supports parallel processing with minimal data movement cost is crucial to achieving energy-efficient CNN processing without compromising accuracy. In this paper, we present a novel dataflow, called row-stationary (RS), that minimizes data movement energy consumption on a spatial architecture. This is realized by exploiting local data reuse of filter weights and feature map pixels, i.e., activations, in the high-dimensional convolutions, and minimizing data movement of partial sum accumulations. Unlike dataflows used in existing designs, which only reduce certain types of data movement, the proposed RS dataflow can adapt to different CNN shape configurations and reduces all types of data movement through maximally utilizing the processing engine (PE) local storage, direct inter-PE communication and spatial parallelism. To evaluate the energy efficiency of the different dataflows, we propose an analysis framework that compares energy cost under the same hardware area and processing parallelism constraints. Experiments using the CNN configurations of AlexNet show that the proposed RS dataflow is more energy efficient than existing dataflows in both convolutional (1.4× to 2.5×) and fully-connected layers (at least 1.3× for batch size larger than 16). The RS dataflow has also been demonstrated on a fabricated chip, which verifies our energy analysis.

## Paper References

1. 14.5 Eyeriss - An energy-efficient reconfigurable accelerator for deep convolutional neural networks
2. ShiDianNao - Shifting vision processing closer to the sensor
3. Memory-centric accelerator design for Convolutional Neural Networks
4. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
5. A dynamically configurable coprocessor for convolutional neural networks
6. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
7. A 240 G-ops/s Mobile Coprocessor for Deep Neural Networks
8. [Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks](2015-optimizing-fpga-based-accelerator-design-for-deep-convolutional-neural-networks.md)
9. Origami - A Convolutional Network Accelerator
10. 4.6 A1.93TOPS/W scalable deep learning/inference processor with tetra-parallel MIMD architecture for big-data applications
11. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
12. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
13. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
14. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
15. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
16. A Massively Parallel Coprocessor for Convolutional Neural Networks
17. Minimizing Computation in Convolutional Neural Networks
18. [Learning Deep Features for Scene Recognition using Places Database](2014-learning-deep-features-for-scene-recognition-using-places-database.md)
19. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation.md)
20. Convolution engine - balancing efficiency & flexibility in specialized computing
21. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
22. Exploiting spatial architectures for edit distance algorithms
23. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
24. [Deep Learning with Limited Numerical Precision](2015-deep-learning-with-limited-numerical-precision.md)
25. Convolutional networks and applications in vision
26. [cuDNN - Efficient Primitives for Deep Learning](2014-cudnn-efficient-primitives-for-deep-learning.md)
27. Towards an embedded biologically-inspired machine vision processor
28. Understanding sources of inefficiency in general-purpose chips
29. Dynamically Specialized Datapaths for energy efficient computing
30. MATRIX - a reconfigurable computing architecture with configurable instruction distribution and deployable resources
31. Towards energy-proportional datacenter memory with mobile DRAM
32. ADRES - An Architecture with Tightly Coupled VLIW Processor and Coarse-Grained Reconfigurable Matrix
33. The WaveScalar architecture
34. Exploring the potential of heterogeneous Von Neumann/dataflow execution models
35. Power, Programmability, and Granularity - The Challenges of ExaScale Computing
36. Triggered instructions - a control paradigm for spatially-programmed architectures
37. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
38. Scaling to the end of silicon with EDGE architectures
39. 1.1 Computing's energy problem (and what we can do about it)
40. Handwritten digit recognition - applications of neural network chips and automatic learning
41. PipeRench - A virtualized programmable datapath in 0.18 micron technology
42. Garp - a MIPS processor with a reconfigurable coprocessor
43. Eyeriss - An Energy-Efficient Reconfigurable Accelerator for Deep Convolutional Neural Networks
44. [Deep Learning](2016-deep-learning.md)
