---
title: Unsupervised Learning of Video Representations using LSTMs
authors:
- Nitish Srivastava
- Elman Mansimov
- R. Salakhutdinov
fieldsOfStudy:
- Computer Science
meta_key: 2015-unsupervised-learning-of-video-representations-using-lstms
numCitedBy: 1981
reading_status: TBD
ref_count: 40
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Unsupervised-Learning-of-Video-Representations-Srivastava-Mansimov/829510ad6f975c939d589eeb01a3cf6fc6c8ce4d?sort=total-citations
venue: ICML
year: 2015
---

# Unsupervised Learning of Video Representations using LSTMs

## Abstract

We use Long Short Term Memory (LSTM) networks to learn representations of video sequences. Our model uses an encoder LSTM to map an input sequence into a fixed length representation. This representation is decoded using single or multiple decoder LSTMs to perform different tasks, such as reconstructing the input sequence, or predicting the future sequence. We experiment with two kinds of input sequences - patches of image pixels and high-level representations ("percepts") of video frames extracted using a pretrained convolutional net. We explore different design choices such as whether the decoder LSTMs should condition on the generated output. We analyze the outputs of the model qualitatively to see how well the model can extrapolate the learned video representation into the future and into the past. We further evaluate the representations by finetuning them for a supervised learning problem - human action recognition on the UCF-101 and HMDB-51 datasets. We show that the representations help improve classification accuracy, especially when there are only few training examples. Even models pretrained on unrelated datasets (300 hours of YouTube videos) can help action recognition performance.

## Paper References

1. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
2. [Two-Stream Convolutional Networks for Action Recognition in Videos](2014-two-stream-convolutional-networks-for-action-recognition-in-videos.md)
3. [Long-term recurrent convolutional networks for visual recognition and description](2015-long-term-recurrent-convolutional-networks-for-visual-recognition-and-description.md)
4. [Large-Scale Video Classification with Convolutional Neural Networks](2014-large-scale-video-classification-with-convolutional-neural-networks.md)
5. Video (language) modeling - a baseline for generative models of natural videos
6. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator.md)
7. [3D Convolutional Neural Networks for Human Action Recognition](2013-3d-convolutional-neural-networks-for-human-action-recognition.md)
8. [Learning hierarchical invariant spatio-temporal features for action recognition with independent subspace analysis](2011-learning-hierarchical-invariant-spatio-temporal-features-for-action-recognition-with-independent-subspace-analysis.md)
9. C3D - Generic Features for Video Analysis
10. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation.md)
11. [HMDB - A large video database for human motion recognition](2011-hmdb-a-large-video-database-for-human-motion-recognition.md)
12. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
13. Action Recognition with Improved Trajectories
14. Beyond Gaussian Pyramid - Multi-skip Feature Stacking for action recognition
15. [Long Short-Term Memory](1997-long-short-term-memory.md)
16. [UCF101 - A Dataset of 101 Human Actions Classes From Videos in The Wild](2012-ucf101-a-dataset-of-101-human-actions-classes-from-videos-in-the-wild.md)
17. Deep learning from temporal coherence in video
18. Learning to Represent Spatial Transformations with Factored Higher-Order Boltzmann Machines
19. [DRAW - A Recurrent Neural Network For Image Generation](2015-draw-a-recurrent-neural-network-for-image-generation.md)
20. Modeling Deep Temporal Dependencies with Recurrent Grammar Cells
21. [Towards End-To-End Speech Recognition with Recurrent Neural Networks](2014-towards-end-to-end-speech-recognition-with-recurrent-neural-networks.md)
22. Learning to Relate Images
23. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
24. Modeling the joint density of two images under a variety of transformations
25. [Auto-Encoding Variational Bayes](2014-auto-encoding-variational-bayes.md)
26. [Generating Sequences With Recurrent Neural Networks](2013-generating-sequences-with-recurrent-neural-networks.md)
27. Simple-Cell-Like Receptive Fields Maximize Temporal Coherence in Natural Video
28. Image quality assessment - from error visibility to structural similarity
29. Independent component analysis of natural image sequences yields spatio-temporal filters similar to simple cells in primary visual cortex
