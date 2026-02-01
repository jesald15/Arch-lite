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
**IMPORTANT: Install linux lts kernel too**
---

# STEP 2 : i3wm

1. **First login to i3**

   On your first login, i3 will ask:

   - Create default config? → **Yes**
   - Modifier key? → **Win / Mod4**

   This step **must be done before running the installer**.
2. Connect to wifi using NetworkManager
3. **Open a terminal** (super + enter)

4. **Clone this repository**

   ```bash
   git clone https://github.com/jesald15/Arch-lite.git
   cd arch-lite
   chmod +x install.sh
   ./install.sh
   ```

5. Restart the config files `Mod + Shift + C`

6. Install these packages (Remove things that you don't want)

```
sudo pacman -S obsidian flameshot firefox nemo neovim android-file-transfer mtpfs gvfs gvfs-mtp wine wine-mon wine-gecko winetricks telegram-desktop deltachat-desktop brightnessctl xorg-xinput
```

7. Other packages (AUR)
   Aur support - yay
```
   sudo pacman -S --needed base-devel git
   git clone https://aur.archlinux.org/yay.git
   cd yay
   makepkg -si
```

8. aur packages
```
yay -s brave peazip
```

8. Reboot
---

##  Keyboard Shortcuts

All keyboard shortcuts are documented in: `i3_shortcuts.md`

---

## Updating arch 
- Backup before upgrading
- Avoid doing partial upgrades always use `pacman -Syu`


## ❤️ Support My Work

If this setup helped you revive an old machine or learn Arch Linux, consider supporting the project.

Even a ⭐ on the repository helps a lot.

[<img width="120" height="120" alt="buymeacoffee" src="https://github.com/user-attachments/assets/3fb313a4-17ec-484a-9df5-11ff6056d0c0" />
](https://buymeacoffee.com/jesald)

---





