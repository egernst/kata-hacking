#!/bin/bash
set -e -v

sudo losetup /dev/loop3 /usr/share/clear-containers/clear-containers-debug.img  -o $((2048*512))
sudo mount /dev/loop3 /home/eernst/qemu-cc-debug/tmp-mnt/
sudo cp /home/eernst/go/src/github.com/clearcontainers/agent/cc-agent /home/eernst/qemu-cc-debug/tmp-mnt/usr/bin/cc-agent
sudo umount /home/eernst/qemu-cc-debug/tmp-mnt
sudo losetup -d /dev/loop3
