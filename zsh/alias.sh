alias work="cd ~/workspace/"
alias obsi="cd ~/workspace/obsidian/notes/"
alias kittyF="kitty +list-fonts --psname | grep " # solo escribe la fuente q quieres buscar
alias backupobs="git add * && git commit -m 'backup' && git push origin main"
alias adre="cd ~/" alias conf="nvim ~/.zshrc"

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

alias parrot="sudo docker start -i parrot"

alias server="sudo systemctl start sshd && sudo systemctl start docker.service && sudo docker start navidrome"

alias passS="keepassxc-cli search ~/Documentos/pass/passwords.kdbx"
alias passC="keepassxc-cli clip ~/Documentos/pass/passwords.kdbx"


alias backup="~/scripts/backup.sh"

alias docker="sudo docker"
