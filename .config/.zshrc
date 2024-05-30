# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# NOTE: plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"
#NOTE: AUTOCOMPLETADO
autoload -Uz compinit
compinit

# NOTE: directorios
alias work="cd ~/Workspace/"
alias dev="cd ~/Workspace/dev//"
alias icat=""
alias uni="cd ~/workspace/univesidad/"
alias vc="cd ~/.config/nvim/  &&  nvim ."
alias adre="cd ~/" alias conf="nvim ~/.zshrc"
alias notas="nvim ~/notas.md"
alias kc="cd ~/.config/kitty/  && nvim ."
alias fetch="nitch"
#NOTE:  atajos
alias code="code-insiders"
alias record="asciinema rec"
alias v="nvim"
alias vf="vifm ."
alias fix_resolution="xrandr --output DisplayPort-0 --mode 1600x900"
alias swap_config="~/scripts/change_nvim.sh"
alias bd="~/Workspace/Dataflare.AppImage"
alias kde-share="kdeconnect-cli --name adre --share"
alias kde-desconectar="kdeconnect-cli --name adre --unpair"
alias bat="batcat"
alias :q="exit"
alias fd="fdfind"
alias i3c="cd ~/.config/i3/  && nvim ."
alias daily_print="bash ~/scripts/print_daily.sh"
#alias of="onefetch"
## NOTE: gestor de paquetes
alias aptrm="sudo apt autoremove"
alias apti="sudo apt install"
alias aptf="sudo apt search"

# NOTE: notas pendientes
eval "$(starship init zsh)"
purple="\0033[9;35m"
if [ -s ./notas.md ]
then
  cat ~/notas.md
else
  echo "${purple}No tienes tareas pendientes "
fi



#NOTE: proyectos

alias cokir="cd ~/Workspace/Coki/ && npm run coki"
alias cokic="cd ~/Workspace/Coki/ && nvim ."
alias cokid="cd ~/Workspace/Coki/"

alias tarea2c="cd ~/Workspace/poo/notas/ && python3 manage.py runserver   && code ."
alias tarea2d="cd ~/Workspace/poo/notas/"



#$env:OPEN_AI_KEY = "sk-IWdwqqSetpqrKzWTbP3NT3BlbkFJDB3lYb5W7ePnt6dVlvL"
export PATH="/home/adre/node_versions/node-v18.17.1-linux-x64/bin/:$PATH"
#export PATH=$PATH:/home/adre/.spicetify

# bun completions
#[ -s "/home/adre/.bun/_bun" ] && source "/home/adre/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:"$HOME/go/bin/"





