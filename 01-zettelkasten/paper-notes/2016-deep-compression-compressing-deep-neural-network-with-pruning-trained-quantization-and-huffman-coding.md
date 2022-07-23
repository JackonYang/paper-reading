---
title: Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding
authors:
- Song Han
- Huizi Mao
- W. Dally
fieldsOfStudy:
- Computer Science
meta_key: 2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding
numCitedBy: 5732
reading_status: TBD
ref_count: 41
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Deep-Compression:-Compressing-Deep-Neural-Network-Han-Mao/642d0f49b7826adcf986616f4af77e736229990f?sort=total-citations
venue: ICLR
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Deep-Compression:-Compressing-Deep-Neural-Network-Han-Mao/642d0f49b7826adcf986616f4af77e736229990f?sort=total-citations)

# Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding

## Abstract

Neural networks are both computationally intensive and memory intensive, making them difficult to deploy on embedded systems with limited hardware resources. To address this limitation, we introduce "deep compression", a three stage pipeline: pruning, trained quantization and Huffman coding, that work together to reduce the storage requirement of neural networks by 35x to 49x without affecting their accuracy. Our method first prunes the network by learning only the important connections. Next, we quantize the weights to enforce weight sharing, finally, we apply Huffman coding. After the first two steps we retrain the network to fine tune the remaining connections and the quantized centroids. Pruning, reduces the number of connections by 9x to 13x; Quantization then reduces the number of bits that represent each connection from 32 to 5. On the ImageNet dataset, our method reduced the storage required by AlexNet by 35x, from 240MB to 6.9MB, without loss of accuracy. Our method reduced the size of VGG-16 by 49x from 552MB to 11.3MB, again with no loss of accuracy. This allows fitting the model into on-chip SRAM cache rather than off-chip DRAM memory. Our compression method also facilitates the use of complex neural networks in mobile applications where application size and download bandwidth are constrained. Benchmarked on CPU, GPU and mobile GPU, compressed network has 3x to 4x layerwise speedup and 3x to 7x better energy efficiency.

## Paper References

1. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
2. Compressing Deep Convolutional Networks using Vector Quantization
3. [EIE - Efficient Inference Engine on Compressed Deep Neural Network](2016-eie-efficient-inference-engine-on-compressed-deep-neural-network.md)
4. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
5. Fixed point optimization of deep convolutional neural networks for object recognition
6. Memory Bounded Deep Convolutional Networks
7. Compressing Neural Networks with the Hashing Trick
8. Improving the speed of neural networks on CPUs
9. Deep Fried Convnets
10. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
11. [Network In Network](2014-network-in-network.md)
12. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
13. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
14. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
15. Fixed-point feedforward deep neural network design using weights +1, 0, and −1
16. [Exploiting Linear Structure Within Convolutional Networks for Efficient Evaluation](2014-exploiting-linear-structure-within-convolutional-networks-for-efficient-evaluation.md)
17. Provable Bounds for Learning Some Deep Representations
18. HARDWARE-FRIENDLY CONVOLUTIONAL NEURAL NETWORK WITH EVEN-NUMBER FILTER SIZE
19. Second Order Derivatives for Network Pruning - Optimal Brain Surgeon
20. [Predicting Parameters in Deep Learning](2013-predicting-parameters-in-deep-learning.md)
21. Phoneme probability estimation with dynamic sparsely connected artificial neural networks
22. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
23. [Fast R-CNN](2015-fast-r-cnn.md)
24. Cross-Domain Synthesis of Medical Images Using Efficient Location-Sensitive Deep Network
25. Comparing Biases for Minimal Network Construction with Back-Propagation
26. [Under Review as a Conference Paper at Iclr 2017 Delving into Transferable Adversarial Ex- Amples and Black-box Attacks](2016-under-review-as-a-conference-paper-at-iclr-2017-delving-into-transferable-adversarial-ex-amples-and-black-box-attacks.md)
27. Optimal Brain Damage
28. [Published as a conference paper at ICLR 2018 S IMULATING A CTION D YNAMICS WITH N EURAL P ROCESS N ETWORKS](2018-published-as-a-conference-paper-at-iclr-2018-s-imulating-a-ction-d-ynamics-with-n-eural-p-rocess-n-etworks.md)
29. Pruning
30. On the Construction of Huffman Trees
31. GPU-Based Deep Learning Inference - A Performance and Power Analysis
