#sudo apt-get -q update
#sudo apt-get -q install -y bison flex libelf-dev cpio build-essential libssl-dev qemu-system-x86
#sudo apt install bear
# export SRC=rsf-linux && ./linux-build.sh
SRC=${SRC:-linux}
echo "[+] Building kernel..."
make -C $SRC defconfig
echo "CONFIG_NET_9P=y" >> $SRC/.config
echo "CONFIG_NET_9P_DEBUG=n" >> $SRC/.config
echo "CONFIG_9P_FS=y" >> $SRC/.config
echo "CONFIG_9P_FS_POSIX_ACL=y" >> $SRC/.config
echo "CONFIG_9P_FS_SECURITY=y" >> $SRC/.config
echo "CONFIG_NET_9P_VIRTIO=y" >> $SRC/.config
echo "CONFIG_VIRTIO_PCI=y" >> $SRC/.config
echo "CONFIG_VIRTIO_BLK=y" >> $SRC/.config
echo "CONFIG_VIRTIO_BLK_SCSI=y" >> $SRC/.config
echo "CONFIG_VIRTIO_NET=y" >> $SRC/.config
echo "CONFIG_VIRTIO_CONSOLE=y" >> $SRC/.config
echo "CONFIG_HW_RANDOM_VIRTIO=y" >> $SRC/.config
echo "CONFIG_DRM_VIRTIO_GPU=y" >> $SRC/.config
echo "CONFIG_VIRTIO_PCI_LEGACY=y" >> $SRC/.config
echo "CONFIG_VIRTIO_BALLOON=y" >> $SRC/.config
echo "CONFIG_VIRTIO_INPUT=y" >> $SRC/.config
echo "CONFIG_CRYPTO_DEV_VIRTIO=y" >> $SRC/.config
echo "CONFIG_BALLOON_COMPACTION=y" >> $SRC/.config
echo "CONFIG_PCI=y" >> $SRC/.config
echo "CONFIG_PCI_HOST_GENERIC=y" >> $SRC/.config
echo "CONFIG_GDB_SCRIPTS=y" >> $SRC/.config
echo "CONFIG_DEBUG_INFO=y" >> $SRC/.config
echo "CONFIG_DEBUG_INFO_REDUCED=n" >> $SRC/.config
echo "CONFIG_DEBUG_INFO_SPLIT=n" >> $SRC/.config
echo "CONFIG_DEBUG_FS=y" >> $SRC/.config
echo "CONFIG_DEBUG_INFO_DWARF4=y" >> $SRC/.config
echo "CONFIG_DEBUG_INFO_BTF=y" >> $SRC/.config
echo "CONFIG_FRAME_POINTER=y" >> $SRC/.config
bear -- make -C $SRC -j6 bzImage