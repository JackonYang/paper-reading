# nvidia-docker: Enabling GPUs in Docker

Created: 2022-08-19 23:37

## 误区澄清

很多人担心，用 docker 以后会有性能损失，尤其是高 IO 的任务。

曾经，这是对的。现在，基本没有性能损失了，可以忽略。

https://stackoverflow.com/questions/21889053/what-is-the-runtime-performance-cost-of-a-docker-container

Docker is nearly identical to native performance and faster than KVM in every category

结论来自 2014 IBM research paper [An Updated Performance Comparison of Virtual Machines and Linux Containers](http://domino.research.ibm.com/library/cyberdig.nsf/papers/0929052195DD819C85257D2300681E7B/$File/rc25482.pdf) by Felter et al. 作者比较了 bare metal, KVM, and Docker containers

## 为什么用 docker 部署模型

1. 可以用 k8s 等方案管理 GPU 机器了。
2. 支持多版本的环境更简单。Nvidia 把 driver + CUDA + tensorrt 等的版本组合，搞的太复杂了。业务上，不同的模型，经常要求不同的版本组合 + 不同的 tensorflow 版本。裸机支持多版本的环境，很炸裂。

## 用法

### 环境安装

需要安装 3 个东西：

1. nvidia driver
2. docker 19.03+
3. nvidia-docker

nvidia driver 的安装，此处不讨论。

Docker 和 nvidia-docker 的安装脚本：

```bash
# ================== install docker 19.03 ==========================
sudo apt-get update

sudo apt-get install -y
    apt-transport-https
    ca-certificates
    curl
    gnupg-agent
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu
   $(lsb_release -cs)
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# ================== install nvidia-docker() ==========================
# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update

sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
```

### 运行 & 安装检查

```bash
docker run --gpus all -it nvidia/cuda /bin/bash
/# nvidia-smi
# 预期看到跟 docker 外一样的输出
```

## nvidia-docker 原理

先要搞懂 docker 的原理，参考 [docker-and-oci-runtimes](docker-and-oci-runtimes.md)

nvidia 的官方原理介绍文章：

* nvidia-docker2: https://developer.nvidia.com/blog/gpu-containers-runtime/
* nvidia-docker (已废弃): https://developer.nvidia.com/blog/nvidia-docker-gpu-server-application-deployment-made-easy/

### Why nvidia-docker

原生 docker 不支持 nvidia GPU。

docker 容器，都是假设与 platform 和 hardware 无关的。但是，Nvidia 的 GPU 不满足这个假设。要用 OS 的 kernel module 和 nvidia-driver 等用户层的驱动库。

早期的 workaround 是把 nvidia driver 在 docker 内也装一份。这要求 docker 内外的 driver 版本必须 exactly 一致，

这很脆弱，也很难把同一个 image 跑在不同型号的 GPU 上。

### The NVIDIA Container Runtime

解决方案是，整一个 GPU-aware container runtime。与 [OCI](docker-and-oci-runtimes.md) 标准的 runtime 兼容。

container 启动时，把 host 机器上的 driver 和 GPU device files 挂载到 container 里。

### 2018.06 - 第 2 代方案

原理图

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cm8dne4oj20hd0ggabi.jpg)

接入的细节，在 runc 层接入。

1. 整了一个 runc 的 prestart hook。
2. prestart hook 的接入，要求注册一个新的 OCI 兼容的 runtime。通过 -runtime 参数指定。
3. 容器启动时，prestart hook 通过环境变量检查是否启动 GPU，并选择对应的 runtime 把 GPU 挂进 container 里。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cmddsv5bj20hd06oglz.jpg)

### 2016.06.27 第 1 代方案

与第 2 代的最大区别是，container 里没有画 mapped Nvidia driver，实际是有的。

原理上，好像是对 docker 命令再封装里一层。

1. driver-agnostic CUDA images; and
2. a Docker command line wrapper that mounts the user mode components of the driver and the GPUs (character devices) into the container at launch.

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cnd86n9yj20ei0a9dgu.jpg)

题外话，这篇文章，用了大量的篇幅介绍什么是 docker，怎么用。体现了 2016 年时的 docker 普及度远不及 2018 年。

## References

1. https://developer.nvidia.com/blog/gpu-containers-runtime/
2. https://developer.nvidia.com/blog/nvidia-docker-gpu-server-application-deployment-made-easy/
