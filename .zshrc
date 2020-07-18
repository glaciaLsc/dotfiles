#
# ~/.zshrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[%n@%M %1~]$ "

#export EDITOR="vim"
#export TERMINAL="st"
#export BROWSER="firefox"

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
