export PATH="$PATH:$HOME/.local/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

[ "$(tty)" == "/dev/tty1" ] && exec sx sh ~/.xinitrc

