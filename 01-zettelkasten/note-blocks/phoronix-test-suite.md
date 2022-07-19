# Phoronix-test-suite

Created: 2022-05-20 10:11

## Install

```bash
wget https://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_10.8.3_all.deb --no-check-certificate
sudo dpkg -i phoronix-test-suite_*.deb
# 如果上一步运行报错，请执行. 一般是缺依赖导致
sudo apt-get install -f
```

也可以下载 tar 包，解压后直接使用。详见官网介绍

可以改进的地方（未探索）

```bash
NOTICE: The following PHP extensions are OPTIONAL but recommended:

GD        The GD library is recommended for improved graph rendering.
Bzip2     The bzcompress/bzip2 support can be used for greater file compression.
SQLite3   SQLite3 is required when running a Phoromatic server.
CURL      CURL is recommended for an enhanced download experience.
```

## 查看系统信息

```bash
phoronix-test-suite system-info
```

### 家用 i7 台式机的例子

1. cpu 支持 SSE，AVX2，AVX 等 SIMD 指令集
2. chipset 是 Xeon

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2enhri0cnj211p0u0dk0.jpg)

### 服务器的例子

1. 核数高，单核的主频降了很多。4.5GHz vs 2.6GHz
2. 支持 AVX512CD，比我的 PC 机多了一个。
3. Cache 大很多。8M vs 19.25MB
4. 插了 2 个 GeForce RTX 2080 Ti 显卡，但显示不清晰。用 `nvidia-smi -L` 看

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2euufb4goj20vf0u0785.jpg)

## References

1. https://github.com/phoronix-test-suite/phoronix-test-suite
2. [https://www.phoronix-test-suite.com/?k=downloads](https://www.phoronix-test-suite.com/?k=downloads)
