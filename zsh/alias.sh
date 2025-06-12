alias work="cd ~/workspace/"
alias mc="cd ~/workspace/projects/Music_client/ && nvim ."
alias obsi="cd ~/workspace/obsidian/notes/"
alias kittyF="kitty +list-fonts --psname | grep " # solo escribe la fuente q quieres buscar
alias backupobs="git add * && git commit -m 'backup' && git push origin main"
alias conf="nvim ~/.zshrc"

alias vc="cd ~/.config/nvim/  &&  nvim ."
alias kc="cd ~/.config/kitty/  && nvim ."
alias i3c="cd ~/.config/i3/  && nvim ."

alias code="code-insiders"
alias v="nvim"
alias fix_resolution="xrandr --output DisplayPort-0 --mode 1600x900"
alias kde-share="kdeconnect-cli --name adre --share"
alias kde-disconect="kdeconnect-cli --name adre --unpair"
alias daily_print="bash ~/scripts/print_daily.sh"
alias current_ker="mhwd-kernel -li"

alias server="sudo systemctl start sshd && sudo systemctl start docker.service"

alias passS="keepassxc-cli search ~/Documentos/pass/passwords.kdbx"
alias passC="keepassxc-cli clip ~/Documentos/pass/passwords.kdbx"


alias backup="~/scripts/backup.sh"
alias reload_server="~/server/reload.sh"

alias docker="sudo docker"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
