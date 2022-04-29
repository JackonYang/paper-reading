# Optimizing the Velodyne driver using vector

Created: 2022-04-30 01:44

## Notes

代码改动的 PR: [Avoid unnecessary computation in RawData::unpack](https://github.com/ros-drivers/velodyne/pull/194)

Velodyne 是一个激光雷达的牌子，效果如下。measures hundreds of thousands of points per seconds (distance from obstacles)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1r4c3mrl4j20xc0b0qam.jpg)

用 [[Hotspot]]  发现 `std::map::operator[]` was using a lot of CPU.

So I explored the code and I found this:

```cpp
std::map<int, LaserCorrection> laser_corrections;
```

`LaserCorrection` contains some calibration information that was needed to adjust the measurements.

The `int` key of the map is a number in the range [0, N-1], where N could be 16, 32 or 64. Maybe one day it will reach 128!

Furthermore `laser_corrections` was created once (no further insertions) and used over and over again in a loop like this:

```cpp
 // code simplified
 for (int i = 0; i < BLOCKS_PER_PACKET; i++) {
    //some code
    for (int j = 0; j < NUM_SCANS; j++) 
    {   
        int laser_number = // omitted for simplicity
        const LaserCorrection &corrections = laser_corrections[laser_number];
        // some code
    }
 }
```

std::map 是红黑树，每次查询都是 O(log n)。

the index is **not** a random number, its value is always between 0 and N-1, where N is very small.

所以，改用 vector

```cpp
std::vector<LaserCorrection> laser_corrections;
```

优化后的效果

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1r4el671gj20mw03zwf4.jpg)

## References

1. https://github.com/facontidavide/CPP_Optimizations_Diary/blob/master/docs/dont_need_map.md#optimizing-the-velodyne-driver