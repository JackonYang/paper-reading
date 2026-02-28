---
layout: post
title: "performance index: load average"
date: 2012-07-26 01:21
comments: true
categories: 
---

concept
-------

- Load: a measure of the amount of work that a compute system is doing
- Load Average: average of load in 1/5/10 minutes.

Unix 系统，队列长度主要看：正在执行的进程数、等待的进程数。
Linux 系统，在 Unix 之上增加 不可中断的进程数。
是一段时间内正在使用和等待使用CPU的统计信息（平均任务数）。
Linux记录cpu负载的时候是将cpu队列中的运行进程数和不可中断进程数都统计在内的，这样在对cpu负载分析的时候就需要考虑不可中断的进程的情况

<!--more-->

commands
---------------------

- uptime: load average后的三个数字依此是过去1min，5min，15min的平均负载。
- w: 同时显示已登录的用户。打开2个shell标签页，显示两个shell端。
- cat /proc/loadavg
- top: 占用资源较多，不适合写入脚本。
- tload 画图形
- procinfo: ubuntu 12.04 需要单独安装。


过载判断
--------

单个CPU核心上的负载为1，表示表示系统没有剩余资源，同时恰好没有等待资源。
若多个CPU，则计算平均值。
``` bash number of thread of cpu
$ cat /proc/cpuinfo
# or
$ grep 'model name' /proc/cpuinfo | wc -l
```

理想负载值
----------

负载为1时，系统没有任何的剩余资源。
任何的异常都会导致出现排队等待序列，进入恶性循环。
一般认为，单核的理想附负载值为0.7，也有0.5-0.6一说。
