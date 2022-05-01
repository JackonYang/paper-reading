# Clang Optimization Levels

Created: 2022-04-30 21:26

## Notes

To sum it up, to find out about compiler optimization passes:

```bash
llvm-as < /dev/null | opt -O3 -disable-output -debug-pass=Arguments
```

As pointed out in _Geoff Nixon_'s answer (+1), `clang` additionally runs some higher level optimizations, which we can retrieve with:

```bash
echo 'int;' | clang -xc -O3 - -o /dev/null -\#\#\#
```

理论上 -Ofast 主要只影响浮点数计算的。真要精心调的话，自己用文档里的细节的优化选项，而不是用这些一个顶几十个的优化选项。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s3awih2aj20qc0nndk4.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s2fz11ggj20iq0biq3v.jpg)

## References

1. [CLang optimizations on Mac OSX](https://gist.github.com/lolo32/fd8ce29b218ac2d93a9e)
2. https://stackoverflow.com/questions/15548023/clang-optimization-levels
3. [LLVM’s Analysis and Transform Passes](https://llvm.org/docs/Passes.html)
