#!/bin/bash

cp -r ./.config ~

yay -S hyprland alacritty microsoft-edge-stable-bin thunar thunar-volman \
    thunar-archive-plugin file-roller gvfs tumbler ffmpeg ffmpegthumbnailer \
    wofi waybar-hyprland-git polkit-gnome xdg-desktop-portal-hyprland \
    qt6-wayland qt5-wayland ttf-jetbrains-mono-nerd swaybg swaylock \
    wlogout wl-clipboard brightnessctl gnome-keyring dunst \
    grim slurp jq
