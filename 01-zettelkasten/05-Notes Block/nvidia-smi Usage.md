# nvidia-smi Usage

Created: 2022-05-20 14:39

## 查看所有显卡

-L 的输出格式，写代码自动化时，比较有用。

```bash
$ nvidia-smi -L
GPU 0: GeForce RTX 2080 Ti (UUID: GPU-c3136cee-9d16-02ee-5ce0-8037b195c2b9)
GPU 1: GeForce RTX 2080 Ti (UUID: GPU-1b2639a2-cca0-cc35-5115-c3ca00c8aeea)
```

## 查看显卡是否超频

检查 Applications Clocks 和 Default Applications Clocks 的 Graphics 的频率值。看频率和默认频率是否一致。

注意： 超频的单位是每个显卡， 需要确认每个显卡都没有超频。

Graphics 的频率和默认频率都是 885MHz，没有超频。

```bash
$ nvidia-smi -q | grep "Applications Clocks$" -A 10
    Applications Clocks
        Graphics                    : 885 MHz
        Memory                      : 3003 MHz
    Default Applications Clocks
        Graphics                    : 885 MHz
        Memory                      : 3003 MHz
    Max Clocks
        Graphics                    : 1531 MHz
        SM                          : 1531 MHz
        Memory                      : 3003 MHz
        Video                       : 1379 MHz
    Clock Policy
        Auto Boost                  : N/A
        Auto Boost Default          : N/A
--
    Applications Clocks
        Graphics                    : 885 MHz
        Memory                      : 3003 MHz
    Default Applications Clocks
        Graphics                    : 885 MHz
        Memory                      : 3003 MHz
    Max Clocks
        Graphics                    : 1531 MHz
        SM                          : 1531 MHz
        Memory                      : 3003 MHz
        Video                       : 1379 MHz
    Clock Policy
        Auto Boost                  : N/A
        Auto Boost Default          : N/A
```

## 打开显卡超频

```bash
sudo nvidia-smi -pm 1  # 保证任何设置长期有效
sudo nvidia-smi -acp 0  # GPU不限制应用性能
sudo nvidia-smi -ac 3003,1531  # 指定 GPU 频率，依次是 memClock,processorClock
sudo nvidia-smi --auto-boost-default=0
```

### 查看显卡能否超频

不是所有的显卡都能超频，具体要看 Spec 文档。

V100 不能超频。P4 可以超频，文档：[Tesla-P4-Product-Brief](../../04-pdf/files/Tesla-P4-Product-Brief.pdf)
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2evl9qof5j20gd01vmx6.jpg)

### 超负荷可能导致降频

每个型号有最大正常工作温度（NVIDIA 的 GPU 凭经验一般是 86℃ 或者 84℃），这个温度不是物理核心能接受的安全上限，而是一个厂商默认定义的值，到达这个值后会触发降频运行；部分型号这个值可能是比较低的

## References

1.
