#! bin/bash

sudo pacman -S --needed  zoxide unzip wget curl fzf neovim fastfetch htop bat glow openssh firefox eza bitwarden \
    gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput \
    libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff \
    libdisplay-info cpio tomlplusplus hyprlang hyprcursor hyprwayland-scanner xcb-util-errors dunst pipewire wireplumber \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent qt5-wayland qt6-wayland xdg-ninja rofi-wayland \
    ttf-jetbrains-mono-nerd ttf-liberation nofo-fonts noto-fonts-emoji noto-fonts-cjk

paru -S --needed vscodium-bin oh-my-posh-bin