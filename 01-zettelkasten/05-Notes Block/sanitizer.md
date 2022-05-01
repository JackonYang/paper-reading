# Sanitizer

Created: 2022-05-01 21:29

## Notes

以 [LeakSanitizer](LeakSanitizer.md) 为例，看详细用法


1. [AddressSanitizer](AddressSanitizer.md)
2. [LeakSanitizer](LeakSanitizer.md)
3. [ThreadSanitizer](ThreadSanitizer.md)
4. [UndefinedBehaviorSanitizer](UndefinedBehaviorSanitizer.md)
5. [AddressSanitizer for Linux kernel](AddressSanitizer%20for%20Linux%20kernel.md)

-fsanitize=address
Enable AddressSanitizer, a fast memory error detector. Memory access instructions are instrumented to detectout-of-bounds and use-after-free bugs. See https://github.com/google/sanitizers/wiki/AddressSanitizer formore details. The run-time behavior can be influenced using theASAN_OPTIONS environment variable. When set to help=1,the available options are shown at startup of the instrumented program. See[https://github.com/google/sanitizers/wiki/AddressSanitizerFlags#run-time-flagsfor](https://github.com/google/sanitizers/wiki/AddressSanitizerFlags#run-time-flagsfor) a list of supported options.

-fsanitize=kernel-address
Enable AddressSanitizer for Linux kernel. See https://github.com/google/kasan/wiki for more details.

-fsanitize=thread
Enable ThreadSanitizer, a fast data race detector. Memory access instructions are instrumented to detectdata race bugs. See https://github.com/google/sanitizers/wiki#threadsanitizer for moredetails. The run-time behavior can be influenced using the TSAN_OPTIONSenvironment variable; see[https://github.com/google/sanitizers/wiki/ThreadSanitizerFlags](https://github.com/google/sanitizers/wiki/ThreadSanitizerFlags) for a list ofsupported options.

-fsanitize=leak
Enable LeakSanitizer, a memory leak detector. This option only matters for linking of executables and if neither-fsanitize=address nor -fsanitize=thread is used. In thatcase the executable is linked against a library that overrides mallocand other allocator functions. Seehttps://github.com/google/sanitizers/wiki/AddressSanitizerLeakSanitizer for moredetails. The run-time behavior can be influenced using theLSAN_OPTIONS environment variable.

## References

1. [https://github.com/google/sanitizers](https://github.com/google/sanitizers)
2. [https://gcc.gnu.org/onlinedocs/gcc-4.9.3/gcc/Debugging-Options.html#index-fsanitize_003daddress-593](https://gcc.gnu.org/onlinedocs/gcc-4.9.3/gcc/Debugging-Options.html#index-fsanitize_003daddress-593)
3. [https://stackoverflow.com/questions/31210053/gcc-and-fsanitize-leak](https://stackoverflow.com/questions/31210053/gcc-and-fsanitize-leak)
