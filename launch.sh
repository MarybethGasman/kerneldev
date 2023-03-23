
# sudo apt-get update
# sudo apt-get install -y bison flex libelf-dev cpio build-essential libssl-dev qemu-system-x86


qemu-system-x86_64 \
    -kernel linux/arch/x86/boot/bzImage \
    -initrd initramfs.img \
    -append "console=ttyS0 root=/dev/ram init=/init" \
    -m 2048 \
	-nographic 
