# Lstopo - 查看硬件拓扑信息

Created: 2022-05-20 10:26

## 安装

lstopo 需要手动下载、编译

```bash
# 安装显示图形需要的依赖库
sudo apt-get install libcairo2-dev

# v1.11 是一个超级稳定的大版本
wget https://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.8.tar.gz
tar -xvzf hwloc*.tar.gz

# install
cd hwloc*/
./configure
make -j
```


`./configure`  后的提示

```bash
-----------------------------------------------------------------------------
Hwloc optional build support status (more details can be found above):

Probe / display I/O devices: PCI(linux)
Graphical output (Cairo):    yes
XML input / output:          basic
libnuma memory support:      no
Plugin support:              no
-----------------------------------------------------------------------------
```

如果没装 `libcairo2-dev`，Graphical output (Cairo) 是 no，不能输出 pdf 或者 png 的 topology 图。

## 画图命令

在 lstopo 的安装（编译）目录下执行
```bash
# 输出为 png 格式
./utils/lstopo/lstopo topo.png
# 输出为 pdf 格式
./utils/lstopo/lstopo topo.pdf
```

### i7 个人台式机的输出

1. 单颗芯片，4 个物理核，8 个逻辑核。
2. 逻辑核 i 和 i+4 在同一个物理核上，绑核时要小心是否想绑在同一个物理核上。
3. 插了 一个显卡 card0
4. L1 cache 是逻辑核独享。L2 cache 是物理核独享，物理核内的逻辑核，共享。L3 是所有核共享
5. 内存 16G
6. 插了一个硬盘 sda
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2ep7199p1j216m0u0tcn.jpg)

### 服务器 CPU 的输出 Case 1

1. 2 颗芯片，每颗有 126G 的 local 内存，是 numa 架构。
2. 每颗芯片 14 个物理核，28 个逻辑核。物理核的编号比较随机。
3. 一共 6 张显卡。一个插了 4 张。1 个插了 2 张。另外 2 个 PCI 插了网卡和硬盘。
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2euj8gdy5j226g0rsajo.jpg)

### 服务器 CPU 的输出 Case 2

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2euig2hpyj21sl0u0aj5.jpg)

## References

1. https://www.open-mpi.org/projects/hwloc/
2. https://www.open-mpi.org/software/hwloc/v1.11/
