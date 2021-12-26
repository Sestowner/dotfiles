export PATH="$PATH:$HOME/.local/bin"
export XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
export EDITOR="vim"

[ "$SHELL" == "/bin/bash" ] && [ -f ~/.bashrc ] && . ~/.bashrc

[ "$(tty)" == "/dev/tty1" ] && exec startx

