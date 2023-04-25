#!/bin/bash

# target remote 127.0.0.1:6666

qemu-system-x86_64 \
    -kernel linux/arch/x86/boot/bzImage \
    -initrd initramfs.img \
    -append "console=ttyS0 root=/dev/ram" \
    -fsdev local,security_model=passthrough,id=fsdev0,path=share \
    -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare \
	-nographic \
	-monitor none \
	-S -gdb tcp::6666 -append "console=ttyS0 nokaslr" \
	-m 1024
