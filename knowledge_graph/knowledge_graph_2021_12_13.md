# 知识地图 2021.12.13

## deep learning models

NLP、CV、语音等都要解决的通用问题。

包括但不限于：

CNN 模型
RNN 模型
轻量模型：MobileNet 等
模型量化
无监督学习

## CV

图片、视频相关。包括但不限于：

- 识别
- 检测
- 分割
- 生成

#### code

_Face Detection_

- [face detection using opencv](src/face-detection/face-detection-using-opencv.ipynb)
- [face detection using Deep Learning](src/face-detection/face-detection-using-deep-learning.ipynb)

## NLP

#### 技能要点

包括但不限于：

- 文本分类
- 阅读理解
- 机器翻译
- 文本相似度计算
- 文本生成
- 对话系统

## 语音

包括但不限于：

- 语音识别
- 语音合成
- 声纹识别
- 语音唤醒
- 说话人分离

# 芯片与硬件

TODO


# coding(开发)

## 编程语言

语言之争，仁者见仁。

我的选择：

1. 指令集：x86, arm 的精简指令集
2. 高性能计算语言：c++
3. 脚本语言：python。深度学习框架普遍支持
4. 工具类：shell

## 开发环境

以用为目的，不深究原来和实现

- Linux
- git, vim, docker 等


## debug

遇到这些问题怎么办：

- 内存泄露
- stack over flow
- segment fault
- 我的代码 work 了，但不知道为什么
- 我的代码不 work 了，但不知道为什么

工具：

- gdb

## CPU 性能优化

TODO

#### CUDA 编程与性能优化

TODO

# 框架

## 深度学习框架

Caffe, MxNet, TensorFlow etc

## 推理框架

TensorRT, OpenVINO

# DevOps

## 集群

- docker
- k8s
- argo/airflow

- 会用。普遍需要
- 会运维。大部分人不需要。

## 存储

- NFS
- OSS
- 开源系统：ceph

## Pipeline & Graph

好像不应该单列，但现在的框架，名字不是 xxxFlow，就是 yyyFlow。
底层模型，非 Pipeline 即 Graph。
与时俱进，把这个也单列出来。
