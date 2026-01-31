# Arch-Minimal-Install

A **minimal Arch Linux installation** using **archinstall** and **i3 Window Manager**, designed for **low-end, aging, or nearly-dead laptops**. This setup prioritizes performance, simplicity, and a clean workflow with sane defaults.

---
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/c08d087e-177a-497d-82ba-47cde0a14f03" />




## Screenshots

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/030b5b14-0679-41f3-b9df-ebe2104dc0fc" />
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/fa541471-dc04-426a-98ef-3ffb696c2947" />

---

## STEP 0: Establish a Wi‑Fi Connection (Live ISO)

If you are installing Arch on a wireless network, connect first using `iwctl`.

```bash
iwctl
```

List available Wi‑Fi networks:

```bash
station wlan0 get-networks
```

Connect to your Wi‑Fi:

```bash
iwctl --passphrase "YOUR_WIFI_PASSWORD" station wlan0 connect "YOUR_SSID"
```

Exit `iwctl`:

```bash
exit
```

Verify internet connectivity:

```bash
ping archlinux.org
```

---

## STEP 1: Install Arch Linux

Once internet is working, start the guided installer just type:

```bash
archinstall
```

---

# STEP 2 : i3wm

1. **First login to i3**

   On your first login, i3 will ask:

   - Create default config? → **Yes**
   - Modifier key? → **Win / Mod4**

   This step **must be done before running the installer**.

2. **Open a terminal** (kitty or another terminal)

### Install all packages

```bash
sudo pacman -S --needed --noconfirm \
i3 i3status \
kitty dmenu dex \
xss-lock i3lock \
networkmanager nm-applet \
brightnessctl playerctl lm_sensors \
thunar xorg-xinput \
blueman usbutils \
firefox \
wine wine-mono wine-gecko winetricks \
telegram-desktop deltachat-desktop \
neovim nano
```

Enable NetworkManager:

```bash
sudo systemctl enable --now NetworkManager
```

Detect sensors:

```bash
sudo sensors-detect
```


3. **Clone this repository**

   ```bash
   git clone https://github.com/yourname/arch-lite.git
   cd arch-lite
   chmod +x install.sh
   ./install.sh
   ```

4. Restart the config files `Mod + Shift + C`

---

##  Keyboard Shortcuts

All keyboard shortcuts are documented in: `i3_shortcuts.md`

---

##  Fix: USB Not Detected

If your USB appears in `lsusb` but not in the file manager, MTP support is missing.

Install required packages:

```bash
sudo pacman -S android-file-transfer mtpfs gvfs gvfs-mtp
```

Reconnect your phone and enable **File Transfer (MTP)** mode.

---
**It's good to have a fallback distro other than i3**

## ❤️ Support My Work

If this setup helped you revive an old machine or learn Arch Linux, consider supporting the project.

Even a ⭐ on the repository helps a lot.

[<img width="120" height="120" alt="buymeacoffee" src="https://github.com/user-attachments/assets/3fb313a4-17ec-484a-9df5-11ff6056d0c0" />
](https://buymeacoffee.com/jesald)

---





