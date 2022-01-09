export PATH="$PATH:$HOME/.local/bin"
export XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
export EDITOR="vim"
export RCLONE_PASSWORD_COMMAND="pash rclone"

[ "$SHELL" == "/bin/bash" ] && [ -f ~/.bashrc ] && . ~/.bashrc

[ "$(tty)" == "/dev/tty1" ] && exec ssession

