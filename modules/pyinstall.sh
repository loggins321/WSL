#!/usr/bin/env bash

py_install() {
  echo " "
  echo "Install dependensi dan config python"
  sleep 1
  mkdir -p "$HOME/.env"
  python -m venv "$HOME/.env"
  local path="$HOME/.env"
  source "$path/bin/activate"

  pip --version >/dev/null 2>&1
  out="$?"
  if [[ "$out" -eq 0 ]]; then
    local packages=(
      shutil-ext
      rich
      alive-progress
      progress
      gdown
    )

    for i in "${packages[@]}"; do
      pip install "$i"
    done
  else
    echo "Gagal. Aktifkan env-nya dulu !!!"
    sleep 1
    return 1
  fi

  deactivate
}
