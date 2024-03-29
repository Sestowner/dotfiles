# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export GPG_TTY="$(tty)"

HISTCONTROL=ignoreboth:erasedups
HISTFILESIZE=1000
HISTFILESIZE=2000
PROMPT_COMMAND='history -a; history -c; history -r'

shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases


# Source configs
for c in ~/.config/shell/*; do . "$c"; done

if [ -z "$BASH_COMPLETION_VERSINFO" ]; then
	if [ -f /etc/profile.d/bash_completion.sh ]; then
	. /etc/profile.d/bash_completion.sh
	elif [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	fi
fi

[ -n "$BASH_COMPLETION_VERSINFO" ] && complete -F _root_command doas

PS1="\[\033[31;1m\]\u\[\033[01;33m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

