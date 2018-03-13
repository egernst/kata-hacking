#!/bin/bash
set -v

sudo losetup /dev/loop3 /usr/share/clear-containers/clear-containers-debug.img  -o $((2048*512))
sudo mount /dev/loop3 /home/eernst/qemu-cc-debug/tmp-mnt/
#sudo cp /home/eernst/go/src/github.com/clearcontainers/agent/cc-agent /home/eernst/qemu-cc-debug/tmp-mnt/usr/bin/cc-agent
#sudo cp /usr/bin/strace /home/eernst/qemu-cc-debug/tmp-mnt/usr/bin/strace
echo "run sudo losetup -d /dev/loop3 after this"

