
# sudo apt-get update
# sudo apt-get install -y bison flex libelf-dev cpio build-essential libssl-dev qemu-system-x86

# export SRC=rsf-linux/ && ./launch.sh

qemu-system-x86_64 \
    -kernel $SRC/arch/x86/boot/bzImage \
    -initrd initramfs.img \
    -append "console=ttyS0 root=/dev/ram" \
    -fsdev local,security_model=passthrough,id=fsdev0,path=share \
    -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare \
    -m 4G \
	-nographic 
