#!/bin/bash

# target remote 127.0.0.1:6666
SRC=${SRC:-linux}
qemu-system-x86_64 \
    -kernel $SRC/arch/x86/boot/bzImage \
    -initrd initramfs.img \
    -append "console=ttyS0 root=/dev/ram ip=dhcp" \
    -fsdev local,security_model=passthrough,id=fsdev0,path=share \
    -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare \
	-nographic \
	-monitor none \
	-S -gdb tcp::6666 -append "console=ttyS0 nokaslr ip=dhcp" \
	-m 4G \
    -serial mon:stdio
