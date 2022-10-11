### Introduction

Some scripts set up Linux kernel dev environment quickly.

### prerequisites

-   unix-like environment
-   qemu, make

### Usage

```sh
./build.sh && ./launch.sh
```

for debugging kernel, port on 6666

```sh
./build.sh && ./dbg.sh
```

### Directories

-   /src for patches you write, such as kernel modules
-   /fs for rootfs built from busybox

files in src will be compiled and copy to /fs, then compressed into initramfs.cpio.gz

### Acknowledgement
