
This setup is tested with an EndeavourOS base install with no desktop.

_still in progress_

## Software

- Hyprland window manager
    - `hyprland-bin`
- WezTerm terminal emulator
    - `wezterm`
- Microsoft Edge (f*** you thats why)
    - `microsoft-edge-stable`
- Thunar file manager
    - `thunar`
    - `thunar-volman`
    - `thunar-archive-plugin file-roller`
    - `gvfs`
    - `tumbler ffmpeg ffmpeg-thumbnailer`
- Wofi app runner
    - `wofi`
- Waybar status bar
    - `waybar-hyprland-git`
- Misc
    - `polkit-gnome` _important_
    - `xdg-desktop-portal-hyprland-git` _important_
    - `qt6-wayland` and `qt5-wayland` _important_
    - `ttf-jetbrains-mono-nerd` for nerd font icons
    - `swaybg` to set the background image
    - `swaylock` to screen lock
    - `wlogout` for logout menu
    - `wl-clipboard` for clipboard management
    - `brightnessctl` to control backlight brightness
    - `gnome-keyring` for shit I don't understand

## Installation

- Copy the dots into their respective folders
- Follow the instructions in the READMEs of __.themes__ and __.icons__
- Put your username in `.config/gtk-3.0/bookmarks`
- If you cannot see available wifi networks try `systemctl start iwd`
- Follow the gnome-keyring [here](https://wiki.archlinux.org/title/GNOME/Keyring) or else vscode is going to keep asking you to login and shit
- Sometimes vscode sets itself as the default folder handler, set it to thunar
```sh
xdg-mime query default inode/mount-point
```
- Maybe reboot

### Tips

You can automatically run Hyprland when you login through tty, add this to the end of your ~/.bash_profile

```sh
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec ~/.local/bin/wrappedhl
fi
```

## Keybindings

Still thinking about it