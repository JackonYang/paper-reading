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
