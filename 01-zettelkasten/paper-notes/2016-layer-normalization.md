---
title: Layer Normalization
authors:
- Jimmy Ba
- J. Kiros
- Geoffrey E. Hinton
fieldsOfStudy:
- Computer Science
meta_key: 2016-layer-normalization
numCitedBy: 3092
reading_status: TBD
ref_count: 35
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Layer-Normalization-Ba-Kiros/97fb4e3d45bb098e27e0071448b6152217bd35a5?sort=total-citations
venue: ArXiv
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Layer-Normalization-Ba-Kiros/97fb4e3d45bb098e27e0071448b6152217bd35a5?sort=total-citations)

# Layer Normalization

## Abstract

Training state-of-the-art, deep neural networks is computationally expensive. One way to reduce the training time is to normalize the activities of the neurons. A recently introduced technique called batch normalization uses the distribution of the summed input to a neuron over a mini-batch of training cases to compute a mean and variance which are then used to normalize the summed input to that neuron on each training case. This significantly reduces the training time in feedforward neural networks. However, the effect of batch normalization is dependent on the mini-batch size and it is not obvious how to apply it to recurrent neural networks. In this paper, we transpose batch normalization into layer normalization by computing the mean and variance used for normalization from all of the summed inputs to the neurons in a layer on a single training case. Like batch normalization, we also give each neuron its own adaptive bias and gain which are applied after the normalization but before the non-linearity. Unlike batch normalization, layer normalization performs exactly the same computation at training and test times. It is also straightforward to apply to recurrent neural networks by computing the normalization statistics separately at each time step. Layer normalization is very effective at stabilizing the hidden state dynamics in recurrent networks. Empirically, we show that layer normalization can substantially reduce the training time compared with previously published techniques.

## Paper References

1. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
2. Batch normalized recurrent neural networks
3. [Weight Normalization - A Simple Reparameterization to Accelerate Training of Deep Neural Networks](2016-weight-normalization-a-simple-reparameterization-to-accelerate-training-of-deep-neural-networks)
4. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
5. Recurrent Batch Normalization
6. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks)
7. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
8. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
9. Deep Speech 2 - End-to-End Speech Recognition in English and Mandarin
10. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups)
11. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks)
12. The Neural Autoregressive Distribution Estimator
13. [Skip-Thought Vectors](2015-skip-thought-vectors)
14. Path-SGD - Path-Normalized Optimization in Deep Neural Networks
15. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation)
16. Natural Gradient Works Efficiently in Learning
17. [DRAW - A Recurrent Neural Network For Image Generation](2015-draw-a-recurrent-neural-network-for-image-generation)
18. [Unifying Visual-Semantic Embeddings with Multimodal Neural Language Models](2014-unifying-visual-semantic-embeddings-with-multimodal-neural-language-models)
19. [Learning Deep Structure-Preserving Image-Text Embeddings](2016-learning-deep-structure-preserving-image-text-embeddings)
20. [Generating Sequences With Recurrent Neural Networks](2013-generating-sequences-with-recurrent-neural-networks)
21. Seeing Stars - Exploiting Class Relationships for Sentiment Categorization with Respect to Rating Scales
22. [Efficient Estimation of Word Representations in Vector Space](2013-efficient-estimation-of-word-representations-in-vector-space)
23. [Aligning Books and Movies - Towards Story-Like Visual Explanations by Watching Movies and Reading Books](2015-aligning-books-and-movies-towards-story-like-visual-explanations-by-watching-movies-and-reading-books)
24. [Teaching Machines to Read and Comprehend](2015-teaching-machines-to-read-and-comprehend)
25. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
26. IAM-OnDB - an on-line English sentence database acquired from handwritten text on a whiteboard
27. [Mining and summarizing customer reviews](2004-mining-and-summarizing-customer-reviews)
28. [Order-Embeddings of Images and Language](2016-order-embeddings-of-images-and-language)
29. [A Sentimental Education - Sentiment Analysis Using Subjectivity Summarization Based on Minimum Cuts](2004-a-sentimental-education-sentiment-analysis-using-subjectivity-summarization-based-on-minimum-cuts)
30. SemEval-2014 Task 1 - Evaluation of Compositional Distributional Semantic Models on Full Sentences through Semantic Relatedness and Textual Entailment
31. Annotating Expressions of Opinions and Emotions in Language
32. Theano - A Python framework for fast computation of mathematical expressions
