# cpu 指令的乱序执行

Created: 2022-05-02 12:53

## Notes

源自流水线技术的需求。

编译器会先搞一波

在Java中，JVM能够根据处理器特性（CPU多级缓存系统、多核处理器等）适当对机器指令进行重排序，最大限度发挥机器性能。Java中的指令重排有两次，第一次发生在将字节码编译成机器码的阶段，第二次发生在CPU执行的时候，也会适当对指令进行重排。

通过barrier（内存屏障）等指令，在正确的位置告诉cpu或者是编译器，这里我可以接受乱序，那里我不能接受乱序

为了能够保证多核之间的修改的可见性，我们在写程序的时候需要加上内存屏障，例如x86上的mfence指令。

如果两条指令的前后存在依赖关系，比如数据依赖，控制依赖等，就不能流水线。

以上是对x86架构的cpu来说的，ARM/Power架构的cpu在单核上的一致性保证要弱一些，无需保证Sequential consistency，因此也不需要顺序提交，只需保证控制依赖，数据依赖，地址依赖等指令的顺序即可。要想在这些弱一致性模型cpu下保证无关指令间的提交顺序，需要使用barrier指令。

## **Store Buffer & Invalid Queue**

**store buffer**存在于cpu核与cache之间，对于x86架构来说，store buffer是FIFO，因此不会存在乱序，写入顺序就是刷入cache的顺序。但是对于ARM/Power架构来说，store buffer并未保证FIFO，因此先写入store buffer的数据，是有可能比后写入store buffer的数据晚刷入cache的。从这点上来说，store buffer的存在会让ARM/Power架构出现乱序的可能。store barrier存在的意义就是将store buffer中的数据，刷入cache。

在某些cpu中，存在invalid queue。invalid queue用于缓存cache line的失效消息，也就是说，当cpu0写入W0(x, 1)，并从store buffer将修改刷入cache，此时cpu1读取R1(x, 0)仍是允许的。因为使cache line失效的消息被缓冲在了invalid queue中，还未被应用到cache line上。这也是一种会使得指令乱序的可能。load barrier存在的意义就是将invalid queue缓冲刷新。

## References

1.
