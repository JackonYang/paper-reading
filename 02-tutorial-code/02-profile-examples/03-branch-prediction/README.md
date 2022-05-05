# Perf stat 看 branch-misses

## Usage

```bash
# compile only
make compile
# run with perf
sudo perf stat ./test
# clean
make clean
```

## Output

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1xeqosbrqj21sc0hugpr.jpg)

```bash
7.87184
sum = 480124300000

 Performance counter stats for './test':

          7,879.78 msec task-clock                #    1.000 CPUs utilized
                21      context-switches          #    0.003 K/sec
                 3      cpu-migrations            #    0.000 K/sec
               176      page-faults               #    0.022 K/sec
    35,451,855,207      cycles                    #    4.499 GHz
    50,082,465,240      instructions              #    1.41  insn per cycle
    15,008,921,948      branches                  # 1904.740 M/sec
           666,846      branch-misses             #    0.00% of all branches

       7.880117747 seconds time elapsed

       7.880002000 seconds user
       0.000000000 seconds sys
```

```bash
25.6771
sum = 480124300000

 Performance counter stats for './test':

         25,678.89 msec task-clock                #    1.000 CPUs utilized
                95      context-switches          #    0.004 K/sec
                 4      cpu-migrations            #    0.000 K/sec
               176      page-faults               #    0.007 K/sec
   115,543,150,708      cycles                    #    4.500 GHz
    50,065,462,602      instructions              #    0.43  insn per cycle
    15,006,543,502      branches                  #  584.392 M/sec
     2,497,335,390      branch-misses             #   16.64% of all branches

      25.679633160 seconds time elapsed

      25.675196000 seconds user
       0.003999000 seconds sys
```

## Reference

代码来自：https://stackoverflow.com/questions/11227809/why-is-processing-a-sorted-array-faster-than-processing-an-unsorted-array
