#!/bin/bash
sudo mount /dev/mapper/ubuntu--vg-ubuntu--lv /mnt
sudo mount /dev/sda2 /mnt/boot       # Mount /boot partition
sudo mount /dev/sda1 /mnt/boot/efi   # Mount EFI partition
sudo mount --bind /dev /mnt/dev
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys
sudo mount --bind /sys/firmware/efi/efivars /mnt/sys/firmware/efi/efivars
sudo mount --bind /etc/resolv.conf /mnt/etc/resolv.conf
sudo chroot /mnt
