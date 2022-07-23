---
title: Automatically scheduling halide image processing pipelines
authors:
- Ravi Teja Mullapudi
- Andrew Adams
- Dillon Sharlet
- Jonathan Ragan-Kelley
- Kayvon Fatahalian
fieldsOfStudy:
- Computer Science
meta_key: 2016-automatically-scheduling-halide-image-processing-pipelines
numCitedBy: 129
reading_status: TBD
ref_count: 17
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Automatically-scheduling-halide-image-processing-Mullapudi-Adams/9b240a87b11d085641d6640f73cc3cc2d678e305?sort=total-citations
venue: ACM Trans. Graph.
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Automatically-scheduling-halide-image-processing-Mullapudi-Adams/9b240a87b11d085641d6640f73cc3cc2d678e305?sort=total-citations)

# Automatically scheduling halide image processing pipelines

## Abstract

The Halide image processing language has proven to be an effective system for authoring high-performance image processing code. Halide programmers need only provide a high-level strategy for mapping an image processing pipeline to a parallel machine (a schedule), and the Halide compiler carries out the mechanical task of generating platform-specific code that implements the schedule. Unfortunately, designing high-performance schedules for complex image processing pipelines requires substantial knowledge of modern hardware architecture and code-optimization techniques. In this paper we provide an algorithm for automatically generating high-performance schedules for Halide programs. Our solution extends the function bounds analysis already present in the Halide compiler to automatically perform locality and parallelism-enhancing global program transformations typical of those employed by expert Halide developers. The algorithm does not require costly (and often impractical) auto-tuning, and, in seconds, generates schedules for a broad set of image processing benchmarks that are performance-competitive with, and often better than, schedules manually authored by expert Halide developers on server and mobile CPUs, as well as GPUs.

## Paper References

1. PolyMage - Automatic Optimization for Image Processing Pipelines
2. Decoupling algorithms from schedules for easy optimization of image processing pipelines
3. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
4. Darkroom - compiling high-level image processing code into hardware pipelines
5. Rigel - flexible multi-rate image processing hardware
6. OpenTuner - An extensible framework for program autotuning
7. Fast cost-volume filtering for visual correspondence and beyond
8. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
9. Fast nonlocal filtering applied to electron cryomicroscopy
10. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
11. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
12. A Combined Corner and Edge Detector
13. Convolution pyramids
14. An introduction to halide
