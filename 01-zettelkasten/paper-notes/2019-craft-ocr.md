---
Alias: CRAFT-OCR
title: Character Region Awareness for Text Detection
authors:
- Youngmin Baek
- Bado Lee
- Dongyoon Han
- Sangdoo Yun
- Hwalsuk Lee
fieldsOfStudy:
- Computer Science
meta_key: 2019-craft-ocr
numCitedBy: 290
pdf_relpath: paper-repo/pdfs/2019-CRAFT-character-region-awareness.pdf
reading_status: TBD
ref_count: 42
tags:
- gen-from-ref
- ocr
- paper
urls:
- https://arxiv.org/pdf/1904.01941.pdf
venue: 2019 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2019
---

[pdf(local)](../../pdfs/2019-CRAFT-character-region-awareness.pdf)

# Character Region Awareness for Text Detection

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h323a9sek9j20ov05b3zi.jpg)

## 论文信息

https://arxiv.org/pdf/1904.01941.pdf

- https://github.com/clovaai/CRAFT-pytorch Official implementation
- https://github.com/backtime92/CRAFT-Reimplementation

第一作者 Yongmin Baek 来自韩国

全部作者来自 Clova AI Research, NAVER Corp，隶属于 Line 公司的 AI 部门

## Pro & Con

主要思想：从单词级标注到字符级标注，解决弯曲变形等问题。提出两个标签用于训练（字符内，字符间）region score 检测单个字母 affinity score 组合不同字母成单词

之前方法的缺陷：单词级别的bounding box 受限于检测任意形状的单词

解决方案：字符级的检测，为解决标注困难，使用合成图像的 ground truth, 并用过渡模型估计真实图片的字符级标注（弱监督，没有真实场景的 ground truth），提出亲缘关系表示

优势：普通场景最好，任意方向的、弯曲的或变形的文本时，保证了较高的灵活性。

对于较小的文字（I，这种一个字母的单词），效果较为不好

## 问题定义

对自然场景进行文字检测，可以处理水平文本行、倾斜的文本行、弯曲的文本行

- 输入：带有文字的自然场景图片
- 输出：文本框或类文本框

## 相关工作

作者将现有的文字检测任务区分为：

1.Regression-based text detectors

主要思想：使用之前的目标检测算法并进行一些调整，采用盒回归的方法。

代表性论文：

TextBoxes：修改卷积核和anchor boxes[18]

DMPNet：四边形滑动窗口[22]

Rotation-Sensitive Regression Detector(RSDD)：主动旋转卷积核，利用旋转不变性[19]

2.Segmentation-based text detectors

主要思想：使用分割的方法进行检测，寻找像素级别的文本区域。

代表性论文：

Multi-scale FCN [7], Holistic-prediction [37],PixelLink [4]：分割

SSTD [8]：使用注意力机制，综合分割和回归，减少特征层面的背景干扰增强文本区域

TextSnake[24]：预测文本区域和几何属性的中心线。

3.End-to-end text detectors

主要思想：把检测和识别串联在一起进行，使用识别结果提高检测精度。

代表性论文：

FOTS [21] and EAA [10]：串联流行的检测识别方法，端到端训练。

TextSpotter [25]：将识别模块看作语义分割问题。（不理解）

缺陷：单词为单位，但是单词可以根据不同标准（意义，空格，颜色）分割。分词边界的界定。

4.Character-level text detectors

主要思想：字符级的文本检测器。

代表性论文：

Zhang et al. [39]：使用MSER【27】的文本块候选集得到检测器。

缺陷:低对比度，曲率和光线反射的影响，鲁棒性不好

Yao et al. [37]：字母预测图，文本单词区域图，需要单词级注释的连接方向

Seglink [32]：搜索文本网格，与附加的链接预测关联

Mask TextSpotter [25]:预测字符级别概率图（文本识别而不是字符识别）

## 动机和思路

WordSup：弱监督的方式训练字符级检测器。

缺陷：使用矩形框标注，容易受摄像头视点变化引起字符的透视变形的影响，主干网络也会影响最终的性能（anchor的数量及大小）

## 方法

### 网络结构

backbone 是 VGG-16, 结构总体与U-Net一致

定义了两个得分；打破了矩形框标注的局限。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h323t13bujj20cz0eagnf.jpg)

