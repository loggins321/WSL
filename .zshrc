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
alias ls="eza -lh --icons=always"
alias opd="cd /mnt/c/Users/Regustia/Downloads/Compressed"
alias aa="source ~/.env/bin/activate"
alias mp3="yt-dlp -t mp3 --no-playlist"
alias mp4="yt-dlp -t mp4 --no-playlist"
alias cp="rsync -ha --info=progress2"
alias mv="rsync -ha --info=progress2 --remove-source-files"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
