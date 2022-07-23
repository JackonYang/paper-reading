---
title: From high-level deep neural models to FPGAs
authors:
- Hardik Sharma
- Jongse Park
- Divya Mahajan
- Emmanuel Amaro
- J. Kim
- Chenkai Shao
- Asit K. Mishra
- H. Esmaeilzadeh
fieldsOfStudy:
- Computer Science
meta_key: 2016-from-high-level-deep-neural-models-to-fpgas
numCitedBy: 341
reading_status: TBD
ref_count: 53
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/From-high-level-deep-neural-models-to-FPGAs-Sharma-Park/924d6c44fda59dc9ac1f25d7cc12d669c5f9e557?sort=total-citations
venue: 2016 49th Annual IEEE/ACM International Symposium on Microarchitecture (MICRO)
year: 2016
---

# From high-level deep neural models to FPGAs

## Abstract

Deep Neural Networks (DNNs) are compute-intensive learning models with growing applicability in a wide range of domains. FPGAs are an attractive choice for DNNs since they offer a programmable substrate for acceleration and are becoming available across different market segments. However, obtaining both performance and energy efficiency with FPGAs is a laborious task even for expert hardware designers. Furthermore, the large memory footprint of DNNs, coupled with the FPGAs' limited on-chip storage makes DNN acceleration using FPGAs more challenging. This work tackles these challenges by devising DnnWeaver, a framework that automatically generates a synthesizable accelerator for a given (DNN, FPGA) pair from a high-level specification in Caffe [1]. To achieve large benefits while preserving automation, DNNWEAVER generates accelerators using hand-optimized design templates. First, DnnWeaver translates a given high-level DNN specification to its novel ISA that represents a macro dataflow graph of the DNN. The DnnWeaver compiler is equipped with our optimization algorithm that tiles, schedules, and batches DNN operations to maximize data reuse and best utilize target FPGA's memory and other resources. The final result is a custom synthesizable accelerator that best matches the needs of the DNN while providing high performance and efficiency gains for the target FPGA. We use DnnWeaver to generate accelerators for a set of eight different DNN models and three different FPGAs, Xilinx Zynq, Altera Stratix V, and Altera Arria 10. We use hardware measurements to compare the generated accelerators to both multicore CPUs (ARM Cortex A15 and Xeon E3) and many-core GPUs (Tegra K1, GTX 650Ti, and Tesla K40). In comparison, the generated accelerators deliver superior performance and efficiency without requiring the programmers to participate in the arduous task of hardware design.

## Paper References

1. DeepBurning - Automatic generation of FPGA-based learning accelerators for the Neural Network family
2. Throughput-Optimized OpenCL-based FPGA Accelerator for Large-Scale Convolutional Neural Networks
3. [Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks](2015-optimizing-fpga-based-accelerator-design-for-deep-convolutional-neural-networks.md)
4. Minerva - Enabling Low-Power, Highly-Accurate Deep Neural Network Accelerators
5. Going Deeper with Embedded FPGA Platform for Convolutional Neural Network
6. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
7. C-Brain - A deep learning accelerator that tames the diversity of CNNs through adaptive data-level parallelization
8. [EIE - Efficient Inference Engine on Compressed Deep Neural Network](2016-eie-efficient-inference-engine-on-compressed-deep-neural-network.md)
9. TABLA - A unified template-based framework for accelerating statistical machine learning
10. Cambricon - An Instruction Set Architecture for Neural Networks
11. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
12. A 240 G-ops/s Mobile Coprocessor for Deep Neural Networks
13. ShiDianNao - Shifting vision processing closer to the sensor
14. Deep learning with COTS HPC systems
15. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
16. Cnvlutin - Ineffectual-Neuron-Free Deep Neural Network Computing
17. A ultra-low-energy convolution engine for fast brain-inspired vision in multicore clusters
18. [Eyeriss - A Spatial Architecture for Energy-Efficient Dataflow for Convolutional Neural Networks](2016-eyeriss-a-spatial-architecture-for-energy-efficient-dataflow-for-convolutional-neural-networks.md)
19. High Level Synthesis with a Dataflow Architectural Template
20. 14.6 A 1.42TOPS/W deep convolutional neural network recognition processor for intelligent IoE systems
21. Bundled execution of recurring traces for energy-efficient general purpose processing
22. A dynamically configurable coprocessor for convolutional neural networks
23. PuDianNao - A Polyvalent Machine Learning Accelerator
24. Dynamically Specialized Datapaths for energy efficient computing
25. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
26. Convolution engine - balancing efficiency & flexibility in specialized computing
27. NeuFlow - A runtime reconfigurable dataflow processor for vision
28. Sirius - An Open End-to-End Voice and Vision Personal Assistant and Its Implications for Future Warehouse Scale Computers
29. Hardware accelerated convolutional neural networks for synthetic vision systems
30. Conservation cores - reducing the energy of mature computations
31. [Network In Network](2014-network-in-network.md)
32. DjiNN and Tonic - DNN as a service and its implications for future warehouse scale computers
33. [Return of the Devil in the Details - Delving Deep into Convolutional Nets](2014-return-of-the-devil-in-the-details-delving-deep-into-convolutional-nets.md)
34. [Speech recognition with deep recurrent neural networks](2013-speech-recognition-with-deep-recurrent-neural-networks.md)
35. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
36. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets.md)
37. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
38. A Reconfigurable Fabric for Accelerating Large-Scale Datacenter Services
39. [GradientBased Learning Applied to Document Recognition](2001-gradientbased-learning-applied-to-document-recognition.md)
40. Deep Image - Scaling up Image Recognition
41. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
42. Dark Silicon and the End of Multicore Scaling
43. One weird trick for parallelizing convolutional neural networks
44. Backpropagation Applied to Handwritten Zip Code Recognition
45. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
46. Eyeriss - An Energy-Efficient Reconfigurable Accelerator for Deep Convolutional Neural Networks
47. Toward Dark Silicon in Servers
