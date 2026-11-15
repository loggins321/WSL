export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jonathan"

#setopt
setopt AUTO_CD
setopt APPEND_HISTORY 
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# zstyle
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' verbose yes
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# plugins
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#aliases
alias reload="source ~/.zshrc"
alias icat="kitty kitten +icat"
alias cat="bat"
alias ls="eza -lh --icons=always --git"
alias cpd="cd /mnt/c/Users/Regustia/Downloads/Compressed"
alias aa="source ~/.env/bin/activate"
alias mp3="yt-dlp -t mp3 --no-playlist"
alias mp4="yt-dlp -t mp4 --no-playlist"
alias cp="rsync -ha --info=progress2"
alias mv="rsync -ha --info=progress2 --remove-source-files"
alias open="explorer.exe"
alias gg="/mnt/c/Program\ Files/BraveSoftware/Brave-Browser/Application/brave.exe"
alias sucp="rsync -ha --info=progress2"
alias sumv="rsync -ha --info=progress2 --remove-source-files"
alias t="tmux"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

#-----fzf setup-----
source <(fzf --zsh)

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
# Mengatur tampilan default fzf
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --info=inline'
# fzf keybinding
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}' \
  --popup center,85% --border sharp --color=bg:#394530,border:023,fg:251,hl:022 \
  --layout=reverse --info=inline"
export FZF_ALT_C_COMMAND='fd --type d --full-path'
export FZF_ALT_C_OPTS="--preview 'eza -la {}' --layout=reverse --border --height 20%"
