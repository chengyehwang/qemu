#qemu-system-aarch64 \
./local/bin/qemu-system-aarch64 \
    -m 1024 \
    -M virt \
    -cpu cortex-a57 \
    -bios QEMU_EFI.fd \
    -nographic \
    -device virtio-blk-device,drive=image \
    -drive if=none,id=image,file=ubuntu-18.04-server-cloudimg-arm64.img \
    -device virtio-blk-device,drive=cloud \
    -drive if=none,id=cloud,file=cloud.img \
    -device virtio-net-device,netdev=user0 \
    -netdev user,id=user0
