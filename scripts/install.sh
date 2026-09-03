#!/usr/bin/bash

sudo pacman -Syu --needed yay qt5-wayland qt6-wayland           \
  thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin \
  file-roller 7zip                                                    \
  ttf-jetbrains-mono-nerd inter-font tela-circle-icon-theme-standard

# Apps
sudo pacman -S --needed helium-browser-bin marknote ghostty goverlay

# AUR
yay -S --needed qt6ct-kde qt5ct-kde darkly-bin  
