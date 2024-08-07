# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

eval "$(starship init zsh)"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"
plug "zsh-history-substring-search"
#keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#AUTOCOMPLETADO
autoload -Uz compinit
compinit

