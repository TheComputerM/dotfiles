#!/bin/bash

mkdir -p .local/bin
cp -r ~/.local/bin/wrappedhl .local/bin/

mkdir -p .config
cp -r ~/.config/hypr .config
cp -r ~/.config/gtk-2.0 .config
cp -r ~/.config/gtk-3.0 .config
cp -r ~/.config/wofi .config
cp -r ~/.config/waybar .config
cp -r ~/.config/wezterm .config
cp -r ~/.config/Thunar .config
cp ~/.config/code-flags.conf .config
cp ~/.config/microsoft-edge-stable-flags.conf .config