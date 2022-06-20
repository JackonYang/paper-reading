# DVC-usage

Created: 2022-06-18 16:31

## 背景

机器学习的项目，除了代码、配置和文档，还有数据、模型等大文件。数据和模型，尤其是二进制格式的，不适合用 git 做版本管理。

为创建可复现的机器学习实验，数据和模型的版本管理很重要。DVC 就是解决这个问题的。

## DVC 介绍

### 数据的 .dvc 小文件

数据交给 dvc 管理以后，本地会创建一个 .dvc 文件，记录数据的 md5、文件数量等少量基本信息。根据 .dvc 文件，可以拉取 remote 仓库的原始数据文件。

remote 仓库，可以是 AWS S3, 阿里云 OSS, 甚至是普通的文件系统等。

.dvc 是一个很小的文本文件，一般交给 git 管理。

### 项目的 .dvc 目录

通过 `dvc init` 初始化，本地会创建 .dvc 目录。内含 config/cache 等文件。就像 git 创建的 .git 目录一样。

创建后的典型 .dvc 目录，远端见 [github - iTableOcr 项目](https://github.com/JackonYang/iTableOcr/tree/master/.dvc)，本地见如下截图。会提交到远端的，只有 config 文件和 .gitignore 文件。

.dvc 目录下的 .gitignore，主要是防止被 dvc 管理的原始大文件，误提交到 git 中。dvc 命令会自动更新 .gitignore 文件，一般无需手动维护。（本地的 tree 命令，默认不展示隐藏文件）

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3dcfr10q0j20fy0h33zg.jpg)

### 最佳实践

一般规则：

1. git 中，管理代码、配置、文档。通常文件大小 <1M，文本格式。
2. DVC 中，管理数据、模型。通常文件大小 >1M，不关心是否二进制文件。

项目规则：

1. 超过 1MB 的文件，建议用 dvc 提交。包括但不限于模型、数据。
2. 低于 1M 的数据 & 模型，也建议用 dvc。统一管理。
3. 如果单个模型/数据的小文件很多，合并和压缩为 1 个文件，再用 dvc 管理。
4. 如果数据 & 模型占用的空间较大，需要定义过期数据的清理机制。
5. 尽量创建新的 .dvc 文件，而不是反复修改同一个 dvc。dvc 并不会像 git 一样记录每次改动的 commit message，changlog 只能看到 md5、文件 size 和文件数量变化，难以 review 历史版本。

## DVC 使用说明

### 安装 DVC

```bash
# 支持所有远端存储
pip install dvc[all]
# 阿里云 OSS 做 remote 存储
pip install 'dvc[oss]'
# AWS S3 做 remote 存储
pip install 'dvc[s3]'
```

### 管理员初始化 DVC 仓库

以阿里云 OSS 作为 remote 存储为例。

需要先在阿里云 OSS 创建好 bucket，并拿到有访问权限的账号、密码。

注意，如果是用子账号，需要单独配置 OSS 的 access 权限，新的子账号默认不能读写 OSS。

本地的 DVC 配置命令如下：

```bash
dvc init

# 常用的默认配置修改
dvc config core.analytics false
dvc config core.autostage true

# config for aliyun OSS
dvc remote add -d aliyun_oss oss://jack-datasets/datasets
dvc remote modify aliyun_oss oss_endpoint oss-cn-hangzhou.aliyuncs.com
dvc remote modify --local aliyun_oss oss_key_id 'KEY_ID'
dvc remote modify --local aliyun_oss oss_key_secret 'KEY_SECRET'
```

说明：`--local` 的配置，会写入 config.local, 不会提交到 Git 中。

### 普通用户使用

```bash
# 配置 token，如果 remote 存储需要的话。
dvc remote modify --local aliyun_oss oss_key_id 'KEY_ID'
dvc remote modify --local aliyun_oss oss_key_secret 'KEY_SECRET'

# ====== 常用命令 ======

# 从 remote 仓库拉取/同步数据，也可以用来快速检查环境配置是否成功
dvc pull

# 匹配的文件全部交给 dvc 管理，创建一个 .dvc 新文件
# add 之后，一般跟 git 命令，向 git 提交新创建的 .dvc 文件。
dvc add xxx

# 上传到 remote 仓库
dvc push
# 查看 push log
dvc push -v

# pull executes dvc fetch followed by dvc checkout
dvc checkout data/raw/val.dvc
dvc fetch data/raw/val.dvc

# 查看数据是否变更
dvc status

# 删除文件. 默认只会删除本地 .dvc 文件 & 更新 .gitignore。
# --outs 顺便删除本地被管理的文件。
# remove 后，一般跟 git 命令，从 git 删除对应的 .dvc 文件。
# https://dvc.org/doc/command-reference/remove
dvc remove *.dvc --outs
# 待验证。删 remove cloud 里的用不上的
# https://dvc.org/doc/command-reference/gc
dvc gc --workspace -c
```

## 更多 DVC Remote 介绍

### 支持的 Remote List

只是一个参考，不全。

1. local - 本地目录
3. s3 - 亚马逊 S3
4. gs - Google 云端
5. azure - Azure Blob
6. ssh - ssh
7. hdfs - Hadoop 分布式文件系统
8. http - HTTP 和HTTPS 协议

### AWS S3

可以将如下 S3 配置文件文件放置在 ~/.aws/config，不用放在 .dvc 目录的 config.local 里。

```bash
[default]
aws_access_key_id = XXXX
aws_secret_access_key = YYYY
```

## Python API

```python
import dvc.api

with dvc.api.open(
	'get-started/data.xml',
	repo='https://github.com/iterative/dataset-registry'
	) as fd:
	# 其中，fd是可以进行正常处理的文件描述符
```

## FAQ

### Already Tracked by Scm

Q: 尝试使用 dvc add 更新目录时提示 already tracked by scm

A: 先使用 `git rm --cached -r $DIR` 删除目录，然后再调用 `dvc add $DIR`，最后用 `git checkout HEAD $symlink` 将被删除的软链恢复

## References

1. https://dvc.org/doc
