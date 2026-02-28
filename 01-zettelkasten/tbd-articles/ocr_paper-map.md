---
Alias: "ocr"
---

# OCR Paper Map

## Overview

```dataview
table length(rows.file.link) AS Count
From #ocr
FLATTEN file.tags AS tag
GROUP BY tag
SORT length(rows.file.link) DESC
```

## Datasets

```dataview
table title
From #ocr and #dataset
```

## Papers

```dataview
table status
From #ocr and #paper
SORT status DESC
```

## Tasks

### 语种维度

- 中文
- 英文
- 小语种

### 应用类型

- 验证码识别。基本不用 detection，可以直接做 recognization
- 车牌、门牌识别。通常需要 detection 先截取车牌的 bbox。灯光、旋转、扭曲等是主要的复杂度。
- 自然场景下的文字识别 STR。比如，广告牌的文字。特点是，文字稀疏，布局、颜色、字体变化多样。重点应用，猜测是社交平台的图片审核。
- 手写文字识别 Handwriting。比如，学生的作业批改。NN 模型一般有能力学到语言学特征，给出更准确的结果。但，作业批改场景，需要保留学生的拼写和语法错误。
- 手写文字，区分作者。类似笔记鉴定的分支。落地的需求，也可能是剔除纸张本身默认存在的 slogan 文字。
- 票据识别。一般是打印体，难点主要是 table 布局引入的文字间相互关系识别。
- 卡证识别。银行卡、身份证等。类似票据识别，但要简单很多。
- 数学公式识别。需求通常是自动转 latex 语法。比票据识别更复杂的空间关系。然后叠加手写识别的难点。

##  方法综述

![](https://tva1.sinaimg.cn/large/e6c9d24ely1h3peql9s6lj20fi0claal.jpg)

## 一些 Notes

提升算法性能的 tricks：

1. 相比于模型结构调参，top1 重点还是在训练数据集的黑魔法上
3. 实验不同的backbone。不同任务可能适应不同的backbone
4. 换 loss 函数。比如 focal loss + OHEM
5. BeamSearch

## Datasets

标注很难。比如，这个应该标注 ”清真“，还是”清直“。真的两个点被遮掉了。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h32c31dwzyj203f00r0pg.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24ely1h3pepg9f6sj20fh08y75j.jpg)

## More Papers

### Detection

Shape Robust Text Detection With Progressive Scale Expansion Network

(PAN) Efficient and Accurate Arbitrary-Shaped Text Detection With Pixel Aggregation Network

ContourNet: Taking a Further Step Toward Accurate Arbitrary-Shaped Scene Text Detection

Real-time Scene Text Detection with Differentiable Binarization

### Recognation

[What Is Wrong With Scene Text Recognition Model Comparisons](../02-References/What%20Is%20Wrong%20With%20Scene%20Text%20Recognition%20Model%20Comparisons.md)

### Spotting

Mask TextSpotter: An End-to-End Trainable Neural Network for Spotting Text with Arbitrary Shapes

ABCNet: Real-time Scene Text Spotting with Adaptive Bezier-Curve Network

FOTS: Fast Oriented Text Spotting with a Unified Network