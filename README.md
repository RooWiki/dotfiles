# dotfiles

Arch Linux · Hyprland · NVIDIA

## Contenido

| Carpeta | Descripción |
|---------|-------------|
| `hypr/` | Configuración de Hyprland (keybindings, reglas de ventanas, monitores) |
| `kitty/` | Terminal Kitty con tema claro/oscuro automático |
| `waybar/` | Barra de estado con scripts para Bluetooth y Mullvad VPN |

## Setup

```bash
git clone https://github.com/RooWiki/dotfiles.git
cd dotfiles

# Hyprland
mkdir -p ~/.config/hypr
cp hypr/hyprland.conf ~/.config/hypr/

# Kitty
mkdir -p ~/.config/kitty
cp kitty/* ~/.config/kitty/

# Waybar
mkdir -p ~/.config/waybar/scripts
cp waybar/config waybar/style.css ~/.config/waybar/
cp waybar/scripts/* ~/.config/waybar/scripts/
chmod +x ~/.config/waybar/scripts/*.sh
```

## Stack

- **WM:** Hyprland 0.55.1
- **Terminal:** Kitty
- **Bar:** Waybar
- **GPU:** NVIDIA RTX 2080 Ti
- **OS:** Arch Linux
