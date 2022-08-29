# Understanding ONNX

Created: 2022-08-20 23:34

## Summary

盘点 ONNX 模型部署有哪些常见问题，以及针对这些问题提出一些解决方法

## ONNX 简介

### ONNX 是什么

ONNX 全称: 开放神经网络交换（Open Neural Network Exchange）

技术上，onnx 主要包括 2 类代码：

1. proto 文件，定义了如何序列化（存储）模型。[Proto Introduction](protobuf-install-and-introduction.md)
2. 工具代码，方便与其他模型格式转来转去。

微软和 Facebook 最早提出。

deep learning 的框架越来越多，大家的模型格式相互不兼容，相互转换的的工作量，非常大。有了 ONNX 以后，只要能跟 ONNX 相互转即可（这只是一个梦想，实际上，可能是各种坑，比如算子不支持）。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5drmjynodj211409bgm8.jpg)

ONNX 文件不仅存储了神经网络模型的权重，也存储了模型的结构信息以及网络中每一层的输入输出等信息。

### 从 0 手写一个 Onnx

code: [onnx-from-0](../../02-tutorial-code/05-ai-compiler/01-onnx-from-0/README.md)

onnx.proto 文件

```protobuf
# onnx.proto

syntax = "proto3";

package onnx;

// operator node
message NodeProto {
  string name = 1;
  string op_type = 2;

  repeated string inputs = 3;
}

// graph
message GraphProto {
  repeated NodeProto nodes = 1;
  string name = 2;
}

```

定义了表示 DAG 的 2 个基本元素：

1. node. 即 operator 算子。含名字，operator type 和 inputs
2. graph, 由 repeated 的 node 组成。

NodeProto 的 inputs 描述了 DAG 中 op 之间的依赖关系。

使用如下的 protoc 命令编译，生成 python 版本的 API 文件(onnx_pb2.py)。

```bash
protoc --proto_path=. --python_out=. onnx.proto
```

为了手写 deep learning 模型，先要准备好基本算子，此处只用 3 个即可

```python
# operators.py

import onnx_pb2


# 定义Conv OP
def Conv2d(name, inputs=None):
    conv = onnx_pb2.NodeProto()
    conv.op_type = "conv2d"
    conv.name = name

    if inputs is not None:
        conv.inputs.extend(inputs)

    return conv


# 定义BN OP
def BatchNorm(name, inputs=None):
    batch_norm = onnx_pb2.NodeProto()
    batch_norm.op_type = "batch_norm"
    batch_norm.name = name

    if inputs is not None:
        batch_norm.inputs.extend(inputs)

    return batch_norm


# 定义Relu OP
def Relu(name, inputs=None):
    relu = onnx_pb2.NodeProto()
    relu.op_type = "relu"
    relu.name = name

    if inputs is not None:
        relu.inputs.extend(inputs)
    return relu
```

手写一个模型

```python
# model_define.py

import onnx_pb2
import operators


# define container for the DAG
def Sequential():
    seq = onnx_pb2.GraphProto()
    return seq


def DemoModel():
    # operators used in the graph
    conv1 = operators.Conv2d("conv1")
    batch_norm1 = operators.BatchNorm("batch_norm1", ['conv1'])
    relu1 = operators.Relu("relu1", ['batch_norm1'])

    # build model DAG using defined operators
    seq = Sequential()
    seq.nodes.extend([conv1, batch_norm1, relu1])

    return seq


def export(model, output_path):
    with open(output_path, "wb") as f:
        # print to stdio
        print(str(model))

        # save to file
        f.write(model.SerializeToString())


if __name__ == "__main__":
    model = DemoModel()
    export(model, "demo-model.pb")
```

运行得到 `demo-model.pb` 并可以在命令行中看到 模型结构的输出

```bash
python3 model_define.py

# ouptut:
nodes {
  name: "conv1"
  op_type: "conv2d"
}
nodes {
  name: "batch_norm1"
  op_type: "batch_norm"
  inputs: "conv1"
}
nodes {
  name: "relu1"
  op_type: "relu"
  inputs: "batch_norm1"
}
```

在 Netron 中打开 pb 文件，可视化的模型结构如下

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5o4c0jl2ej20c00fe0ss.jpg)

以上，基本体现了 onnx 的核心思想。

## ONNX 源码阅读

### ONNX proto

### ONNX helper

### ONNX checker

## Onnx 生态

### 模型可视化 - Netron

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

运行一个 ONNX 模型，使用不同 runtime 可能会有不同的结果（精度误差）

### 图优化 - Onnx Optimizer

TODO

## References

1.
