mkdir -p /share
mount -t 9p -o trans=virtio,version=9p2000.L hostshare /share
