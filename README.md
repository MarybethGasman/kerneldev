### Introduction

Some scripts set up Linux kernel dev environment quickly.

### Prerequisites
```bash
sudo apt-get update
sudo apt-get install -y bison flex libelf-dev cpio build-essential libssl-dev qemu-system-x86
```

### Usage

```sh
./linux-build.sh # build linux kernel 
./busybox-build.sh # build busybox
./initramfs.sh #build initramfs.sh
./launch.sh # boot
```

for debugging kernel, port on 6666

to be done

### Directories

-   /src for patches you write, such as kernel modules
-   /fs for rootfs built from busybox

files in src will be compiled and copy to /fs, then compressed into initramfs.cpio.gz

### Acknowledgement
