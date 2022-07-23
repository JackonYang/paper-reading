---
title: Device Placement Optimization with Reinforcement Learning
authors:
- Azalia Mirhoseini
- Hieu Pham
- Quoc V. Le
- Benoit Steiner
- Rasmus Larsen
- Yuefeng Zhou
- Naveen Kumar
- Mohammad Norouzi
- Samy Bengio
- J. Dean
fieldsOfStudy:
- Computer Science
meta_key: 2017-device-placement-optimization-with-reinforcement-learning
numCitedBy: 312
reading_status: TBD
ref_count: 53
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Device-Placement-Optimization-with-Reinforcement-Mirhoseini-Pham/bfbd10ebffc9494423770a5bd30ebd0f9cbce66d?sort=total-citations
venue: ICML
year: 2017
---

# Device Placement Optimization with Reinforcement Learning

## Abstract

The past few years have witnessed a growth in size and computational requirements for training and inference with neural networks. Currently, a common approach to address these requirements is to use a heterogeneous distributed environment with a mixture of hardware devices such as CPUs and GPUs. Importantly, the decision of placing parts of the neural models on devices is often made by human experts based on simple heuristics and intuitions. In this paper, we propose a method which learns to optimize device placement for TensorFlow computational graphs. Key to our method is the use of a sequence-to-sequence model to predict which subsets of operations in a TensorFlow graph should run on which of the available devices. The execution time of the predicted placements is then used as the reward signal to optimize the parameters of the sequence-to-sequence model. Our main result is that on Inception-V3 for ImageNet classification, and on RNN LSTM, for language modeling and neural machine translation, our model finds non-trivial device placements that outperform hand-crafted heuristics and traditional algorithmic methods.

## Paper References

1. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
2. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
3. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
4. [Pointer Networks](2015-pointer-networks.md)
5. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision.md)
6. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
7. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
8. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
9. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
10. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation.md)
11. [Exploring the Limits of Language Modeling](2016-exploring-the-limits-of-language-modeling.md)
12. Deep Speech - Scaling up end-to-end speech recognition
13. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
14. Neural Combinatorial Optimization with Reinforcement Learning
15. [On the difficulty of training recurrent neural networks](2013-on-the-difficulty-of-training-recurrent-neural-networks.md)
16. Resource Elasticity for Large-Scale Machine Learning
17. Resource Management with Deep Reinforcement Learning
18. Feature selection and policy optimization for distributed instruction placement using reinforcement learning
19. [Long Short-Term Memory](1997-long-short-term-memory.md)
20. [WaveNet - A Generative Model for Raw Audio](2016-wavenet-a-generative-model-for-raw-audio.md)
21. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation.md)
22. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning.md)
23. Achieving budget-optimality with adaptive schemes in crowdsourcing
24. Listen, Attend and Spell
25. Optimization by Simulated Annealing - An Experimental Evaluation; Part I, Graph Partitioning
26. A Hopfield neural network based task mapping method
27. Deep Voice - Real-time Neural Text-to-Speech
28. [Towards End-To-End Speech Recognition with Recurrent Neural Networks](2014-towards-end-to-end-speech-recognition-with-recurrent-neural-networks.md)
29. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
30. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
31. Workload Prediction for Cloud Cluster Using a Recurrent Neural Network
32. Dermatologist-level classification of skin cancer with deep neural networks
33. Tacotron - A Fully End-to-End Text-To-Speech Synthesis Model
34. Distillating knowledge about SCOTCH
35. A Fast and High Quality Multilevel Scheme for Partitioning Irregular Graphs
36. Experimental Analysis of the Dual Recursive Bipartitioning Algorithm for Static Mapping
37. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
38. Improvement of the Efficiency of Genetic Algorithms for Scalable Parallel Graph Partitioning in a Multi-level Framework
39. A Linear-Time Heuristic for Improving Network Partitions
40. A multilevel algorithm for partitioning graphs
41. [Optimization by Simulated Annealing](1983-optimization-by-simulated-annealing.md)
42. New spectral methods for ratio cut partitioning and clustering
43. Fast multilevel implementation of recursive spectral bisection for partitioning unstructured problems
44. A Parallelisable Multi-level Banded Diffusion Scheme for Computing Balanced Partitions with Smooth Boundaries
45. An efficient heuristic procedure for partitioning graphs
