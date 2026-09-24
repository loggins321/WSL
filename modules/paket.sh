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
    ttf-sazanami
    unzip
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    #nuls # optional
    starship
    zoxide
  )
  for data in "${packages[@]}"; do
    yay -S "${data}" --needed --noconfirm --sudoloop
  done
}
