

### collections

```rust
let mut v = vec![1, 2, 3, 4];  // a vector
v.push(5);
```

# rust-based-os-comp2022

## 广告语

2022秋冬季开源操作系统训练营 ( https://github.com/LearningOS/rust-based-os-comp2022 )开始招生(报名时间段 2022.10.16 ~ 2022.10.30，训练时间段 2022.11.1~2023.2.1)，如希望参加本次训练营，请在报名登记处 ( https://github.com/LearningOS/rust-based-os-comp2022/issues/101 ) 填写相关信息，并加入相关微信群 （ https://github.com/LearningOS/rust-based-os-comp2022/blob/main/wechat1016.png ）。后续获得邀请后，将开始参与本次训练营活动。请帮忙转发到相关群。

主题: 2022开源操作系统训练营启动
日期: 2022-11-01 19:27:08
录制文件: https://meeting.tencent.com/v2/cloud-record/share?id=00e0e809-1e03-4f41-8e6a-4e71c0ca1342&from=3

环境配置

Rustlings 和Rcore tutorial 环境配置和提交
https://www.bilibili.com/video/BV1fY4y1n7up/?is_story_h5=false&p=1&share_from=ugc&share_medium=ipad&share_plat=ios&share_source=WEIXIN&share_tag=s_i&timestamp=1667050789&unique_k=PHynvHJ

## step 0. Learn Rust

入门看 rust book，进阶看 programming rust

https://learn.microsoft.com/zh-cn/training/paths/rust-first-steps/

https://learn.microsoft.com/en-us/training/paths/rust-first-steps/

https://doc.rust-lang.org/book/ch07-00-managing-growing-projects-with-packages-crates-and-modules.html

其他材料

https://richard.dallaway.com/2019/10/24/rust-embedded-1.html

线程安全的引用计数指针。‘Arc’代表 “Atomically Reference Counted/原子引用计数”。
https://skyao.io/learning-rust/std/sync/arc.html

惊喜部分：

1. 默认 immutable + shadow，很有灵性。
2. block scope + ownership 机制。类似 c++ 的 RAII，内存管理的最佳方案。
3. mutable borrowing 只能 1 次。避免了 data races。

### foreword

break down these barriers by eliminating the old pitfalls,
(parallelism programming) the compiler will catch the classical mistakes for you.

把老司机的经验/手艺，都写成了代码，固化到了 toolchain 里面了，用 compiler 代替老司机的手艺来帮你检查 pitfalls。理想情况下，新手甚至可以边做边跟着 compiler 学习优秀的代码范式了

### dev env setup

- rust-analyzer
- rustfmt: code style auto formatter

### hello world

输出用 `println!`

! 调用的是 macro，不是普通的 function。略有区别。

code [02-tutorial-code/07-learn-rust/01-rust-hello-world](../../02-tutorial-code/07-learn-rust/01-rust-hello-world/hello.rs)

包管理器是 cargo，还可以跑 ut 等。类似于 npm。
build 之后，也会生成 Cargo.lock，也类似于 npm。

cargo 的配置文件，格式是 toml。

```bash
cargo build
cargo check
cargo run
cargo new
cargo test
```

### variables

In Rust, "variables" are often called "bindings". This is because "variables" in Rust aren't very variable - they don't change that often since they're unchangeable by default.

默认 immutable variable + shadow variable，真是一个有意思的 feature 组合

rust 里面的变量，默认都是 immutable，如果修改会直接报错。而且 c++ 等，默认都是 mutable，除非声明 const

反思一下，我接触的代码，大部分变量，好像的确是不需要 mutable。避免了很多不经意的变量名相互覆盖、意外的变量值修改

immutable variable 和 const 还不一样。
const 必须 annotate 类型。变量名，约定全大写。

shadowing。可以重复声明跟前面变量同名的变量，会 shadow 前面的变量。
在同一个 scope 里，也能 shadow。类似 mutable 的 variable。但，可以改变类型，而且是声明里一个新的变量。

rust 里面禁止“使用” 未初始化的变量。如果是 vector，a[i] = x，就是在使用 a[i] 了，需要先初始化。

![](https://tva1.sinaimg.cn/large/008vxvgGgy1h7pyooob4zj30m80bmdh7.jpg)

### Data Types

静态类型的语言。statically typed language。意思是，编译时就需要明确变量类型。

scalar types，4 种基本类型

- integers: i8/i16/i32/i64/i128, u8/u16/u32/u64/u128, isize/usize
- floating-point numbers: f32/f64
- boolean: true/false
- character

默认 i32, f64.

不支持 FP16？

integers 溢出的时候，开发模式会 Panic 并报错。release 模型不错，可选 2 种行为，wrapping, saturating

compound types, 2 种: tuple, arrays

tuple, fixed length. type 可以不一样。 访问元素用 a.0, a.1
tuple without any values, 是 unit，表示为 ()
array, 也是 fixed length

array 在 stack 上。

stack and heap variable。

标准库里，有 vector，可以 grow/shrink size

```rust
let a: [i32; 5] = [1, 2, 3, 4, 5]
```

### functions

命名是 snake cases。小写 + 下划线。

函数参数必须 annotate

expression and statement。 block 是一个表达式，类似函数，如果最后一行是 expression，这个 expression 就是整个 block 表达式的 eval 结果。如果最后不是 expression，eval 结果就是 ()

### Control flow

if 表达式里面的 code block，叫 arms。

if ... else if ... else. 这种分支太多的情况，推荐用 match 表达式。

if 也是表达式，所以，可以赋值。不同 arm 表达式的值，类型要相同。

```rust
let condition = true;
let number = if condition { 5 } else { 6 };
// expect, number = 5
```

循环有 3 种。

- loop。无限死循环
- while
- for

break 后面可以跟 expression，作为 for 的 eval 结果。
可以给 loop 加 label，直接 break 对应 label 层的 for

### ownership, borrowing & slice

使得 rust 可以在 compile time 保证内存安全。

https://learn.microsoft.com/en-us/training/modules/rust-memory-management/2-learn-about-borrowing

"transferring ownership" is known as "moving"，另外，还有 borrowing，用 reference 的方式。也可以 value.clone() 强制 copy，代替 move。

用 lifetimes 避免出现 dangling pointer。

```rust
{
    let mascot = String::from("ferris");
    // transfer ownership of mascot to the variable ferris.
    let ferris = mascot;
    // ferris dropped here. The string data memory will be freed here.
}

let greeting = String::from("hello");
let greeting_reference = &greeting; // We borrow `greeting` but the string data is still owned by `greeting`
println!("Greeting: {}", greeting); // We can still use `greeting`
```

borrow checker. The borrow checker compares the two lifetimes at compile time. In this scenario, x has a lifetime of 'a but it refers to a value with a lifetime of 'b. The reference subject (y at lifetime 'b) is a shorter time than the reference (x at lifetime 'a) so the program doesn't compile.

```rust
// lifetime example
fn longest_word<'a>(x: &'a String, y: &'a String) -> &'a String {
    if x.len() > y.len() {
        x
    } else {
        y
    }
}


// Annotating lifetimes in types
struct Highlight<'document>(&'document str);

fn main() {
    let text = String::from("The quick brown fox jumps over the lazy dog.");
    let fox = Highlight(&text[4..19]);
    let dog = Highlight(&text[35..43]);
    println!("{:?}", fox);
    println!("{:?}", dog);
}
```

[heap-and-stack-memory](heap-and-stack-memory.md)

ownership 针对的 heap variable。

就是 c++ 中的 RAII 机制。

指针变量赋值的时候，默认行为是 move，不是 shallow copy。老的指针变量无效了，无法在 dereference。

默认，rust 是不会做任何深拷贝的。

clone 方法，可以深拷贝。

stack 变量的类型，可以实现 Copy 方法（traits），赋值时是 copy 代替 move。但是，如果实现了 drop 方法，则禁止实现 trait。

函数传参，和 return，也遵循一致的 ownership 转移规则。

使用 reference，可以传参，但不改变 ownership。
创建 reference 的过程，叫 borrowing。

&a，创建 reference。annotate 时，&String 表示接收 reference。
默认是 immutable reference。用 &mut a 声明 mutable reference。

mutable borrowing 只能 1 次，不能同时 2 个，所以，可以避免多线程冲突。

the slice type，是特殊的 reference type。

string literals 是 str 类型变量的一个 immutable reference。所以，也不可改。str 不同于 String。

入参为 string 的函数，签名的 best practice 如下

```rust
fn first_word(s: &str) -> &str {

}
```

### struct

field 的 mut/ownership 属性，默认与 struct 变量本身一致。注意 ownership 管理。

```rust
struct ColorClassicStruct {
    name: String,
    hex: String,
}

// tuple struct
struct Color(i32, i32, i32);

# unit-like struct
struct AlwaysEqual;

// struct update syntax.
let use2 = User {
	email: "a@example.com".to_string(),
	..user1
}

// associated functions
impl Rectangle {
	fn area(&self) -> u32 {
		self.width * self.height
	}
}
```


enum
```rust
enum Message {
    Move {x: i32, y: i32},
    Echo(String),
    ChangeColor(i32, i32, i32),
    Quit,
}
```

### modules

crates, packages
paths 是访问其他 scope 东西的路径。

modules

mod a {} 声明 module。
pub mod, pub fn 声明 public，默认是 private。


```rust
pub use x::y::a as b
```

### Handle errors in Rust

- `panic!`: unrecoverable errors. 类似其他语言的 raise exception
- `Option<T>` enum: a value is optional or the lack of a value.
- `Result<T, E>` enum: returning and propagating errors


```rust
enum Option<T> {
    None,     // The value doesn't exist
    Some(T),  // The value exists
}

enum Result<T, E> {
    Ok(T):  // A value T was obtained.
    Err(E): // An error of type E was encountered instead.
}
```


example code

```rust
let fruits = vec!["banana", "apple", "coconut", "orange", "strawberry"];
for &index in [0, 2, 99].iter() {
    match fruits.get(index) {
        Some(&"coconut") => println!("Coconuts are awesome!!!"),
        Some(fruit_name) => println!("It's a delicious {}!", fruit_name),
        None => println!("There is no fruit! :("),
    }
}

let a_number: Option<u8> = Some(7);
if let Some(7) = a_number {
    println!("That's my lucky number!");
}
```

option 的 ownership。用 ref 修饰，borrow，而非 partial move

`Some(ref p)`

```rust
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let y: Option<Point> = Some(Point { x: 100, y: 200 });

    match y {
        Some(ref p) => println!("Co-ordinates are {},{} ", p.x, p.y),
        _ => println!("no match"),
    }
    y; // Fix without deleting this line.
}

```

boxing errors

`Box` - a smart pointer used to store data on the heap, which also allows us to wrap a recursive type.

catch-all error types

```rust
// Box<dyn error::Error>
fn main() -> Result<(), Box<dyn std::error::Error>> {
}
```

unwrap 取 Some 的 inner value。如果是 None，则 Panic。
expect 的功能相似， 除了可以自定义 Panic 的 message。

推荐使用 unwrap_or，避免 Panic。

```rust
let gift = Some("candy");
assert_eq!(gift.unwrap(), "candy");

let a = Some("value");
assert_eq!(a.expect("fruits are healthy"), "value");

let b: Option<&str> = None;
b.expect("fruits are healthy"); // panics with `fruits are healthy`

assert_eq!(Some("dog").unwrap_or("cat"), "dog");
assert_eq!(None.unwrap_or("cat"), "cat");
```


### generic data types

```rust
struct Point<T> {
    x: T,
    y: T,
}

fn main() {
    let boolean = Point { x: true, y: false };
    let integer = Point { x: 1, y: 9 };
    let float = Point { x: 1.7, y: 4.3 };
    let string_slice = Point { x: "high", y: "low" };
}

// example of impl <T>
struct Wrapper <T> {
    value: T,
}

impl <T> Wrapper <T> {
    pub fn new(value: T) -> Self {
        Wrapper { value }
    }
}
```

### traits

A trait is a common interface that a group of types can implemen

impl Trait for Type


```rust
trait Area {
    fn area(&self) -> f64;
}

struct Circle {
    radius: f64,
}

struct Rectangle {
    width: f64,
    height: f64,
}

impl Area for Circle {
    fn area(&self) -> f64 {
        use std::f64::consts::PI;
        PI * self.radius.powf(2.0)
    }
}

impl Area for Rectangle {
    fn area(&self) -> f64 {
        self.width * self.height
    }
}
```

### iterator

An iterator over `Result<T, E>` can be collect()-ed directly into a `Result<Vec<T>, E>`

https://stackoverflow.com/questions/63798662/how-do-i-convert-a-vecresultt-e-to-resultvect-e

```rust
trait Iterator {
    type Item;
    fn next(&mut self) -> Option<Self::Item>;
}


impl Iterator for Counter {
    type Item = usize;

    fn next(&mut self) -> Option<Self::Item> {
    
        self.count += 1;
        if self.count <= self.length {
            Some(self.count)
        } else {
            None
        }
    }
}
```

rust 推荐使用迭代器，这个在高性能场景下，是不是有很高的 overhead。

迭代器级联起来，级联 N 次，就是 N 个循环了吧。正常写  for 循环，基本可以 1 次循环解决。除非，rust 编译器能自动把级联的迭代器 merge 成 1 个循环体，这个根本做不到吧

答：实现合理的迭代器，应该是 overhead 很小的。迭代器，是在不停的 yield。外面一个循环，就能逐层 yield 到最后一个迭代器。而不是翻译成 N 个循环的方式执行，这种算是模拟迭代器的语法糖，不是严格意义的迭代器实现。

---

## notes of 垃圾书

书: Rust by Example. https://doc.rust-lang.org/rust-by-example/index.html
选错了。应该看 https://doc.rust-lang.org/book/ch11-00-testing.html

这本书不太行，上来就是太多的语法细节，而且经常用到下文还没讲过的语法。
另一方面，对原理、核心设计理念的讲解，也非常不到位。
既不是一个好的新手入门书，也不是一个理解原理的好书。
推荐这本书的，不太行。

### 安装 Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 看提示后，选 1) Proceed with installation (default)
```



format 好复杂，先不看。 https://doc.rust-lang.org/rust-by-example/hello/print.html

### primitives

标量类型(scalar types) 类似 c++，可以 i8, i16, i32, f32, f64 等。

组合类型，类似 python。有 list，tuple

Integers default to i32 and floats to f64

let 声明的变量，默认是 immutable 的。要 mut 关键词声明 mutable 的。

tuple 可以是不同数据类型的组合，可以嵌套 tuple。可以用作函数返回多值。

array 和 slice 存相同的数据类型，内存连续。array 的长度，编译时已知。slice 可以编译时未知。

自定义类型有 struct 和 enum。
用 struct 可以声明 tuple 和 Unit 结构。

```rust
    // Variables can be type annotated.
    let logical: bool = true;

    let a_float: f64 = 1.0;  // Regular annotation
    let an_integer   = 5i32; // Suffix annotation

    // A mutable variable's value can be changed.
    let mut mutable = 12; // Mutable `i32`
    mutable = 21;

    // Error! The type of a variable can't be changed.
    // mutable = true;

    // Variables can be overwritten with shadowing.
    let mutable = true;
```

### variable binding & scope

rust 把所有的变量声明，都叫 variable binding。整的名词高大上。

所以，如其他语言的变量声明一样，rust 的 variable binding 也要回答 scope 问题。

rust 的 scope，类似 c++，支持 block scope。
A block is a collection of statements enclosed by braces {}.

同样，也支持 variable shadowing。内层的 block 可能定义同名的变量，暂时遮挡外面的变量。

### Types

不能隐式类型转换。

转类型用 as。比如

```rust
let decimal = 65.4321_f32;

let integer = decimal as u8;
let character = integer as char;
```

type aliasing

自定义的 type name，必须是  UpperCamelCase

```rust
// `NanoSecond`, `Inch`, and `U64` are new names for `u64`.
type NanoSecond = u64;
type Inch = u64;
type U64 = u64;
```

### conversion

generic conversions will use the From and Into traits

### Expression

1. declaring a variable binding
2. using a ; with an expression
3. Blocks are expressions too. The last expression in the block will be assigned to the place expression such as a local variable.  if the last expression of the block ends with a semicolon, the return value will be ()

### flow of Control

if-else，loop 都可以有返回值。

if-else conditionals are expressions, and, all branches must return the same type.

loop + break 的循环格式。

nested loop，可以加 label，break 指定层的 loop。语法：break 'outer;

break + expression，设置 loop 结束时的 return。

for-range 的语法里，iter, into_iter, inter_mut 返回的迭代器类型不一样。要注意。尤其是要 match 比较迭代器内容时。

match，类似 c++ 的 switch。

pointers/ref
- Dereferencing uses *
- Destructuring uses &, ref, and ref mut

if set, while set

### Functions

Some functions are connected to a particular type. These come in two forms: associated functions, and methods.

Associated functions
methods

为什么 deconstruct 一下，就可以 destroy 掉资源。
因为 Box 数据类型特殊？box 可能是 non copy type。
另外，也可能是 borrow 了变量的 ownership？
```rust
// `Pair` owns resources: two heap allocated integers
struct Pair(Box<i32>, Box<i32>);

impl Pair {
    // This method "consumes" the resources of the caller object
    // `self` desugars to `self: Self`
    fn destroy(self) {
        // Destructure `self`
        let Pair(first, second) = self;

        println!("Destroying Pair({}, {})", first, second);

        // `first` and `second` go out of scope and get freed
    }
}
```

https://doc.rust-lang.org/rust-by-example/fn/closures/capture.html
没看懂 https://doc.rust-lang.org/rust-by-example/fn/diverging.html

function 的 pipeline 调用，有点意思。

![](https://tva1.sinaimg.cn/large/008vxvgGgy1h7f1hjzw4pj317609gt9c.jpg)

### Modules

没讲啥有用的新东西。

### crates

a compilation unit in Rust。
是一个展开后的 file。把各种 import 都替换为原始内容。

编译器实际处理的，是 crates，不是 rs file。

### Cargo

good design

Dependency management and integration with crates.io (the official Rust package registry)
Awareness of unit tests
Awareness of benchmarks

cargo is more than a dependency manager. All of the available configuration options are listed in the format specification of Cargo.toml.
