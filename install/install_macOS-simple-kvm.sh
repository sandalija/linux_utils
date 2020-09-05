#!/bin/bash

mkdir -p ~/repos
cd ~/repos
git clone https://github.com/foxlet/macOS-Simple-KVM.git

cd macOs-Simple-KVM
sudo apt-get install -y qemu-system qemu-utils python3 python3-pip  # for Ubuntu, Debian, Mint, and PopOS.
./jumpstart.sh
qemu-img create -f qcow2 MyDisk.qcow2 100G

echo "-drive id=SystemDisk,if=none,file=MyDisk.qcow2 \ " >> basic.sh
echo "-device ide-hd,bus=sata.4,drive=SystemDisk \ " >> basic.sh

# 2a add vm manager
sudo ./make.sh --add