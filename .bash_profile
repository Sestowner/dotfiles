export PATH="$PATH:$HOME/.local/bin:$(find ~/.scripts -type d -printf %p:)"

[[ -f ~/.bashrc ]] && . ~/.bashrc

[ "$(tty)" == "/dev/tty1" ] && exec startx

