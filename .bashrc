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

#PS1='[\u@\h \W]$ '
PS1=$BF_WHITE'['$BF_MAGENTA'\u'$BF_WHITE'@'$BF_RED'\h'$BF_BLUE' \W'$BF_WHITE']'$BF_MAGENTA'$ '$DEFAULT

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

PATH="/home/garrett/.perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/garrett/.perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/garrett/.perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/garrett/.perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/garrett/.perl5"; export PERL_MM_OPT;

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
alias man='man -O width=$COLUMNS'
## Installed programs
alias nf='neofetch'
alias rn='ranger-cd'
alias zt='zathura --fork'
alias mp='setsid -f mupdf'
alias alsamixer='alsamixer -g'
alias ncmpc='ncmpc -C'
alias voiddoc='zathura --fork /usr/share/doc/void/handbook.pdf'