### Ground Truth 生成

使用合成图像进行弱监督训练，+ 真实图像微调

高斯分布标注，使用透视变换标注减少计算量（预设定一个各向同性高斯分布，通过头视变换到标注的bounding box）

affinity score的ground truth：相邻字符画对角线，对应四个三角形中心作为bounding box。

方法对于长文本友好，只关注字符内和字符间。

生成 Region score 和 Affinity score

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h323tv4i2qj20su0a7tbm.jpg)

字符分割的过程

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3243f6nm8j20t70ej0x4.jpg)

### Loss 函数

置信度。
对于一个单词级别的标注，其所在区域若记为R（w），字符个数若为l(w)，而裁切得到的字符总个数记为l^c(w)，定义置信度打分为
（如果预测的区域个数和原有字符个数相同，则打分为1）
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h324bbc9l1j20d802o3yh.jpg)

pixel 级别置信度标注

逐一像素的打分规则

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h324bfy6jkj20ca02kq2v.jpg)

最终的 Loss 函数

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h324bkvqi0j20e101rt8p.jpg)

### 后处理

流程：使用神经网络生成mask，（设定两个得分的阈值）->连接组件标记->QuadBox获得

原理：根据区域打分Sr和联合打分Sa (region score & affinity score)来预测文本行

#### 矩形框

首先预测超参阈值来获得一个原图的mask，提取满足Sr大于阈值或Sa大于阈值的区域M(p)

而后利用CCL算法（opencv）获得连通区域，最后一步利用最小矩形框住每一个连通区域（opencv)

#### 任意形状框

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h324jcoi5gj20cz0bbwg3.jpg)

1. 指定一个从左到右的扫描方向
2. 根据扫描方向逐步得到每个文字的最大范围（图中蓝色箭头）
3. 蓝色箭头的中点连成线，获得局部连接（图中黄线）
4. 黄线每一个点的垂直方向，调整蓝色的箭头得到图中红色箭头，
5. 获得控制点（图中绿色点，收尾部分要外移）
6. 根据绿色点，得到多边形（图中紫色部分）

## 实验

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3248720ojj20so0gdjxr.jpg)

矩形框数据集上的测试结果

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3248ed6d4j20e407ign0.jpg)

多边形框数据集上的测试结果

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3248zwfq9j20ec07dwfi.jpg)

## 实验效果图

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h329zx6i6uj20fv0a5dht.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h329yryxpaj206m08c3z7.jpg)

## Abstract

Scene text detection methods based on neural networks have emerged recently and have shown promising results. Previous methods trained with rigid word-level bounding boxes exhibit limitations in representing the text region in an arbitrary shape. In this paper, we propose a new scene text detection method to effectively detect text area by exploring each character and affinity between characters. To overcome the lack of individual character level annotations, our proposed framework exploits both the given character-level annotations for synthetic images and the estimated character-level ground-truths for real images acquired by the learned interim model. In order to estimate affinity between characters, the network is trained with the newly proposed representation for affinity. Extensive experiments on six benchmarks, including the TotalText and CTW-1500 datasets which contain highly curved texts in natural images, demonstrate that our character-level text detection significantly outperforms the state-of-the-art detectors. According to the results, our proposed method guarantees high flexibility in detecting complicated scene text images, such as arbitrarily-oriented, curved, or deformed texts.

## Paper References

