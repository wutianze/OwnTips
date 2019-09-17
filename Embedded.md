# 通过读写地址来控制地层硬件：  
- 需要include的头文件：
```c++
#include<stdio.h>
#include<fcntl.h>
#include<sys/mman.h>
```
- 用法：
```c++
int fd = open("/dev/mem",O_RDWR);//将物理内存映射
throttle = (int*)mmap(0, 30, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0x42800000);
throttle[4] = 0b001010010110;//写入值：按位0b*，16进制0x*，一个int一般为16bit即4个byte
throttle[0] = 0xFFFF;
throttle[1] = 500000;
```