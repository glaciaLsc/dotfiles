#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#export EDITOR="editor_name_here"
#export TERMINAL="terminal_name_here"
#export BROWSER="browser_name_here"

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
alias ls='ls --color=auto'
alias nf='neofetch'
alias zt='zathura --fork'
alias rn='ranger-cd'
