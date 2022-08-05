sudo eselect kernel list
cp /usr/src/linux/.config ~/kernel-config-`uname -r`
# sudo genkernel --kernel-config=/home/timyuan/kernel-config/kernel-config-`uname -r` --makeopts=-j2 --menuconfig --lvm initramfs all
# sudo mount | grep efivars
# sudo mount efivars /sys/firmware/efi/efivars -o remount,rw
# sudo grub-install --modules="linux lvm" --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub --recheck --debug
# sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo genkernel --kernel-config=/home/timyuan/kernel-config-`uname -r` --kernel-append-localversion=-timyuan --makeopts=-j4 --lvm all
