# Paper Reading - Face Detection

Created: 2022-05-29 01:00

## 综述 Paper

[Handbook-of-Face-Recognition-2nd](../../04-pdf/files/Handbook-of-Face-Recognition-2nd.pdf)

[2001-Face-Detection-A-Survey](../../04-pdf/files/2001-Face-Detection-A-Survey.pdf)

## 经典 Paper

[2001-Rapid-Object-Detection-Boosted-Cascade](../../04-pdf/files/2001-Rapid-Object-Detection-Boosted-Cascade.pdf)

[2004-Robust Multipose Face Detection in Images](../../04-pdf/files/2004-Robust%20Multipose%20Face%20Detection%20in%20Images.pdf)

[2015-Multi-view-Face-Detection](../../04-pdf/files/2015-Multi-view-Face-Detection.pdf)

[2016-mtcnn](../../04-pdf/files/2016-mtcnn.pdf)

## 问题定义

给定一张图像，输出图像上所有的人脸(Object)框位置（x,y,w,h）

处理实际问题时，需要在需求层面对齐:
1. 能识别出的最小人脸（object）是多少像素。
2. 最终部署 inference 时，需要切阈值。Recall 和 FA 的 tradeoff

## 常见套路

Face Detection 的复杂度显著小于通用 Object Detection，
因此很小的网络模型就能得到比较好的结果，

下游一般是 alignment。做完 alignment 再 recognition。

bad case 分析时，套路：

1. 先看数据特征，加减数据重新训练。
2. 改超参数和网络结构，优化网络结构（暴力搜，NAS）
3. 上规则，加个 model，工程层面解决。


主要的数据特征维度：

1. 遮挡
2. 人脸角度
3. 面内旋转（rotate 图片）
4. 不清晰：光照、扭曲
5. 大小

常见的规则套路，不要对效果抱有太高的预期

1. 使用人脸五官关键点（landmark）位置和 appearance 信息作为主要特征。计算正脸、低头、角度等，然后处理。
2. 根据 HOG 特征等处理

## 传统 HOG + SVM

### 应用现状

基本淘汰了，现在普遍是 deep learning 了。

人脸识别、车牌识别，一般可以 accuracy > 95%，inference time < 0.3ms。CNN based，一般需要 2-8ms。

经典的CNN（比如AlexNet）在十万量级的训练数据的支撑下，比较容易做到在性能方面相比传统的 DPM、Boosting有优势。

基于传统规则的，Recall 相对容易提起来，但 FA 很难处理。可以加 post filter 解决。post filter 是一个二分类模型，表示是否 positive。可以用 AlexNet 等轻量级 CNN 模型做。

一些这个时期的典型 paper，感受一下

- [2004-Robust Multipose Face Detection in Images](../../04-pdf/files/2004-Robust%20Multipose%20Face%20Detection%20in%20Images.pdf) 面内旋转45度以内（通过旋转图像获得）

### 算法原理

属于 Boosting 方法。

- HOG 提取图像的纹理特征。
- SVM在本质上是一种线性分类器，分类主要依靠 y = w^T x + b。在分类器表现良好的情况下，w的值应该在相似的区域有较小的相应，在差异较大的区域有较大的相应。

HOG是从图像中抽取特征的一种算法，主旨思想在于统计图像局部区域的梯度方向信息来作为该局部图像区域的表征。

HOG特征抽取大致包括如下步骤：

1. （Optional）将整个图片灰度化
2. （Optional）对图做颜色空间的归一化，以降低局部光照或阴影造成的变化
3. 计算图中每个像素的梯度（方向及大小）
4. 将图划分成网格，每个网格叫做一个Cell，每个Cell的大小为CellSize x CellSize（在我们的代码中叫bin_size），例如4x4
5. 对于一个Cell，将其中每个像素的梯度统计成直方图作为Cell的descriptor，直方图的做法通常是将360度等分成若干个区间，统计落在每个区间中的梯度大小之和。
6. （Optional）将每几个cell组成一个block（例如3x3个cell），一个block内所有cell的特征descriptor串联起来便得到该block的HOG特征descriptor，对每个block中的cell再做一次对比度归一化。
7. 将图像image内的所有cell的HOG特征descriptor串联起来即得到图片的HOG特征descriptor

