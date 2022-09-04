# Understanding ONNX

Created: 2022-08-20 23:34

## Summary

盘点 ONNX 模型部署有哪些常见问题，以及针对这些问题提出一些解决方法

1. 已覆盖 onnx 的基本介绍和基本原理中最简单的部分。
2. onnx 的高级话题，基本未涉及，以后再说。比如，动态图的支持，逻辑分支的支持等。

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

onnx.in.proto 是源码，有效代码，只有 217 行。其他都是注释和空行。

代码非常简单，看源码就行，无需多解释。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5o4k3ts4ej20wk0bowfz.jpg)

主要的类型 & 关系

- ModelProto: GraphProto + 版本号和注释等辅助信息
	- GraphProto: DAG 的定义
		- NodeProto: operator node
			- AttributeProto
			- repeated string 的 input / output 字段存储了 op 的拓扑关系。
		- TensorProto: 张量。 graph 的 initializer 属性中，存储 constant inputs。
		- ValueInfoProto。input/output 和 value_info 字段。有点像 placeholder。

```protobuf
// Level 0
// ModelProto is a top-level file/container format for bundling a ML model and
// associating its computation graph with metadata.
//
// The semantics of the model are described by the associated GraphProto's.
message ModelProto {
  optional int64 ir_version = 1;

  optional string doc_string = 6;

  optional GraphProto graph = 7;
}

// Level 1
message GraphProto {
  // The nodes in the graph, sorted topologically.
  repeated NodeProto node = 1;

  // The name of the graph.
  optional string name = 2;   // namespace Graph

  // A list of named tensor values, used to specify constant inputs of the graph.
  repeated TensorProto initializer = 5;

  // The inputs and outputs of the graph.
  repeated ValueInfoProto input = 11;
  repeated ValueInfoProto output = 12;
}

// level 2.1
message NodeProto {
  repeated string input = 1;    // namespace Value
  repeated string output = 2;   // namespace Value

  // An optional identifier for this node in a graph.
  // This field MAY be absent in ths version of the IR.
  optional string name = 3;     // namespace Node

  // The symbolic identifier of the Operator to execute.
  optional string op_type = 4;  // namespace Operator
  // The domain of the OperatorSet that specifies the operator named by op_type.
  optional string domain = 7;   // namespace Domain

  // Additional named attributes.
  repeated AttributeProto attribute = 5;

  // A human-readable documentation for this node. Markdown is allowed.
  optional string doc_string = 6;
}

// level 2.2
message TensorProto {
  // The shape of the tensor.
  repeated int64 dims = 1;

  // The data type of the tensor.
  // This field MUST have a valid TensorProto.DataType value
  optional int32 data_type = 2;

  // For float and complex64 values
  // Complex64 tensors are encoded as a single array of floats,
  // with the real components appearing in odd numbered positions,
  // and the corresponding imaginary component appearing in the
  // subsequent even numbered position.
  repeated float float_data = 4 [packed = true];
  // For int32, uint8, int8, uint16, int16, bool, and float16 values
  // float16 values must be bit-wise converted to an uint16_t prior
  // to writing to the buffer.
  repeated int32 int32_data = 5 [packed = true];
  repeated bytes string_data = 6;
  repeated int64 int64_data = 7 [packed = true];

  // Optionally, a name for the tensor.
  optional string name = 8; // namespace Value

  // A human-readable documentation for this tensor. Markdown is allowed.
  optional string doc_string = 12;
}

message AttributeProto {
  optional string name = 1;
  optional AttributeType type = 20;  // discriminator that indicates which field below is in use

  // Exactly ONE of the following fields must be present for this version of the IR
  optional float f = 2;               // float
  optional int64 i = 3;               // int
  optional bytes s = 4;               // UTF-8 string
  optional TensorProto t = 5;         // tensor value
  optional GraphProto g = 6;          // graph
  optional SparseTensorProto sparse_tensor = 22;  // sparse tensor value
  // Do not use field below, it's deprecated.
  // optional ValueProto v = 12;         // value - subsumes everything but graph
  optional TypeProto tp = 14;          // type proto

  repeated float floats = 7;          // list of floats
  repeated int64 ints = 8;            // list of ints
  repeated bytes strings = 9;         // list of UTF-8 strings
  repeated TensorProto tensors = 10;  // list of tensors
  repeated GraphProto graphs = 11;    // list of graph
  repeated SparseTensorProto sparse_tensors = 23; // list of sparse tensors
  repeated TypeProto type_protos = 15;// list of type protos
}
```

### ONNX helper

[DEMO CODE](../../02-tutorial-code/05-ai-compiler/02-onnx-example-model/README.md)

提供的make_node，make_graph，make_tensor等等接口完成一个ONNX模型的构建

GraphProto中的input数组不仅包含我们一般理解中的图片输入的那个节点，还包含了模型中所有的权重。例如，Conv层里面的W权重实体是保存在initializer中的，那么相应的会有一个同名的输入在input中，其背后的逻辑应该是把权重也看成模型的输入，并通过initializer中的权重实体来对这个输入做初始化，即一个赋值的过程。

最后，每个计算节点中还包含了一个AttributeProto数组，用来描述该节点的属性，比如Conv节点或者说卷积层的属性包含group，pad，strides等等，每一个计算节点的属性，输入输出信息都详细记录在https://github.com/onnx/onnx/blob/master/docs/Operators.md。

### ONNX checker

TODO

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

## FAQ

### ONNX or Caffe？

基于Caffe进行部署的方式仍然在工业界发力，ONNX是趋势，但是ONNX现在还没有完全取代Caffe。

这个问题其实源于之前做模型转换和基于TensorRT部署一些模型时候的思考。我们还是以Pytorch为例，要把Pytorch模型通过TensorRT部署到GPU上，一般就是Pytorch->Caffe->TensorRT以及Pytorch->ONNX->TensorRT（当然Pytorch也是支持直接转换到TensorRT，这里不关心）。那么这里就有一个问题，我们选择哪一条路比较好？
其实，我想说的应该是Caffe是过去，而ONNX是将来。为什么要这样说？

### op 粒度问题

ONNX还有一个缺点就是OP的细粒度太细，执行效率低，不过ONNX已经推出了多种化方法可以将OP的细粒度变粗，提高模型执行效率。目前在众多经典算法上，ONNX已经支持得非常好了。

### if 逻辑分支不支持

todo

### Pytorch to onnx

单纯从Pytorch转成一个ONNX文件很简单。但是不同后端设备接受的onnx是不一样的，因此这才是坑的来源。
onnx 标准规定了每一个算子的语义，而不仅仅是格式。文章里说的 maxunpool 的问题应该是转换器的 bug

可将onnx转成隐式batch模型

onnx 的分支支持。

不同的后端设备，指的是什么。

Pytorch自带的torch.onnx.export转换得到的ONNX，ONNXRuntime需要的ONNX，TensorRT需要的ONNX都是不同的。

Pytorch的MaxUnpool实现是接收每个channel都从0开始的Idx格式，而Onnxruntime则相反。因此如果你希望用Onnxruntime跑一样的结果，那么必须对输入的Idx（即和Pytorch一样的输入）做额外的处理才可以。换言之，Pytorch转出来的神经网络图和ONNXRuntime需要的神经网络图是不一样的。

## References

1. Onnx 的 Python API: https://github.com/onnx/onnx/blob/main/docs/PythonAPIOverview.md
2. Onnx Operator Schemas: https://github.com/onnx/onnx/blob/main/docs/Operators.md
3. Onnx Optional Type: https://github.com/onnx/onnx/blob/main/docs/ONNXTypes.md
