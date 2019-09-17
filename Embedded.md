# Read & Write physical memory address to control the hardware:
- head files needed(for linux):
```c++
#include<stdio.h>
#include<fcntl.h>
#include<sys/mman.h>
```
- How to use:
```c++
int fd = open("/dev/mem",O_RDWR);
throttle = (int*)mmap(0, 30, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0x42800000);// map hardware address 0x42800000 to virtual mem, bytes length 30, used as int*
throttle[4] = 0b001010010110;//write in value: as bit:0b*, hexadecimal number:0x*, one int is usually 16bit=4 bytes
throttle[0] = 0xFFFF;
throttle[1] = 500000;
```
