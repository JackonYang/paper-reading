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
filesize_readable: 50.8 KB
meta_key: 2017-automatic-differentiation-in-pytorch
meta_relpath: paper-extra-data/pdf-meta/2017-automatic-differentiation-in-pytorch.yaml
numCitedBy: 10406
pdf_relpath: paper-repo/pdfs/2017-automatic-differentiation-in-pytorch.pdf
reading_status: TBD
ref_count: 7
tags:
- gen-from-ref
- paper
- pytorch
url_slug: 2017-automatic-differentiation-in-pytorch
urls:
- https://www.semanticscholar.org/paper/Automatic-differentiation-in-PyTorch-Paszke-Gross/b36a5bb1707bb9c70025294b3a310138aae8327a?sort=total-citations
venue: ''
year: 2017
---

[pdf(local)](../../paper-repo/pdfs/2017-automatic-differentiation-in-pytorch.pdf)

[semanticscholar url](https://www.semanticscholar.org/paper/Automatic-differentiation-in-PyTorch-Paszke-Gross/b36a5bb1707bb9c70025294b3a310138aae8327a?sort=total-citations)

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
