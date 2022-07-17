---
title: Deep Neural Networks Segment Neuronal Membranes in Electron Microscopy Images
authors:
- D. Ciresan
- A. Giusti
- L. Gambardella
- J. Schmidhuber
fieldsOfStudy:
- Computer Science
meta_key: 2012-deep-neural-networks-segment-neuronal-membranes-in-electron-microscopy-images
numCitedBy: 1228
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- paper
venue: NIPS
year: 2012
---

# Deep Neural Networks Segment Neuronal Membranes in Electron Microscopy Images

## Abstract

We address a central problem of neuroanatomy, namely, the automatic segmentation of neuronal structures depicted in stacks of electron microscopy (EM) images. This is necessary to efficiently map 3D brain structure and connectivity. To segment biological neuron membranes, we use a special type of deep artificial neural network as a pixel classifier. The label of each pixel (membrane or non-membrane) is predicted from raw pixel values in a square window centered on it. The input layer maps each window pixel to a neuron. It is followed by a succession of convolutional and max-pooling layers which preserve 2D information and extract features with increasing levels of abstraction. The output layer produces a calibrated probability for each class. The classifier is trained by plain gradient descent on a 512 × 512 × 30 stack with known ground truth, and tested on a stack of the same size (ground truth unknown to the authors) by the organizers of the ISBI 2012 EM Segmentation Challenge. Even without problem-specific postprocessing, our approach outperforms competing techniques by a large margin in all three considered metrics, i.e. rand error, warping error and pixel error. For pixel error, our approach is the only one outperforming a second human observer.

## Paper References

1. Supervoxel-Based Segmentation of Mitochondria in EM Image Stacks With Learned Shape Features
2. Neuron geometry extraction by perceptual grouping in ssTEM images
3. Segmentation of EM Images of Neuronal Structures Using CellProfiler
4. An Integrated Micro- and Macroarchitectural Analysis of the Drosophila Brain by Computer-Assisted Serial Section Electron Microscopy
5. Geometrical Consistent 3D Tracing of Neuronal Processes in ssTEM Data
6. Trainable Segmentation Based on Local-level and Segment-level Feature Extraction
7. [Multi-column deep neural networks for image classification](2012-multi-column-deep-neural-networks-for-image-classification)
8. Network anatomy and in vivo physiology of visual cortical neurons
9. A Fully Automated Approach to Segmentation of Irregularly Shaped Cellular Structures in EM Images
10. [Neocognitron - A self-organizing neural network model for a mechanism of pattern recognition unaffected by shift in position](2004-neocognitron-a-self-organizing-neural-network-model-for-a-mechanism-of-pattern-recognition-unaffected-by-shift-in-position)
11. Contextual grouping in a concept - a multistage decision strategy for EM segmentation
12. Boundary Learning by Optimization with Topological Constraints
13. [Flexible, High Performance Convolutional Neural Networks for Image Classification](2011-flexible-high-performance-convolutional-neural-networks-for-image-classification)
14. Learning rotational features for filament detection
15. Hierarchical models of object recognition in cortex
16. Best practices for convolutional neural networks applied to visual document analysis
17. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition)
18. Fast Ray features for learning irregular shapes
19. Performance and Scalability of GPU-Based Convolutional Neural Networks
20. Object recognition with features inspired by visual cortex
21. Human photoreceptor topography
22. SLIC Superpixels ?
23. Evaluation of Pooling Operations in Convolutional Architectures for Object Recognition
24. Convolutional Neural Network Committees for Handwritten Character Classification
25. Hierarchical Neural Networks for Image Interpretation
26. Foveated self-similarity in nonlocal image filtering
27. Network anatomy and in vivo physiology of mesenchymal stem and stromal cells
28. Deep, Big, Simple Neural Nets for Handwritten Digit Recognition
29. Objective Criteria for the Evaluation of Clustering Methods
30. The Detection of Neuronal Structures using a Patch-based Multi-features and Support Vector Machines Learning Algorithm
31. Hierarchical Neural Networks for Image Interpretation (Lecture Notes in Computer Science)
32. Fast approximate energy minimization via graph cuts
