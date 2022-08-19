# Docker and OCI Runtimes

Created: 2022-08-20 00:35

## Summary

OCI 是一个标准，规定了

- 如何定义 image
- 如何运行 image

docker 的架构，分 3 层：

1. containerd，多容器的管理
2. containerd-shim，单个 container 的进程保活。类似 supervisor 的功能。
3. runc，实际的单个 container 管理命令。可以手动搞个 root filesystem 并用 runc 拉起一个 container。

内容主要摘录自: https://medium.com/@avijitsarkar123/docker-and-oci-runtimes-a9c23a5646d6

## 什么是 OCI

OCI: Open Container Initiative

* The Open Container Initiative (OCI) 是定义 container 标准的  Linux Foundation project.
* Established in June 2015 by Docker and other leaders in the container industry.
* OCI currently contains two specifications:
	* the Runtime Specification (runtime-spec),
	* the Image Specification (image-spec).
* OCI runtime spec defines how to run the OCI image bundle as a container.
* OCI image spec defines how to create an OCI Image, which includes
	* an image manifest,
	* a filesystem (layer) serialization,
	* an image configuration.

## 常见的 Container Runtimes

* containerd: A CNCF project, manages the complete container lifecycle of its host system that includes image management, storage and container lifecycle, supervision, execution, and networking.
* lxc: LXC provides OS-level virtualization through a virtual environment that has its own process and network space, it uses Linux cgroups and namespaces to provide the isolation.
* runc: runc is a CLI tool for spawning and running containers according to the OCI specification. It was developed by Docker Inc and donated to OCI as the first OCI runtime-spec compliant reference implementation.
* cri-o: CRI-O is an implementation of the Kubernetes CRI (Container Runtime Interface) to enable using OCI (Open Container Initiative) compatible runtimes. It is a lightweight alternative to using Docker as the runtime for Kubernetes.
* rkt:

runtime 主要解决一下问题

- Container image management
- Container lifecycle management
- Container creation
- Container resource management

有的 runtime，大部分工作自己做。比如 rkt。

有的 runtime，只做了一些 high level 的功能，用 runc 等 runtime 处理 low level 任务。

## Docker 的架构

1.11.0 之前，dokcer 是一个庞然大物，什么都自己做。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cjzv9innj20m20jw74v.jpg)

1.11.0 做了重大的重构

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5ck1t055uj212w0nv0v7.jpg)

1. 底层的 container runtime，用了 runc，这也是第一个 OCI runtime。
2. 又整了个 containerd 管理多容器

docker 官方对 runc 和 containerd 的介绍

- https://www.docker.com/blog/docker-engine-1-11-runc/
- https://www.docker.com/blog/docker-containerd-integration/

最新的 docker 或许已经不依赖 runc 了。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5ckcinr7cj21hw07wwgq.jpg)

### containerd

可以单独安装，方法: https://github.com/containerd/cri/blob/master/docs/installation.md

这个安装包还会夹带很多别的东西，与 docker 原理关系密切的是

- runc: to run containers
- ctr: A CLI for containerd
- containerd-shim: to support daemonless containers

通过 `ctr` 命令，可以做很多 docker 的事情，差异是，必须 sudo 才行。

```bash
# pull image
sudo ctr images pull docker.io/library/python:3

# list images
sudo ctr images ls

# run container
sudo ctr run -d docker.io/library/python:3 python
sudo ctr containers ls
```

### containerd-shim

作用类似于 Linux 下的 supervisor 工具。

1. The shim allows for daemonless containers. It basically sits as the parent of the container’s process to facilitate a few things.
2. It allows the runtimes, i.e. runc, to exit after it starts the container. This way we don’t have to have the long running runtime processes for containers.
3. It allows the container’s exit status to be reported back to a higher level tool like docker without having the actual parent of the container’s process running.

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5ckrm9h87j227o0aiadw.jpg)

### runc

通过对 containerd 和  containerd-shim 的介绍可以看到，实际运行 container 的工具是 runc。

`runc --help` 查看用法说明

通过 runc 可以手动运行一个 container，只需要准备 2 个东西：

1. 配置文件。a spec file named config.json
2. 根目录的文件系统。the container image root filesystem

root filesystem 可以用 docker 命令自动生成一个。

```bash
[root@localhost rootfs]# mkdir -p alpine/rootfs
[root@localhost rootfs]# cd alpine
[root@localhost alpine]# docker export $(docker run -d alpine) | tar -C rootfs -xv
[root@localhost alpine]# pwd
/root/alpine/rootfs/alpine
[root@localhost alpine]# ls rootfs/
bin  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
```

配置文件可以用 `runc spec` 命令生成，例子如下

```bash
[root@localhost alpine]# runc spec
[root@localhost alpine]# cat config.json
{
 "ociVersion": "1.0.1-dev",
 "process": {
  "terminal": true,
  "user": {
   "uid": 0,
   "gid": 0
  },
  "args": [
   "sh"
  ],
  "env": [
   "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
   "TERM=xterm"
  ],
  "cwd": "/",
  ...
  ...
  "readonlyPaths": [
   "/proc/asound",
   "/proc/bus",
   "/proc/fs",
   "/proc/irq",
   "/proc/sys",
   "/proc/sysrq-trigger"
  ]
 }
}
```

启动容器：

```bash
[root@localhost alpine]# runc run alpine-container
```

在 config.json 中指定了，默认的 shell 是 sh。

## References

- https://medium.com/@avijitsarkar123/docker-and-oci-runtimes-a9c23a5646d6
- https://containerd.io/
- https://github.com/projectatomic/containerd/blob/master/docs/cli.md
- https://www.docker.com/blog/docker-engine-1-11-runc/
- https://www.docker.com/blog/docker-containerd-integration/
- https://www.youtube.com/watch?v=VWuHWfEB6ro Containerd- Building a Container Supervisor - Black Belt Track
