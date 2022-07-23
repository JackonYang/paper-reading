---
title: Searching for MobileNetV3
authors:
- Andrew G. Howard
- M. Sandler
- Grace Chu
- Liang-Chieh Chen
- Bo Chen
- Mingxing Tan
- Weijun Wang
- Yukun Zhu
- Ruoming Pang
- Vijay Vasudevan
- Quoc V. Le
- Hartwig Adam
fieldsOfStudy:
- Computer Science
meta_key: 2019-searching-for-mobilenetv3
numCitedBy: 1614
reading_status: TBD
ref_count: 63
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Searching-for-MobileNetV3-Howard-Sandler/83d074cc5051ade0c08d66180e4a04d2c112fa97?sort=total-citations
venue: 2019 IEEE/CVF International Conference on Computer Vision (ICCV)
year: 2019
---

# Searching for MobileNetV3

## Abstract

We present the next generation of MobileNets based on a combination of complementary search techniques as well as a novel architecture design. MobileNetV3 is tuned to mobile phone CPUs through a combination of hardware-aware network architecture search (NAS) complemented by the NetAdapt algorithm and then subsequently improved through novel architecture advances. This paper starts the exploration of how automated search algorithms and network design can work together to harness complementary approaches improving the overall state of the art. Through this process we create two new MobileNet models for release: MobileNetV3-Large and MobileNetV3-Small which are targeted for high and low resource use cases. These models are then adapted and applied to the tasks of object detection and semantic segmentation. For the task of semantic segmentation (or any dense pixel prediction), we propose a new efficient segmentation decoder Lite Reduced Atrous Spatial Pyramid Pooling (LR-ASPP). We achieve new state of the art results for mobile classification, detection and segmentation. MobileNetV3-Large is 3.2% more accurate on ImageNet classification while reducing latency by 20% compared to MobileNetV2. MobileNetV3-Small is 6.6% more accurate compared to a MobileNetV2 model with comparable latency. MobileNetV3-Large detection is over 25% faster at roughly the same accuracy as MobileNetV2 on COCO detection. MobileNetV3-Large LR-ASPP is 34% faster than MobileNetV2 R-ASPP at similar accuracy for Cityscapes segmentation.

## Paper References

1. [MnasNet - Platform-Aware Neural Architecture Search for Mobile](2019-mnasnet-platform-aware-neural-architecture-search-for-mobile.md)
2. [MobileNetV2 - Inverted Residuals and Linear Bottlenecks](2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks.md)
3. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
4. [FBNet - Hardware-Aware Efficient ConvNet Design via Differentiable Neural Architecture Search](2019-fbnet-hardware-aware-efficient-convnet-design-via-differentiable-neural-architecture-search.md)
5. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
6. [NetAdapt - Platform-Aware Neural Network Adaptation for Mobile Applications](2018-netadapt-platform-aware-neural-network-adaptation-for-mobile-applications.md)
7. ESPNet - Efficient Spatial Pyramid of Dilated Convolutions for Semantic Segmentation
8. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
9. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
10. ESPNetv2 - A Light-Weight, Power Efficient, and General Purpose Convolutional Neural Network
11. ParseNet - Looking Wider to See Better
12. Searching for Activation Functions
13. Quantized Convolutional Neural Networks for Mobile Devices
14. Encoder-Decoder with Atrous Separable Convolution for Semantic Image Segmentation
15. [Efficient Neural Architecture Search via Parameter Sharing](2018-efficient-neural-architecture-search-via-parameter-sharing.md)
16. [Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs](2015-semantic-image-segmentation-with-deep-convolutional-nets-and-fully-connected-crfs.md)
17. ChamNet - Towards Efficient Network Design Through Platform-Aware Model Adaptation
18. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation.md)
19. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context.md)
20. Rethinking Atrous Convolution for Semantic Image Segmentation
21. [DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs](2018-deeplab-semantic-image-segmentation-with-deep-convolutional-nets-atrous-convolution-and-fully-connected-crfs.md)
22. [Progressive Neural Architecture Search](2018-progressive-neural-architecture-search.md)
23. [Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference](2018-quantization-and-training-of-neural-networks-for-efficient-integer-arithmetic-only-inference.md)
24. ADC - Automated Deep Compression and Acceleration with Reinforcement Learning
25. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
26. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning.md)
27. Concentrated-Comprehensive Convolutions for lightweight semantic segmentation
28. [The Cityscapes Dataset for Semantic Urban Scene Understanding](2016-the-cityscapes-dataset-for-semantic-urban-scene-understanding.md)
29. Semantic Segmentation of Satellite Images using a Modified CNN with Hard-Swish Activation Function
30. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
31. [ProxylessNAS - Direct Neural Architecture Search on Target Task and Hardware](2019-proxylessnas-direct-neural-architecture-search-on-target-task-and-hardware.md)
32. Incremental Network Quantization - Towards Lossless CNNs with Low-Precision Weights
33. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
34. [Distilling the Knowledge in a Neural Network](2015-distilling-the-knowledge-in-a-neural-network.md)
35. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
36. [Squeeze-and-Excitation Networks](2020-squeeze-and-excitation-networks.md)
37. CondenseNet - An Efficient DenseNet Using Learned Group Convolutions
38. [Quantizing deep convolutional networks for efficient inference - A whitepaper](2018-quantizing-deep-convolutional-networks-for-efficient-inference-a-whitepaper.md)
39. [The Pascal Visual Object Classes Challenge - A Retrospective](2014-the-pascal-visual-object-classes-challenge-a-retrospective.md)
40. Pyramid Scene Parsing Network
41. [Designing Neural Network Architectures using Reinforcement Learning](2017-designing-neural-network-architectures-using-reinforcement-learning.md)
42. Modeling local and global deformations in Deep Learning - Epitomic convolution, Multiple Instance Learning, and sliding window detection
43. [DARTS - Differentiable Architecture Search](2019-darts-differentiable-architecture-search.md)
44. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
45. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
46. Shift - A Zero FLOP, Zero Parameter Alternative to Spatial Convolutions
47. [In-datacenter performance analysis of a tensor processing unit](2017-in-datacenter-performance-analysis-of-a-tensor-processing-unit.md)
48. Model compression
49. Sigmoid-Weighted Linear Units for Neural Network Function Approximation in Reinforcement Learning
50. Expectation Backpropagation - Parameter-Free Training of Multilayer Neural Networks with Continuous or Discrete Weights
51. [Bridging Nonlinearities and Stochastic Regularizers with Gaussian Error Linear Units](2016-bridging-nonlinearities-and-stochastic-regularizers-with-gaussian-error-linear-units.md)
52. A real-time algorithm for signal analysis with the help of the wavelet transform
53. Curves and Surfaces in Computer Vision and Graphics
54. [Inverted Residuals and Linear Bottlenecks - Mobile Networks for Classification, Detection and Segmentation](2018-inverted-residuals-and-linear-bottlenecks-mobile-networks-for-classification-detection-and-segmentation.md)
