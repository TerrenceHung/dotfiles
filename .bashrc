#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'
PS1="\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;75m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[38;5;11m\]\$(parse_git_branch) \[$(tput sgr0)\]\[\033[38;5;75m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
. /etc/profile.d/vte.sh
alias systemctl='sudo systemctl'
