# c++ Containers

Created: 2022-04-23 18:45

## Container

A class with the main purpose of holding objects. vector / list / map / unordered_map 等

### best practice

1. 可以用 {} 一次初始化所有 element。
2. 默认推荐用 range-for loop，或 interator, begin(), end() 
3. 使用多态时，element 要用 pointer
4. 传参时，用 reference。函数返回时用 value (默认会 move 而不是 copy)
5. 默认推荐使用 Vector. 案例：[[Optimizing the Velodyne driver using vector]]

### 处理性能

1. insert element 时，默认是 copy
2. 涉及性能的问题，都要先测一下，你的直觉很容易错。
3. 优先使用 compact & continuous 的数据结构。内存紧凑并连续的。

## vector

### best practice

1. [] 不检查越界，at 会抛 out_of_range exception
2. reserve 预留 capacity, resize 改变 size

### 处理性能

1. vector 倍增扩容，capacity 一般是 2 的幂次。（如果当前位置没法扩了，或找个新内存空间，然后把已有数据都 move 过去，所以，可能很慢）
2. 不能假设 reserve 会带来性能提升，需要测一下。(实测，频繁插入的时候，一般还是有提升的，但不要在 for 循环里 reserve)
3. 插入类操作的效率，可能是惊人的快。比如 insert，push_back

## List

1. 遍历的成本，一般很高。
2. 除非特别需要，一般不要用。频繁 insert & delete 的成本低

## map and unordered_map

### best practice

1. 频率遍历时，用 map
2. 频繁 lookup 大数据结构时，用 unordered_map
3. 如果 element 本身无序（< 运算无意义），用  unordered_map
4. map[] 操作对于不存在的元素会新建数据，用默认构造函数初始化。多用 find 查找，避免插入元素。


### 处理性能

1. map 是红黑树，有序的。时间复杂度 O(logn)
2. unordered_map 是 hash table，可以自定义 hash function，但一般不推荐


## References

1.