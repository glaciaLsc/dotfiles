#
# ~/.zshrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="%B%F{white}[%F{magenta}%n%F{white}@%F{red}%M %F{blue}%1~%F{white}]%F{magenta}$ %b%f"

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
## GNU programs
alias ls='ls --color=auto'
## Installed programs
alias nf='neofetch'
alias rn='ranger-cd'
alias zt='zathura --fork'
alias mp='setsid -f mupdf'
alias voiddoc='zathura --fork /usr/share/doc/void/handbook.pdf'
