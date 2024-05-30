# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

eval "$(starship init zsh)"

# NOTE: plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"

#NOTE: AUTOCOMPLETADO
autoload -Uz compinit
compinit

# NOTE: directorios
alias work="cd ~/workspace/"
alias obsi="cd ~/workspace/obsidian/notes/"
alias backupobs="git add * && git commit -m 'backup' && git push origin main"
alias vc="cd ~/.config/nvim/  &&  nvim ."
alias adre="cd ~/" alias conf="nvim ~/.zshrc"
alias kc="cd ~/.config/kitty/  && nvim ."
alias fetch="nitch"
#NOTE:  atajos
alias code="code-insiders"
alias v="nvim"
alias fix_resolution="xrandr --output DisplayPort-0 --mode 1600x900"
alias kde-share="kdeconnect-cli --name adre --share"
alias kde-desconectar="kdeconnect-cli --name adre --unpair"
alias bat="batcat"
alias fd="fdfind"
alias i3c="cd ~/.config/i3/  && nvim ."
alias daily_print="bash ~/scripts/print_daily.sh"

# NOTE: variables de entorno

#$env:OPEN_AI_KEY = "sk-IWdwqqSetpqrKzWTbP3NT3BlbkFJDB3lYb5W7ePnt6dVlvL"
export PATH="/home/adre/node-v20.11.0-linux-x64/bin/:$PATH"
export PATH=$PATH:"$HOME/go/bin/"





