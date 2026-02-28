Title: python 入门学习路线图与书目
Date: 2013-04-17 10:29
Category: python
Tags: python, Knowledge-Graph
Summary: 我眼中比较优质的 python 入门书籍, 学习路线图


如何 4 小时学习一门新的语言
---------------------------

我的一般做法是:

1. 打印出 hello world
2. 使用变量, 了解变量作用域, 命名规则.
3. for / if 语句的基本用法. 学会最常用的一种用法即可.
4. 基本数据结构的使用. list (array/vector), dict (map), set
5. 函数的定义与调用

搞定以上问题, 就可以用代码解决实际问题了, 只是代码美与丑的区别.  

可以用代码解决实际问题, 这是学习的第一个阶段重点的.


什么样子的 python 代码是优美的?
-------------------------------

有人说, 优美的 python 代码读起来像英语.  
也有函数式编程的推崇者认为, 应该用 dict + function 替代传统的 class.  
我比较认同这 2 种观点.

代码是否优美, 与是否使用设计模式无关, 与是否面向对象更是没有必然联系.  
没有一定的代码经验, 很难真正理解面向对象与 class. 至少需要几个 200+ 行代码的项目.  
我并不支持新手过早的学习设计模式, 面向对象等概念.

入门图书推荐
------------

我想, 比学会语法更重要的是, 培养一个好的编程习惯和思路.  
推荐 2 本书, 中英文版本, python2 / python3 版本皆有. 建议依次阅读.

- [a byte of python][byte-of-python]  
    作者 [Swaroop](http://www.swaroopch.com/) 大神, 著有另一本神书 [a byte of vim][byte-of-vim].  
    Preface 里的一句话:  
    If all you know about computers is how to save text files, then you can learn Python from this book.  
    If you have previous programming experience, then you can also learn Python from this book.  
    我从这本书入门, 半年后, 再次翻阅, 主要根据目录反思当时的理解程度, 学习的误区. 收获很大.
    
- [dive into python][dive-into-python]  
    是时候深入理解 python 的语法特性, 美化自己的代码了.  
    闭包、生成器、迭代器、序列化......  
    开始践行

        Life is short, you need Python

- [Masterminds of Programming][masterminds]

    python 开发者的采访, 可更好的了解 python 的设计理念
    
[byte-of-python]: http://book.douban.com/subject/5948760/
[dive-into-python]: http://book.douban.com/subject/1440658/
[byte-of-vim]: http://book.douban.com/subject/25790644/
[masterminds]: http://book.douban.com/subject/2258023/