通过多个SVM二分类器可以实现多分类任务，主要有以下两种策略

- **1vAll**：针对每个分类都训练一个分类器（0分类器，1分类器……Z分类器）。对于需要分类的向量，取inference分数最高的分类器为该图片的分类。
- **1v1**：对于n分类，每两个分类都训练一个分类器（如0-1分类器，0-2分类器，0-3分类器），一共有n*(n-1)/2个分类器。在对向量进行分类时，每个分类器为其inference得到的分类投一票（如0-1分类器判别该向量为0，则为分类0投一票），最终得票最多的分类为算法所得结果。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2omdyhvnfj20gz0aomxa.jpg)

### 具体例子

数字 0 和数字 8 的比较如下：

依次是数字0的HOG特征、数字8的HOG特征，1v1 SVM的8-0模型

数字0和数字8的上半部分和下半部分比较相似（类似半圆），体现在最右侧的图上，上部和下部比较暗。

在中间部分相差比较大：数字0的HOG特征主要为上下方向，数字8为的方向比较发散。体现在最右侧的图上，竖直方向（相似部分）较暗，其他方向（差异部分）比较亮。

因为不同图像在计算HOG特征时存在一定的偏移，因而在左右方向上存在一定的模糊。

通过对不同图形差异明显的区域进行不同的加权，使得 y = w^T + b 的值的差异最大化，最终实现比较准确的分类结果。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2om0zkrjfj202i050web.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2om1zv4z8j202i050jr8.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2p91fw5m6j202i050744.jpg)

## CNN Detection

例如  已经能做到92.7%，不比Faster R-CNN + Resnet-50差太多

训练时间参考：1s/iter, 50k iter 收敛。约 13 小时。infer 速度 < 3ms.
20k iter 时，就很接近最终的收敛位置了，大约 5 小时。

若 140QPS(7.159ms/张)

目前主流方案，应该还是 SSD 为主。backend 用 ResNet50。在小人脸上，默认的算法指标可能偏差，需要一些 tuning。

SSD net inference的输出分为两部分，bbox和类别。其中bbox由prior_box_layer生成，其对应的confidence loss就是输出的score。因此prior_box_layer上产生的box大小直接影响最终能检测到多大的人脸。而由于训练过程并不能减少负例的生成，只能降低负例的score，因此训练时的loss始终在1-2之间。

训练时注意，在模型初步收敛之后，train loss仍然维持在一个比较高的值，在1到2之间。我认为这是因为SSD net的loss由两部分组成，location loss和confidence loss。在multibox_loss_layer中，对这两种loss进行分别计算。location loss是根据生成的bbox和gt之间计算L1 Smooth Loss，随着训练的进行预测出的bbox和gt之间的越来越接近，location loss会逐渐接近0;confidence loss是将预测出的和gt匹配的bbox视为正例，剔除部分分数高但不是最高匹配的bbox，再将剩下的bbox视为负例，进而计算Softmax Loss。由于进入multibox_loss_layer的bbox的数量是固定的，因此随着训练的进行，负例仍然存在且比例相对恒定，因此confidence loss不会趋近于0。

使用Adam solver比SGD solver收敛的更快，而且初步收敛后得到的性能更好

网络结构中的超参数主要可以分为三大类：prior_box生成部分、multibox_layer计算部分和detection_output部分。

1. batch size 是否影响算法性能？
2. training loss 如果有巨大抖动，一般是数据引起的。关键是，哪种特征的数据，影响 loss 的逻辑链条。如何解决。如果是周期性的规律抖动，可能是数据没有 shuffle。
3. 提升算法指标时，一定要想清楚，当前 fail 的数据特征是什么，占比是多少。新的算法能解决多少，最终的指标对应的能提升多少。这些都是可以计算的，不是摸彩票。

## References

1. [Paper Reading - Object Detection](Paper%20Reading%20-%20Object%20Detection.md)
