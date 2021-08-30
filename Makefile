# https://askubuntu.com/questions/507345/how-to-set-a-password-for-ubuntu-cloud-images-ie-not-use-ssh/1094189#1094189
qemu:
	wget https://github.com/multiarch/qemu-user-static/releases/download/v6.1.0-1/qemu-aarch64-static.tar.gz
image_arm:
	wget https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-arm64.img

image:
	wget https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.img
user_img:
	cloud-localds user.img user.txt
user_img_arm:
	cloud-localds --disk-format qcow2 cloud.img user.txt

