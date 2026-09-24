#!/usr/bin/env bash

# update system
sudo -v
sudo pacman -Syu --noconfirm
sudo pacman -S --needed git base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git "$HOME/yay/" || exit 1
cd "$HOME/yay" || exit 1
makepkg -si
# cd "$HOME/installer" || exit 1
# echo "Test yay Selesai"
# sleep 2
# echo "Menghapus folder yay"
# sleep 1
# rm -rf "$HOME/yay"

path="$HOME/installer"
source "$path/modules/paket.sh"
source "$path/modules/zsh.sh"
source "$path/modules/pyinstall.sh"

paket_install
zsh
py_install

#install lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

cp -r "$HOME/installer/config/kitty" "$HOME/.config"
cp "$HOME/installer/config/starship.toml" "$HOME/.config"