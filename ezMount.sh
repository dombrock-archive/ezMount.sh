#!/bin/bash
lsblk
echo
read -p "What do you want to mount?(sdb1, sdb2 ect?): "
echo
drive=$REPLY
read -p "Where do you want to mount it?(media/<LOCATION>): "
echo
target=$REPLY
cd /.
sudo mkdir -p media/$target
sudo mount -t ntfs /dev/$drive /media/$target
cd media/$target
echo 'Showing Mounted File System Now:'
ls
echo 'Done'
