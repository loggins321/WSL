#!/usr/bin/env bash

config_files() {
  cp -r "$HOME/installer/config/kitty" "$HOME/.config"
  cp "$HOME/installer/config/starship.toml" "$HOME/.config"
  cp -r "$HOME/installer/config/aria2" "$HOME/.config"
}
