---
title: Runtime Neural Pruning
authors:
- Ji Lin
- Yongming Rao
- Jiwen Lu
- Jie Zhou
fieldsOfStudy:
- Computer Science
meta_key: 2017-runtime-neural-pruning
numCitedBy: 299
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Runtime-Neural-Pruning-Lin-Rao/88cd4209db62a34d9cba0b9cbe9d45d1e57d21e5?sort=total-citations
venue: NIPS
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Runtime-Neural-Pruning-Lin-Rao/88cd4209db62a34d9cba0b9cbe9d45d1e57d21e5?sort=total-citations)

# Runtime Neural Pruning

## Abstract

In this paper, we propose a Runtime Neural Pruning (RNP) framework which prunes the deep neural network dynamically at the runtime. Unlike existing neural pruning methods which produce a fixed pruned model for deployment, our method preserves the full ability of the original network and conducts pruning according to the input image and current feature maps adaptively. The pruning is performed in a bottom-up, layer-by-layer manner, which we model as a Markov decision process and use reinforcement learning for training. The agent judges the importance of each convolutional kernel and conducts channel-wise pruning conditioned on different samples, where the network is pruned more when the image is easier for the task. Since the ability of network is fully preserved, the balance point is easily adjustable according to the available resources. Our method can be applied to off-the-shelf network structures and reach a better tradeoff between speed and accuracy, especially with a large pruning rate.

## Paper References

1. Network Trimming - A Data-Driven Neuron Pruning Approach towards Efficient Deep Architectures
2. Conditional Computation in Neural Networks for faster models
3. Structured Pruning of Deep Convolutional Neural Networks
4. Adaptive Neural Networks for Fast Test-Time Prediction
5. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
6. [Pruning Filters for Efficient ConvNets](2017-pruning-filters-for-efficient-convnets.md)
7. Dynamic Deep Neural Networks - Optimizing Accuracy-Efficiency Trade-offs by Selective Execution
8. Learning Structured Sparsity in Deep Neural Networks
9. Spatially Adaptive Computation Time for Residual Networks
10. [Speeding up Convolutional Neural Networks with Low Rank Expansions](2014-speeding-up-convolutional-neural-networks-with-low-rank-expansions.md)
11. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
12. Dynamic Capacity Networks
13. [Accelerating Very Deep Convolutional Networks for Classification and Detection](2016-accelerating-very-deep-convolutional-networks-for-classification-and-detection.md)
14. Auto-Sizing Neural Networks - With Applications to n-gram Language Models
15. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning.md)
16. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
17. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
18. ProNet - Learning to Propose Object-Specific Boxes for Cascaded Neural Networks
19. Second Order Derivatives for Network Pruning - Optimal Brain Surgeon
20. Imitation Learning by Coaching
21. [Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation](2013-estimating-or-propagating-gradients-through-stochastic-neurons-for-conditional-computation.md)
22. The cascading neural network - building the Internet of Smart Things
23. A convolutional neural network cascade for face detection
24. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks.md)
25. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
26. Comparing Biases for Minimal Network Construction with Back-Propagation
27. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
28. Fast classification using sparse decision DAGs
29. Active Object Localization with Deep Reinforcement Learning
30. Timely Object Recognition
31. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
32. Towards Vision-Based Deep Reinforcement Learning for Robotic Motion Control
33. Phoneme probability estimation with dynamic sparsely connected artificial neural networks
34. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
35. Deep Convolutional Network Cascade for Facial Point Detection
36. [cuDNN - Efficient Primitives for Deep Learning](2014-cudnn-efficient-primitives-for-deep-learning.md)
37. Optimal Brain Damage
38. Changing Model Behavior at Test-Time Using Reinforcement Learning
39. [Q-learning](2004-q-learning.md)
40. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
41. Reinforcement learning improves behaviour from evaluative feedback
42. [Labeled Faces in the Wild - A Database forStudying Face Recognition in Unconstrained Environments](2008-labeled-faces-in-the-wild-a-database-forstudying-face-recognition-in-unconstrained-environments.md)
43. Describable Visual Attributes for Face Verification and Image Search
44. Markov Decision Processes - Discrete Stochastic Dynamic Programming
45. DYNAMIC PROGRAMMING AND LAGRANGE MULTIPLIERS.
