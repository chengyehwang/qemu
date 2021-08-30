# https://askubuntu.com/questions/507345/how-to-set-a-password-for-ubuntu-cloud-images-ie-not-use-ssh/1094189#1094189
qemu:
	wget https://download.qemu.org/qemu-6.1.0.tar.xz
	tar xvf qemu-6.1.0.tar.xz
build:
	cd qemu-6.1.0 ; ./configure --prefix=${PWD}/local --target-list=aarch64-softmmu
	cd qemu-6.1.0 ; make

image_arm:
	wget https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-arm64.img

image:
	wget https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.img
user_img:
	cloud-localds user.img user.txt
user_img_arm:
	cloud-localds --disk-format qcow2 cloud.img user.txt

EFI:
	wget https://releases.linaro.org/components/kernel/uefi-linaro/16.02/release/qemu64/QEMU_EFI.fd
