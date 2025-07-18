#lenguajes
export PATH="/home/adre/languages/node-v23.0.0-linux-x64/bin/:$PATH"

#archivos importados
source ~/zsh/alias.sh
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ./zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh/plugins.sh
source /home/adre/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "/home/adre/.bun/_bun" ] && source "/home/adre/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
