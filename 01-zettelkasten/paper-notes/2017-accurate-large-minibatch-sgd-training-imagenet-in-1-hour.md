---
title: Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour
authors:
- Priya Goyal
- "Piotr Doll\xE1r"
- Ross B. Girshick
- P. Noordhuis
- Lukasz Wesolowski
- Aapo Kyrola
- Andrew Tulloch
- Yangqing Jia
- Kaiming He
fieldsOfStudy:
- Computer Science
meta_key: 2017-accurate-large-minibatch-sgd-training-imagenet-in-1-hour
numCitedBy: 2269
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- other-default
- paper
urls:
- "https://www.semanticscholar.org/paper/Accurate,-Large-Minibatch-SGD:-Training-ImageNet-in-Goyal-Doll\xE1r/0d57ba12a6d958e178d83be4c84513f7e42b24e5?sort=total-citations"
venue: ArXiv
year: 2017
---

# Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour

## Abstract

Deep learning thrives with large neural networks and large datasets. However, larger networks and larger datasets result in longer training times that impede research and development progress. Distributed synchronous SGD offers a potential solution to this problem by dividing SGD minibatches over a pool of parallel workers. Yet to make this scheme efficient, the per-worker workload must be large, which implies nontrivial growth in the SGD minibatch size. In this paper, we empirically show that on the ImageNet dataset large minibatches cause optimization difficulties, but when these are addressed the trained networks exhibit good generalization. Specifically, we show no loss of accuracy when training with large minibatch sizes up to 8192 images. To achieve this result, we adopt a hyper-parameter-free linear scaling rule for adjusting learning rates as a function of minibatch size and develop a new warmup scheme that overcomes optimization challenges early in training. With these simple techniques, our Caffe2-based system trains ResNet-50 with a minibatch size of 8192 on 256 GPUs in one hour, while matching small minibatch accuracy. Using commodity hardware, our implementation achieves ~90% scaling efficiency when moving from 8 to 256 GPUs. Our findings enable training visual recognition models on internet-scale data with high efficiency.

## Paper References

1. On Large-Batch Training for Deep Learning - Generalization Gap and Sharp Minima
2. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
3. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks.md)
4. Optimization Methods for Large-Scale Machine Learning
5. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
6. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
7. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
8. [DeCAF - A Deep Convolutional Activation Feature for Generic Visual Recognition](2014-decaf-a-deep-convolutional-activation-feature-for-generic-visual-recognition.md)
9. Scalable training of deep learning machines by incremental block training with intra-block parallel optimization and blockwise model-update filtering
10. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification.md)
11. Revisiting Distributed Synchronous SGD
12. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
13. [Feature Pyramid Networks for Object Detection](2017-feature-pyramid-networks-for-object-detection.md)
14. Quantized Neural Networks - Training Neural Networks with Low Precision Weights and Activations
15. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks.md)
16. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation.md)
17. Proposal Scaling Distributed Machine Learning with System and Algorithm Co-design
18. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation.md)
19. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
20. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
21. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation.md)
22. [Fast R-CNN](2015-fast-r-cnn.md)
23. The microsoft 2016 conversational speech recognition system
24. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context.md)
25. [Natural Language Processing (Almost) from Scratch](2011-natural-language-processing-almost-from-scratch.md)
26. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
27. Backpropagation Applied to Handwritten Zip Code Recognition
28. Curiously Fast Convergence of some Stochastic Gradient Descent Algorithms
29. Opt
30. Introductory Lectures on Convex Optimization - A Basic Course
31. Conversational speech recognition
32. One weird trick for parallelizing convolutional neural networks
33. Optimization of Collective Reduction Operations
34. [A Stochastic Approximation Method](2007-a-stochastic-approximation-method.md)
35. Interprocessor collective communication library (InterCom)
36. Using Mpi Portable Parallel Programming With The Message Passing Interface
37. Et al
38. G
39. Methods for large scale machine learning
40. Visualizing and Understanding Convolutional Neural Networks
