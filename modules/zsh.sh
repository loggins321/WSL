#!/usr/bin/env bash

zsh() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo " "
  echo "...Mengecek shell...."
  sleep 1

  shl=$(which "$SHELL")
  if [[ "$shl" == "/usr/bin/bash" ]]; then
    echo "Mengganti shell ke zsh"
    sleep 1
    chsh -s /usr/bin/zsh
  elif [[ "$shl" == "/bin/bash" ]]; then
    echo "Mengganti shell ke zsh"
    sleep 1
    chsh -s /usr/bin/zsh
   else
    echo "Shell sudah zsh"
  fi

  cp "$HOME/installer/.zshrc" "$HOME"
}