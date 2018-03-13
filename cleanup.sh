sudo killall -9 qemu-cc-system-x86_64
sudo killall -9 qemu-system-x86_64
sleep 1
sudo killall cc-proxy
sleep 1
sudo killall cc-runtime
sleep 1
sudo killall cc-shim



for c in `mount | grep resolv.conf | cut -c 14- | cut -c -182`; do sudo umount $c; done

for c in `mount | grep hostname | cut -c 14- | cut -c -178`; do sudo umount $c; done

for c in `mount | grep hosts | cut -c 14- | cut -c -176`; do sudo umount $c; done
for c in `mount | grep nsfs | cut -c 8- | cut -c -52`; do sudo umount $c; done
