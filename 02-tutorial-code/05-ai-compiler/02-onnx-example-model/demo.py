import onnx
from onnx import helper
from onnx import AttributeProto, TensorProto, GraphProto

# 创建输入 (ValueInfoProto)
X = helper.make_tensor_value_info('X', TensorProto.FLOAT, [3, 2])
pads = helper.make_tensor_value_info('pads', TensorProto.FLOAT, [1, 4])
value = helper.make_tensor_value_info('value', AttributeProto.FLOAT, [1])

# 创建输出 (ValueInfoProto)
Y = helper.make_tensor_value_info('Y', TensorProto.FLOAT, [3, 4])

# 创建节点 (NodeProto)
node_def = helper.make_node(
    'Pad',  # node name
    ['X', 'pads', 'value'],  # inputs
    ['Y'],  # outputs
    mode='constant',  # attributes
)

# 创建图 (GraphProto)
graph_def = helper.make_graph(
    [node_def],
    'test-model',
    [X, pads, value],
    [Y],
)

# 创建模型 (ModelProto)
model_def = helper.make_model(graph_def, producer_name='onnx-example')

print('The model is:n{}'.format(model_def))
onnx.checker.check_model(model_def)
print('The model is checked!')
