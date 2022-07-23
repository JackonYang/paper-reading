---
title: In-datacenter performance analysis of a tensor processing unit
authors:
- N. Jouppi
- C. Young
- Nishant Patil
- David A. Patterson
- Gaurav Agrawal
- R. Bajwa
- Sarah Bates
- Suresh Bhatia
- N. Boden
- Al Borchers
- Rick Boyle
- Pierre-luc Cantin
- Clifford Chao
- Chris Clark
- Jeremy Coriell
- Mike Daley
- Matt Dau
- J. Dean
- Ben Gelb
- T. Ghaemmaghami
- R. Gottipati
- William Gulland
- R. Hagmann
- C. R. Ho
- Doug Hogberg
- John Hu
- R. Hundt
- D. Hurt
- Julian Ibarz
- A. Jaffey
- Alek Jaworski
- Alexander Kaplan
- Harshit Khaitan
- Daniel Killebrew
- A. Koch
- Naveen Kumar
- Steve Lacy
- J. Laudon
- James Law
- Diemthu Le
- Chris Leary
- Zhuyuan Liu
- Kyle A. Lucke
- Alan Lundin
- G. MacKean
- A. Maggiore
- Maire Mahony
- K. Miller
- R. Nagarajan
- Ravi Narayanaswami
- Ray Ni
- K. Nix
- Thomas Norrie
- Mark Omernick
- Narayana Penukonda
- Andy Phelps
- Jonathan Ross
- Matt Ross
- Amir Salek
- E. Samadiani
- C. Severn
- G. Sizikov
- Matthew Snelham
- Jed Souter
- D. Steinberg
- Andy Swing
- Mercedes Tan
- G. Thorson
- Bo Tian
- H. Toma
- Erick Tuttle
- Vijay Vasudevan
- Richard Walter
- Walter Wang
- Eric Wilcox
- D. Yoon
fieldsOfStudy:
- Computer Science
meta_key: 2017-in-datacenter-performance-analysis-of-a-tensor-processing-unit
numCitedBy: 2951
reading_status: TBD
ref_count: 119
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/In-datacenter-performance-analysis-of-a-tensor-unit-Jouppi-Young/2dfeb5a90abc49ab2a80a492a01a4e2c8e92ec22?sort=total-citations
venue: 2017 ACM/IEEE 44th Annual International Symposium on Computer Architecture (ISCA)
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/In-datacenter-performance-analysis-of-a-tensor-unit-Jouppi-Young/2dfeb5a90abc49ab2a80a492a01a4e2c8e92ec22?sort=total-citations)

# In-datacenter performance analysis of a tensor processing unit

## Abstract

Many architects believe that major improvements in cost-energy-performance must now come from domain-specific hardware. This paper evaluates a custom ASIC-called a Tensor Processing Unit (TPU)-deployed in datacenters since 2015 that accelerates the inference phase of neural networks (NN). The heart of the TPU is a 65,536 8-bit MAC matrix multiply unit that offers a peak throughput of 92 TeraOps/second (TOPS) and a large (28 MiB) software-managed on-chip memory. The TPU's deterministic execution model is a better match to the 99th-percentile response-time requirement of our NN applications than are the time-varying optimizations of CPUs and GPUs that help average throughput more than guaranteed latency. The lack of such features helps explain why, despite having myriad MACs and a big memory, the TPU is relatively small and low power. We compare the TPU to a server-class Intel Haswell CPU and an Nvidia K80 GPU, which are contemporaries deployed in the same datacenters. Our workload, written in the high-level TensorFlow framework, uses production NN applications (MLPs, CNNs, and LSTMs) that represent 95% of our datacenters' NN inference demand. Despite low utilization for some applications, the TPU is on average about 15X–30X faster than its contemporary GPU or CPU, with TOPS/Watt about 30X–80X higher. Moreover, using the GPU's GDDR5 memory in the TPU would triple achieved TOPS and raise TOPS/Watt to nearly 70X the GPU and 200X the CPU.

## Paper References

1. In-Datacenter Performance Analysis of a Tensor Processing UnitTM
2. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
3. [EIE - Efficient Inference Engine on Compressed Deep Neural Network](2016-eie-efficient-inference-engine-on-compressed-deep-neural-network.md)
4. Fathom - reference workloads for modern deep learning methods
5. Minerva - Enabling Low-Power, Highly-Accurate Deep Neural Network Accelerators
6. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
7. Memory-centric accelerator design for Convolutional Neural Networks
8. Accelerating Deep Convolutional Neural Networks Using Specialized Hardware
9. Cnvlutin - Ineffectual-Neuron-Free Deep Neural Network Computing
10. Origami - A Convolutional Network Accelerator
11. PuDianNao - A Polyvalent Machine Learning Accelerator
12. Convolution engine - balancing efficiency & flexibility in specialized computing
13. PRIME - A Novel Processing-in-Memory Architecture for Neural Network Computation in ReRAM-Based Main Memory
14. Technical Perspective - If I could only design one circuit …
15. ISAAC - A Convolutional Neural Network Accelerator with In-Situ Analog Arithmetic in Crossbars
16. If I could only design one circuit ... - technical perspective
17. Cambricon - An Instruction Set Architecture for Neural Networks
18. Eyeriss - A Spatial Architecture for Energy-Efficient Dataflow for Convolutional Neural Networks
19. ShiDianNao - Shifting vision processing closer to the sensor
20. A cloud-scale acceleration architecture
21. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
22. Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks
23. Why systolic architectures?
24. CNP - An FPGA-based processor for Convolutional Networks
25. A Reconfigurable Fabric for Accelerating Large-Scale Datacenter Services
26. NeuFlow - A runtime reconfigurable dataflow processor for vision
27. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
28. A dynamically configurable coprocessor for convolutional neural networks
29. [Deep Learning with Limited Numerical Precision](2015-deep-learning-with-limited-numerical-precision.md)
30. Neurocube - A Programmable Digital Neuromorphic Architecture with High-Density 3D Memory
31. Design of a 1st Generation Neurocomputer
32. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
33. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
34. A VLSI architecture for high-performance, low-cost, on-chip learning
35. Special-purpose digital hardware for neural networks - An architectural survey
36. Large-Scale Deep Learning For Building Intelligent Computer Systems
37. The case for the reduced instruction set computer
38. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation.md)
39. RedEye - Analog ConvNet Image Sensor Architecture for Continuous Mobile Vision
40. Decoupled access/execute computer architectures
41. Neural network processor
42. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
43. Toward accelerating deep learning at scale using specialized hardware in the datacenter
44. Computer Architecture - A Quantitative Approach
45. Latency lags bandwith
46. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
47. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
48. The Case for Energy-Proportional Computing
49. Vector computation unit in a neural network processor
50. The tail at scale
51. Roofline - an insightful visual performance model for multicore architectures
52. Identifying Shades of Green - The SPECpower Benchmarks
53. Computer Architecture - A Quantitative Approach, 5th Edition
54. Programmable Neurocomputing
55. Batch processing in a neural network processor
