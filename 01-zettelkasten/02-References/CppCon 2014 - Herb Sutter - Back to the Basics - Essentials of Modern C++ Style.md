# CppCon 2014 - Herb Sutter - Back to the Basics - Essentials of Modern C++ Style

Created: 2022-04-23 02:01

## 基本信息

Source Name: [[YouTube]]
link: https://www.youtube.com/watch?v=xnqTKD8uD64
Pub Time: Sep 30, 2014
Author: [[Herb Sutter]]
Video Length: 1:40:26

## 简评

[slide pdf](https://github.com/CppCon/CppCon2014/blob/master/Presentations/Back%20to%20the%20Basics!%20Essentials%20of%20Modern%20C%2B%2B%20Style/Back%20to%20the%20Basics!%20Essentials%20of%20Modern%20C%2B%2B%20Style%20-%20Herb%20Sutter%20-%20CppCon%202014.pdf)

把 c++ 指针这个问题讲完了，什么时候 raw，什么时候 unique ，什么时候 shared.

## 亮点笔记

## 要照顾菜鸡程序员

大概有 300 万 c++ 程序员。写过 libstdc++ / libc / boost 等的，只有几百人。t

## for loop

1. 多使用 range-for。注意，缺点是 不支持 early-break


## Smart Pointer

2. do NOT use owning raw pointer, new or delete. 用 smarter pointer & RAII
3. 用 make_unique 代替 new
4. Non-Owning pointer / ref are still great
5. smart pointer 的拷贝，很慢。见 facebook 的案例 & https://herbsutter.com/2013/06/05/gotw-91-solution-smart-pointer-parameters/


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rkml11mxj20bl02zwej.jpg)


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1ru5usxhaj20sk0g7gne.jpg)


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1ru710sruj20sh0g0q5c.jpg)


## Auto (deduce)

注意，主要是对 local variable 使用这个规则

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rubdqsimj20zz0jignu.jpg)

1. 易于写对，不用在意细节。比如，是不是 const type
2. 代码的可维护性好。重构时，不会引入默认的类型转换
3. performance。因为，不存在隐式的类型转换风险了。
4. 易于使用。比如，有的类型很难拼写。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rvrq4pv6j20i10acdgi.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rvtg9xu5j20mr0bv0uj.jpg)


## rvalue reference & move semantics

c11 & c14 的主要改进，rvalue reference & move semantics

看不懂了。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rxunmx7dj20i40a90tb.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rxy97robj20mr0d3dgw.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1ryzxe0s8j20mr0d1gmm.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rz8ao1s2j20mo0crq4f.jpg)

![[Pasted image 20220430193524.png]]

![[Pasted image 20220430194051.png]]
