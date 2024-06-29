alias work="cd ~/workspace/"
alias obsi="cd ~/workspace/obsidian/notes/"
alias backupobs="git add * && git commit -m 'backup' && git push origin main"
alias vc="cd ~/.config/nvim/  &&  nvim ."
alias adre="cd ~/" alias conf="nvim ~/.zshrc"
alias kc="cd ~/.config/kitty/  && nvim ."
alias fetch="nitch"
alias code="code-insiders"
alias v="nvim"
alias fix_resolution="xrandr --output DisplayPort-0 --mode 1600x900"
alias kde-share="kdeconnect-cli --name adre --share"
alias kde-desconectar="kdeconnect-cli --name adre --unpair"
alias bat="batcat"
alias fd="fdfind"
alias tg="bash ~/scripts/tokyonight.sh"
alias i3c="cd ~/.config/i3/  && nvim ."
alias daily_print="bash ~/scripts/print_daily.sh"
alias current_ker="mhwd-kernel -li"

#$env:OPEN_AI_KEY = "sk-IWdwqqSetpqrKzWTbP3NT3BlbkFJDB3lYb5W7ePnt6dVlvL"
export PATH="/home/adre/node-v20.11.0-linux-x64/bin/:$PATH"
export PATH=$PATH:"$HOME/go/bin/"
export PATH=$PATH:"/home/adre/.spicetify"

# dockers
alias parrot="sudo docker start -i parrot"

# colorscheme default=tokyonight
# (cat ~/.cache/wal/sequences &)
# cat ~/.cache/wal/sequences
#archivos importados

# source ~/.cache/wal/colors-tty.sh
source ~/zsh/plugins.sh
export BG="#151823"
export FG="#dfeae9"
export CUR="#dfeae9"
export COLOR0="#151823"
export COLOR1="#57658C"
export COLOR2="#6D738B"
export COLOR3="#5D9C9E"
export COLOR4="#6EC6BD"
export COLOR5="#73DACA"
export COLOR6="#A1D4CC"
export COLOR7="#dfeae9"
export COLOR8="#9ca3a3"
export COLOR9="#57658C"
export COLOR10="#6D738B"
export COLOR11="#5D9C9E"
export COLOR12="#6EC6BD"
export COLOR13="#73DACA"
export COLOR14="#A1D4CC"
export COLOR15="#dfeae9"
