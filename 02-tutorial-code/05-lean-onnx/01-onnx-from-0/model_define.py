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


# nodes {
#   name: "conv1"
#   op_type: "conv2d"
# }
# nodes {
#   name: "batch_norm1"
#   op_type: "batch_norm"
# }
# nodes {
#   name: "relu1"
#   op_type: "relu"
# }
