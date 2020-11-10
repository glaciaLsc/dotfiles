#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BF_RED='\[\033[1;31m\]'
BF_GREEN='\[\033[1;32m\]'
BF_YELLOW='\[\033[1;33m\]'
BF_BLUE='\[\033[1;34m\]'
BF_MAGENTA='\[\033[1;35m\]'
BF_CYAN='\[\033[1;36m\]'
BF_WHITE='\[\033[1;37m\]'

DEFAULT='\[\033[0m\]'

# Default prompt
#PS1='[\u@\h \W]$ '
# Colorful prompt
PS1=$BF_WHITE'['$BF_MAGENTA'\u'$BF_WHITE'@'$BF_RED'\h'$BF_BLUE' \W'$BF_WHITE']'$BF_MAGENTA'$ '$DEFAULT

#export EDITOR=
#export TERMINAL=
#export BROWSER=

# Make Ranger cd into most recently-visited directory upon exiting
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
		cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

# Aliases
## Default programs
alias ls='ls --color=auto'
## Installed programs
alias nf='neofetch'
alias zt='zathura --fork'
alias rn='ranger-cd'
