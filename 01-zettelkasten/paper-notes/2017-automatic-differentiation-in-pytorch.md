---
title: Automatic differentiation in PyTorch
authors:
- Adam Paszke
- S. Gross
- Soumith Chintala
- Gregory Chanan
- E. Yang
- Zach DeVito
- Zeming Lin
- Alban Desmaison
- L. Antiga
- Adam Lerer
fieldsOfStudy:
- Computer Science
meta_key: 2017-automatic-differentiation-in-pytorch
numCitedBy: 10406
reading_status: TBD
ref_count: 7
tags:
- gen-from-ref
- paper
venue: ''
year: 2017
---

# Automatic differentiation in PyTorch

## Abstract

In this article, we describe an automatic differentiation module of PyTorch — a library designed to enable rapid research on machine learning models. It builds upon a few projects, most notably Lua Torch, Chainer, and HIPS Autograd [4], and provides a high performance environment with easy access to automatic differentiation of models executed on different devices (CPU and GPU). To make prototyping easier, PyTorch does not follow the symbolic approach used in many other deep learning frameworks, but focuses on differentiation of purely imperative programs, with a focus on extensibility and low overhead. Note that this preprint is a draft of certain sections from an upcoming paper covering all PyTorch features.

## Paper References

1. Modeling, Inference and Optimization With Composable Differentiable Procedures
2. DyNet - The Dynamic Neural Network Toolkit
3. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems)
4. Evaluating derivatives - principles and techniques of algorithmic differentiation, Second Edition
5. Compiling fast partial derivatives of functions given by algorithms
6. SciPy - Open Source Scientific Tools for Python
