#!/usr/bin/env bash

paket_install() {
  echo " "
  echo "....Menginstall paket...."
  sleep 1
  local packages=(
    git
    wget
    curl
    aria2
    bat
    croc
    dysk
    eza
    fd
    github-cli
    git
    jq
    kitty
    neovim
    ada
    nodejs
    npm
    ookla-speedtest-bin
    openssh
    python
    rar
    ripgrep
    rsync
    ttf-jetbrains-mono-nerd
    ttf-jigmo
    pastel
    ttf-sazanami
    unzip
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    #nuls # optional
    starship
    zoxide
    yt-dlp
    mesa
    libva-mesa-driver
    pipewire
  )
  for data in "${packages[@]}"; do
    yay -S "${data}" --needed --noconfirm --sudoloop
  done
}
