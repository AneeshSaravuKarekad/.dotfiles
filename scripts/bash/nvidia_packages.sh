#! /bin/bash

sudo pacman -S --needed nvidia-dkms nvidia-utils egl-wayland libva-nvidia-driver

# echo "MODULES=(... nvidia nvidia_modeset nvidia_uvm nvidia_drm ...)" >> /etc/mkinitcpio.conf
# "/etc/modprobe.d"
# options nvidia_drm modeset=1 fbdev=1