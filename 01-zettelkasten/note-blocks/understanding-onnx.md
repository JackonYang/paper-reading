# Understanding ONNX

Created: 2022-08-20 23:34

## Summary

盘点ONNX模型部署有哪些常见问题，以及针对这些问题提出一些解决方法

## ONNX 是什么

ONNX 全称: 开放神经网络交换（Open Neural Network Exchange）

微软和 Facebook 最早提出。

deep learning 的框架越来越多，大家的模型格式相互不兼容，相互转换的的工作量，非常大。有了 ONNX 以后，只要能跟 ONNX 相互转即可。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5drmjynodj211409bgm8.jpg)

ONNX文件不仅存储了神经网络模型的权重，也存储了模型的结构信息以及网络中每一层的输入输出等信息。

## Onnx 生态

### Protobuf 协议

onnx 是一堆 proto 文件定义的 model 格式。[Proto Introduction](protobuf-install-and-introduction.md)

是一种格式定义。技术上，就是写了一套 proto 文件，然后开发了一堆与其他 proto 转来转去的工具代码。

源码目录截图如下 https://github.com/onnx/onnx/tree/main/onnx

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5drcc9obij216m0n242t.jpg)

### Netron - 模型结构可视化

Netron 网站: https://netron.app/

注意: https://github.com/daquexian/onnx-simplifier
早期版本 ONNX 模型可视化的细节太多，有点乱。onnx-simplifier 可解决。实测，不需要了，默认就已经做过简化了。

Netron 介绍

1. 既可以在线使用，也有本地客户端。
2. 除了 ONNX，还支持多种其他格式的模型。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5dryw29b8j215h0u0ado.jpg)

ONNX 模型的可视化效果

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5ds2ydszvj21db0u0wgq.jpg)

### onnxruntime

TODO

## References

1.
