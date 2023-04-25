#sudo apt-get -q update
#sudo apt-get -q install -y bison flex libelf-dev cpio build-essential libssl-dev qemu-system-x86


echo "[+] Building kernel..."
make -C linux defconfig
echo "CONFIG_NET_9P=y" >> linux/.config
echo "CONFIG_NET_9P_DEBUG=n" >> linux/.config
echo "CONFIG_9P_FS=y" >> linux/.config
echo "CONFIG_9P_FS_POSIX_ACL=y" >> linux/.config
echo "CONFIG_9P_FS_SECURITY=y" >> linux/.config
echo "CONFIG_NET_9P_VIRTIO=y" >> linux/.config
echo "CONFIG_VIRTIO_PCI=y" >> linux/.config
echo "CONFIG_VIRTIO_BLK=y" >> linux/.config
echo "CONFIG_VIRTIO_BLK_SCSI=y" >> linux/.config
echo "CONFIG_VIRTIO_NET=y" >> linux/.config
echo "CONFIG_VIRTIO_CONSOLE=y" >> linux/.config
echo "CONFIG_HW_RANDOM_VIRTIO=y" >> linux/.config
echo "CONFIG_DRM_VIRTIO_GPU=y" >> linux/.config
echo "CONFIG_VIRTIO_PCI_LEGACY=y" >> linux/.config
echo "CONFIG_VIRTIO_BALLOON=y" >> linux/.config
echo "CONFIG_VIRTIO_INPUT=y" >> linux/.config
echo "CONFIG_CRYPTO_DEV_VIRTIO=y" >> linux/.config
echo "CONFIG_BALLOON_COMPACTION=y" >> linux/.config
echo "CONFIG_PCI=y" >> linux/.config
echo "CONFIG_PCI_HOST_GENERIC=y" >> linux/.config
echo "CONFIG_GDB_SCRIPTS=y" >> linux/.config
echo "CONFIG_DEBUG_INFO=y" >> linux/.config
echo "CONFIG_DEBUG_INFO_REDUCED=n" >> linux/.config
echo "CONFIG_DEBUG_INFO_SPLIT=n" >> linux/.config
echo "CONFIG_DEBUG_FS=y" >> linux/.config
echo "CONFIG_DEBUG_INFO_DWARF4=y" >> linux/.config
echo "CONFIG_DEBUG_INFO_BTF=y" >> linux/.config
echo "CONFIG_FRAME_POINTER=y" >> linux/.config
make -C linux -j6 bzImage