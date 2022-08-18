---
Alias: plan
---

# My Plans and Reviews

Created: 2022-08-06 09:43

## 2022.08.18 - 各种 DL 框架的模型转来转去

因为工作的原因，优先级高于理解 AI compiler 本身。

目标：

1. tensorflow / PyTorch 的模型格式
2. 常见的通用格式：onnx，relay，很快可能出现的 relax
3. 各种格式的差异，转来转去的脚本、注意事项
4. 为了理解格式的差异，可以试着手写个最简单的框架出来。

## 2022.08.06 - AI-compiler 相关

背景：工作相关，需要搞定几个东西：

1. 了解 TVM 的框架，包括 relay、pass、算子等。
2. 理解 TVM 中的图调度，具体是怎么做的，优缺点。
3. 理解 tiling

预期输出：
1. tvm learnilearning map. tutorial code and notes
2. graph scheduler notes
3. tiling notes. [loop-tiling](../note-blocks/loop-tiling.md)
4. 进一步学习的方向 & 相关材料

参考资料：

- 传统的 compiler #compiler [compiler-learning-map](../content-maps/compiler-learning-map.md)
- 图调度 #graph-scheduler
- TVM #tvm
