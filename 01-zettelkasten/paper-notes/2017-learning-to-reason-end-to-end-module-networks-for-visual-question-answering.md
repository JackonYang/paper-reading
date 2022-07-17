---
title: Learning to Reason - End-to-End Module Networks for Visual Question Answering
authors:
- Ronghang Hu
- Jacob Andreas
- Marcus Rohrbach
- Trevor Darrell
- Kate Saenko
fieldsOfStudy:
- Computer Science
meta_key: 2017-learning-to-reason-end-to-end-module-networks-for-visual-question-answering
numCitedBy: 435
reading_status: TBD
ref_count: 32
tags:
- gen-from-ref
- paper
venue: 2017 IEEE International Conference on Computer Vision (ICCV)
year: 2017
---

# Learning to Reason - End-to-End Module Networks for Visual Question Answering

## Abstract

Natural language questions are inherently compositional, and many are most easily answered by reasoning about their decomposition into modular sub-problems. For example, to answer “is there an equal number of balls and boxes?” we can look for balls, look for boxes, count them, and compare the results. The recently proposed Neural Module Network (NMN) architecture [3, 2] implements this approach to question answering by parsing questions into linguistic substructures and assembling question-specific deep networks from smaller modules that each solve one subtask. However, existing NMN implementations rely on brittle off-the-shelf parsers, and are restricted to the module configurations proposed by these parsers rather than learning them from data. In this paper, we propose End-to-End Module Networks (N2NMNs), which learn to reason by directly predicting instance-specific network layouts without the aid of a parser. Our model learns to generate network structures (by imitating expert demonstrations) while simultaneously learning network parameters (using the downstream task loss). Experimental results on the new CLEVR dataset targeted at compositional question answering show that N2NMNs achieve an error reduction of nearly 50% relative to state-of-theart attentional approaches, while discovering interpretable network architectures specialized for each question.

## Paper References

1. [Neural Module Networks](2016-neural-module-networks)
2. [Learning to Compose Neural Networks for Question Answering](2016-learning-to-compose-neural-networks-for-question-answering)
3. [Dynamic Memory Networks for Visual and Textual Question Answering](2016-dynamic-memory-networks-for-visual-and-textual-question-answering)
4. [VQA - Visual Question Answering](2015-vqa-visual-question-answering)
5. [Stacked Attention Networks for Image Question Answering](2016-stacked-attention-networks-for-image-question-answering)
6. [CLEVR - A Diagnostic Dataset for Compositional Language and Elementary Visual Reasoning](2017-clevr-a-diagnostic-dataset-for-compositional-language-and-elementary-visual-reasoning)
7. [Recursive Deep Models for Semantic Compositionality Over a Sentiment Treebank](2013-recursive-deep-models-for-semantic-compositionality-over-a-sentiment-treebank)
8. Hierarchical Co-Attention for Visual Question Answering
9. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
10. Neural Architecture Search with Reinforcement Learning
11. Simple Baseline for Visual Question Answering
12. [Making the V in VQA Matter - Elevating the Role of Image Understanding in Visual Question Answering](2017-making-the-v-in-vqa-matter-elevating-the-role-of-image-understanding-in-visual-question-answering)
13. A Multi-World Approach to Question Answering about Real-World Scenes based on Uncertain Input
14. [Image Question Answering Using Convolutional Neural Network with Dynamic Parameter Prediction](2016-image-question-answering-using-convolutional-neural-network-with-dynamic-parameter-prediction)
15. Segmentation from Natural Language Expressions
16. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
17. [Inferring and Executing Programs for Visual Reasoning](2017-inferring-and-executing-programs-for-visual-reasoning)
18. Fast and Accurate Shift-Reduce Constituent Parsing
19. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
20. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems)
21. Making a Science of Model Search - Hyperparameter Optimization in Hundreds of Dimensions for Vision Architectures
22. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
23. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
24. Modeling systems with internal state using evolino
25. Neuroevolution - from architectures to learning
26. Et al
27. [Modeling Relationships in Referential Expressions with Compositional Modular Networks](2017-modeling-relationships-in-referential-expressions-with-compositional-modular-networks)
28. An analysis of a logical machine using parenthesis-free notation
29. [Revisiting Visual Question Answering Baselines](2016-revisiting-visual-question-answering-baselines)
