#!/bin/sh
set -oue pipefail

grub2-editenv - set menu_auto_hide=1

# Verify if EFI or legacy
if [ -f "/usr/etc/grub2-efi.cfg" ]; then
    grub2-mkconfig -o /usr/etc/grub2-efi.cfg
else
    grub2-mkconfig -o /boot/grub2/grub.cfg
fi
