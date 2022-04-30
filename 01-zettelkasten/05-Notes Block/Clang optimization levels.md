# Clang optimization levels

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


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s2fz11ggj20iq0biq3v.jpg)

## References

1. https://stackoverflow.com/questions/15548023/clang-optimization-levels
2. [LLVM’s Analysis and Transform Passes](https://llvm.org/docs/Passes.html)