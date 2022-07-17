---
title: Scale & Affine Invariant Interest Point Detectors
authors:
- K. Mikolajczyk
- C. Schmid
fieldsOfStudy:
- Mathematics
meta_key: 2004-scale-affine-invariant-interest-point-detectors
numCitedBy: 4162
reading_status: TBD
ref_count: 48
tags:
- gen-from-ref
- other-default
- paper
venue: International Journal of Computer Vision
year: 2004
---

# Scale & Affine Invariant Interest Point Detectors

## Abstract

In this paper we propose a novel approach for detecting interest points invariant to scale and affine transformations. Our scale and affine invariant detectors are based on the following recent results: (1) Interest points extracted with the Harris detector can be adapted to affine transformations and give repeatable results (geometrically stable). (2) The characteristic scale of a local structure is indicated by a local extremum over scale of normalized derivatives (the Laplacian). (3) The affine shape of a point neighborhood is estimated based on the second moment matrix.Our scale invariant detector computes a multi-scale representation for the Harris interest point detector and then selects points at which a local measure (the Laplacian) is maximal over scales. This provides a set of distinctive points which are invariant to scale, rotation and translation as well as robust to illumination changes and limited changes of viewpoint. The characteristic scale determines a scale invariant region for each point. We extend the scale invariant detector to affine invariance by estimating the affine shape of a point neighborhood. An iterative algorithm modifies location, scale and neighborhood of each point and converges to affine invariant points. This method can deal with significant affine transformations including large scale changes. The characteristic scale and the affine shape of neighborhood determine an affine invariant region for each point.We present a comparative evaluation of different detectors and show that our approach provides better results than existing methods. The performance of our detector is also confirmed by excellent matching results; the image is described by a set of scale/affine invariant descriptors computed on the regions associated with our points.

## Paper References

1. An Affine Invariant Interest Point Detector
2. Indexing Based on Scale Invariant Interest Points
3. Invariant Features from Interest Point Groups
4. [Robust Wide Baseline Stereo from Maximally Stable Extremal Regions](2002-robust-wide-baseline-stereo-from-maximally-stable-extremal-regions)
5. Wide Baseline Stereo Matching based on Local, Affinely Invariant Regions
6. [A performance evaluation of local descriptors](2005-a-performance-evaluation-of-local-descriptors)
7. Local Scale Selection for Gaussian Based Description Techniques
8. [Object recognition from local scale-invariant features](1999-object-recognition-from-local-scale-invariant-features)
9. Shape-adapted smoothing in estimation of 3-D shape cues from affine deformations of local 2-D brightness structure
10. Sparse Texture Representation Using Affine-Invariant Neighborhoods CVPR Paper
11. Shape recognition with edge-based features
12. Feature Detection with Automatic Scale Selection
13. Viewpoint invariant texture matching and wide baseline stereo
14. A computational approach for corner and vertex detection
15. Matching images with different resolutions
16. Feature Tracking with Automatic Selection of Spatial Scales
17. Combining Appearance and Topology for Wide Baseline Matching
18. Reliable feature matching across widely separated views
19. Detecting salient blob-like image structures and their scales with a scale-space primal sketch - A method for focus-of-attention
20. Joint feature distributions for image correspondence
21. Fingerprint enhancement by shape adaptation of scale-space operators with automatic scale selection
22. A Representation for Shape Based on Peaks and Ridges in the Difference of Low-Pass Transform
23. Affine Morphological Multiscale Analysis of Corners and Multiple Junctions
24. 3D object modeling and recognition using affine-invariant patches and multi-view spatial constraints
25. Tracking of Multi-state Hand Models Using Particle Filtering and a Hierarchy of Multi-scale Image Features
26. Content-Based Image Retrieval Based on Local Affinely Invariant Regions
27. Saliency, Scale and Image Description
28. Evaluation of Interest Point Detectors
29. A Framework for Low Level Feature Extraction
30. A representation for visual information with application to machine vision
31. Wide baseline stereo matching
32. Geometric Information Criterion for Model Selection
33. Local Grayvalue Invariants for Image Retrieval
34. Direct Estimation of Local Surface Shape in a Fixating Binocular Vision System
35. Simulation of neural contour mechanisms - from simple to end-stopped cells
36. A Combined Corner and Edge Detector
37. Class-Specific, Top-Down Segmentation
38. On the Representation of Visual Information
39. Finding Geometric and Relational Structures in an Image
40. The Design and Use of Steerable Filters
41. Pattern classification and scene analysis
42. Multi-view Matching for Unordered Image Sets, or How Do I Organize My Holiday Snaps?
43. Accuracy in image measure
