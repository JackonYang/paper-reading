---
title: Text-Attentional Convolutional Neural Networks for Scene Text Detection
authors:
- Tong He
- Weilin Huang
- Y. Qiao
- Jian Yao
fieldsOfStudy:
- Computer Science
meta_key: 2016-text-attentional-convolutional-neural-networks-for-scene-text-detection
numCitedBy: 102
reading_status: TBD
ref_count: 0
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Text-Attentional-Convolutional-Neural-Networks-for-He-Huang/a70db351b700a95033b55a93e9be5ad8e186d335?sort=total-citations
venue: 'IEEE transactions on image processing : a publication of the IEEE Signal Processing Society'
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Text-Attentional-Convolutional-Neural-Networks-for-He-Huang/a70db351b700a95033b55a93e9be5ad8e186d335?sort=total-citations)

# Text-Attentional Convolutional Neural Networks for Scene Text Detection

## Abstract

Recent deep learning models have demonstrated strong capabilities for classifying text and non-text components in natural images. They extract a high-level feature computed globally from a whole image component (patch), where the cluttered background information may dominate true text features in the deep representation. This leads to less discriminative power and poorer robustness. In this work, we present a new system for scene text detection by proposing a novel Text-Attentional Convolutional Neural Network (Text-CNN) that particularly focuses on extracting text-related regions and features from the image components. We develop a new learning mechanism to train the Text-CNN with multi-level and rich supervised information, including text region mask, character label, and binary text/nontext information. The rich supervision information enables the Text-CNN with a strong capability for discriminating ambiguous texts, and also increases its robustness against complicated background components. The training process is formulated as a multi-task learning problem, where low-level supervised information greatly facilitates main task of text/non-text classification. In addition, a powerful low-level detector called Contrast- Enhancement Maximally Stable Extremal Regions (CE-MSERs) is developed, which extends the widely-used MSERs by enhancing intensity contrast between text patterns and background. This allows it to detect highly challenging text patterns, resulting in a higher recall. Our approach achieved promising results on the ICDAR 2013 dataset, with a F-measure of 0.82, improving the state-of-the-art results substantially.
