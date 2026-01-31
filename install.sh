#!/bin/bash

set -e

echo "== Arch i3 Lite Installer =="

# Ensure Arch-based system
if ! command -v pacman &>/dev/null; then
    echo "Error: pacman not found. This script is Arch-only."
    exit 1
fi

# Update system
sudo pacman -Syu --noconfirm

# Install required packages
sudo pacman -S --needed --noconfirm \
i3 i3status \
kitty dmenu dex \
xss-lock i3lock \
networkmanager nm-applet \
brightnessctl playerctl lm_sensors \
feh flameshot xorg-xinput \
blueman usbutils \
firefox \
wine wine-mono wine-gecko winetricks \
telegram-desktop deltachat-desktop \
neovim nano

# Enable NetworkManager
sudo systemctl enable --now NetworkManager

# Create config directories
mkdir -p ~/.config/i3 ~/.config/i3status

# Backup existing configs
[ -f ~/.config/i3/config ] && mv ~/.config/i3/config ~/.config/i3/config.backup
[ -f ~/.config/i3status/config ] && mv ~/.config/i3status/config ~/.config/i3status/config.backup

# Copy configs (YOUR filenames)
cp i3_config ~/.config/i3/config
cp i3_config_statusbar ~/.config/i3status/config

echo ""
echo "Done."
echo "Log into i3 once (allow default config creation),"
echo "then reload with Mod + Shift + C."
