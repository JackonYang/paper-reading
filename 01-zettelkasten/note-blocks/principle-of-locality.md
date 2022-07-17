---
tags:
- computer-system
- hpc
---

# Principle of Locality

Created: 2022-05-06 10:45

## 局部性原理

- 时间局部性：重复引用同一个变量。
- 空间局部性：Stride-k Reference Pattern

编写良好的程序，倾向于有良好的局部性。

## Stride-k Reference Pattern

步长 k 的引用模式。

- k=1, 空间局部性最好。
- k 越大，空间局部性越差。

下面的代码，向量 V，顺序读取，步长为 1，空间局部性好。

```c
int sumvec(int v[N]) {
	int i, sum = 0;

	for (i = 0; i < N; i++)
		sum += v[i];

	return sum;
}
```

## 多维数组 - 行优先访问

#TODO example code

结论：使得最右边的索引，变化最快。

## 取指令的局部性

指令一般顺序读取和执行，局部性良好。
