qemu-system-x86_64 \
    -smp 2 \
    -m 2048 \
    -nographic \
    -drive file=ubuntu-18.04-server-cloudimg-amd64.img,format=qcow2 \
    -drive file=user.img,format=raw \
    -net user,hostfwd=tcp::2222-:22 \
    -net nic

