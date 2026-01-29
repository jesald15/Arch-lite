# Welcome to Arch install setup 

<img width="939" height="534" alt="image" src="https://github.com/user-attachments/assets/0c38a7ec-f6da-41ac-9ed9-50c4723ac69f" />

## Screenshots

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/030b5b14-0679-41f3-b9df-ebe2104dc0fc" />
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/fa541471-dc04-426a-98ef-3ffb696c2947" />

## STEP0: ESTABLISHING A WIFI CONNECTION
1. Prompt specified for wifi
```
iwctl
```
2. Find your wifi station
```
station wlan0 get-networks
```
After that type `exit` 

3. Connect to wifi
```
iwctl --passpharse "Type your wifi password" station wlan0 connect "Type your SSID"
```
4. Check if it is connected
```
ping archlinux.org (or any website) 
```
## STEP1: Arch Install
Just type:

```
archinstall
```
---

## STEP2 i3WM Dot files

This README provides an overview of the i3 configuration setup, required applications, and all updated keyboard shortcuts.

---

### 1. Overview

This i3 configuration is designed for Arch Linux with the following features:

* Custom workspace management (10 workspaces)
* Floating and tiling window management
* Integrated i3status bar with CPU usage, temperature, battery, volume, brightness, and Wi-Fi
* App launchers and media control support
* Power management shortcuts
* Terminal: kitty, Browser: //Your preferred browser
* Wallpaper management via feh

Configuration file: `~/.config/i3/config`
i3status configuration: `~/.config/i3status/config`

---

### 2. Required Applications / Packages

To make this setup work properly, ensure the following applications are installed:

#### Essentials

* **i3**: Window manager
* **i3status**: Status bar manager
* **kitty**: Terminal emulator
* **Web browser** //firefox or any 

#### Utilities

* **dmenu**: Application launcher
* **dex**: For XDG autostart support
* **xss-lock** and **i3lock**: Screen locking
* **NetworkManager** and **nm-applet**: Network management
* **brightnessctl**: Brightness control
* **playerctl**: Media control
* **lm_sensors**: CPU temperature monitoring
* **feh**: Wallpaper management
* **flameshot**: Screenshot utility
* **xorg-xinput**: Tounchpad-setup
* **blueman**: Bluetooth
* **usbutilis**: USB

Install on Arch Linux:

```bash
sudo pacman -S i3 i3status kitty brave dmenu dex xss-lock i3lock networkmanager nm-applet brightnessctl playerctl lm_sensors feh flameshot xorg-xinput blueman usbutils
```

Run sensors detect:

```bash
sudo sensors-detect
```

---


### 3. Shortcuts

All shortcuts are documented in the file `i3_shortcuts.md`.

# Misc

## Fix USB Not Recognized on Arch Linux

If your Android phone is detected by USB (`lsusb`) but does not appear in the file manager, the issue is missing MTP support. Install the required packages below to enable proper Android file transfer on Arch Linux.

```bash
lsusb
sudo pacman -S android-file-transfer mtpfs gvfs gvfs-mtp
```
---

# Support my work 
[<img width="120" height="120" alt="buymeacoffee" src="https://github.com/user-attachments/assets/3fb313a4-17ec-484a-9df5-11ff6056d0c0" />
](buymeacoffee.com/jesald)

