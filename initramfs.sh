
export BUSYBOX_VERSION=1.35.0


echo "[+] Building filesystem..."
mkdir -p fs
cd fs
mkdir -p bin sbin etc proc sys usr/bin usr/sbin root home/tan
cd ..
cp -a busybox-$BUSYBOX_VERSION/_install/* fs

#
# modules
#

# echo "[+] Building modules..."
# cd src
# make
# cd ..
# cp src/*.ko fs/


cd ./linux
./usr/gen_initramfs.sh -o ../initramfs.img ../fs ../cpio_list