1. [Scene Text Detection via Holistic, Multi-Channel Prediction](2016-scene-text-detection-via-holistic-multi-channel-prediction)
2. [Multi-oriented Scene Text Detection via Corner Localization and Region Segmentation](2018-multi-oriented-scene-text-detection-via-corner-localization-and-region-segmentation)
3. [WordSup - Exploiting Word Annotations for Character Based Text Detection](2017-wordsup-exploiting-word-annotations-for-character-based-text-detection)
4. [EAST - An Efficient and Accurate Scene Text Detector](2017-east-an-efficient-and-accurate-scene-text-detector)
5. [Multi-oriented Text Detection with Fully Convolutional Networks](2016-multi-oriented-text-detection-with-fully-convolutional-networks)
6. Accurate Text Localization in Natural Image with Cascaded Convolutional Text Network
7. [Synthetic Data for Text Localisation in Natural Images](2016-synthetic-data-for-text-localisation-in-natural-images)
8. [PixelLink - Detecting Scene Text via Instance Segmentation](2018-pixellink-detecting-scene-text-via-instance-segmentation)
9. [Detecting Oriented Text in Natural Images by Linking Segments](2017-detecting-oriented-text-in-natural-images-by-linking-segments)
10. [Detecting Curve Text in the Wild - New Dataset and New Solution](2017-detecting-curve-text-in-the-wild-new-dataset-and-new-solution)
11. [Total-Text - A Comprehensive Dataset for Scene Text Detection and Recognition](2017-total-text-a-comprehensive-dataset-for-scene-text-detection-and-recognition)
12. [TextSnake - A Flexible Representation for Detecting Text of Arbitrary Shapes](2018-textsnake-a-flexible-representation-for-detecting-text-of-arbitrary-shapes)
13. [Rotation-Sensitive Regression for Oriented Scene Text Detection](2018-rotation-sensitive-regression-for-oriented-scene-text-detection)
14. [Single Shot Text Detector with Regional Attention](2017-single-shot-text-detector-with-regional-attention)
15. [Deep Matching Prior Network - Toward Tighter Multi-oriented Text Detection](2017-deep-matching-prior-network-toward-tighter-multi-oriented-text-detection)
16. [TextBoxes++ - A Single-Shot Oriented Scene Text Detector](2018-textboxes-a-single-shot-oriented-scene-text-detector)
17. [R2CNN - Rotational Region CNN for Orientation Robust Scene Text Detection](2017-r2cnn-rotational-region-cnn-for-orientation-robust-scene-text-detection)
18. Detecting texts of arbitrary orientations in natural images
19. [Deep Direct Regression for Multi-oriented Scene Text Detection](2017-deep-direct-regression-for-multi-oriented-scene-text-detection)
20. Multi-scale FCN with Cascaded Instance Aware Segmentation for Arbitrary Oriented Word Spotting in the Wild
21. [FOTS - Fast Oriented Text Spotting with a Unified Network](2018-fots-fast-oriented-text-spotting-with-a-unified-network)
22. [Mask TextSpotter - An End-to-End Trainable Neural Network for Spotting Text with Arbitrary Shapes](2018-mask-textspotter-an-end-to-end-trainable-neural-network-for-spotting-text-with-arbitrary-shapes)
23. [ICDAR2017 Robust Reading Challenge on Multi-Lingual Scene Text Detection and Script Identification - RRC-MLT](2017-icdar2017-robust-reading-challenge-on-multi-lingual-scene-text-detection-and-script-identification-rrc-mlt)
24. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn.md)
25. [SSD - Single Shot MultiBox Detector](2016-ssd-net.md)
26. Detecting text in natural scenes with stroke width transform
27. [An End-to-End TextSpotter with Explicit Alignment and Attention](2018-an-end-to-end-textspotter-with-explicit-alignment-and-attention)
28. [Training Region-Based Object Detectors with Online Hard Example Mining](2016-training-region-based-object-detectors-with-online-hard-example-mining)
29. [DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs](2018-deeplab-semantic-image-segmentation-with-deep-convolutional-nets-atrous-convolution-and-fully-connected-crfs)
30. ICDAR 2015 competition on Robust Reading
31. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
32. ICDAR 2013 Robust Reading Competition
33. [U-Net - Convolutional Networks for Biomedical Image Segmentation](2015-u-net-convolutional-networks-for-biomedical-image-segmentation)
34. [Realtime Multi-person 2D Pose Estimation Using Part Affinity Fields](2017-realtime-multi-person-2d-pose-estimation-using-part-affinity-fields)
35. Robust wide-baseline stereo from maximally stable extremal regions
36. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
37. [Stacked Hourglass Networks for Human Pose Estimation](2016-stacked-hourglass-networks-for-human-pose-estimation)
38. Watersheds in Digital Spaces - An Efficient Algorithm Based on Immersion Simulations
39. NSML - A Machine Learning Platform That Enables You to Focus on Your Models
40. NSML - Meet the MLaaS platform with a real-world case study
41. [Fully convolutional networks for semantic segmentation](2015-fully-convolutional-networks-for-semantic-segmentation)
42. [TextBoxes - A Fast Text Detector with a Single Deep Neural Network](2017-textboxes-a-fast-text-detector-with-a-single-deep-neural-network)
