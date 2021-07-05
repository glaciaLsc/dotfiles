#
# ~/.zshrc
#

#PS1="[%n@%M %1~]$ "
PS1="%B%F{white}[%F{magenta}%n%F{white}@%F{red}%M %F{blue}%1~%F{white}]%F{magenta}$ %b%f"

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
alias ls='ls -l --color=auto'
alias man='man -O width=$COLUMNS'
## Installed programs
alias nf='neofetch'
alias rn='ranger-cd'
alias zt='zathura --fork'
alias mp='setsid -f mupdf'
alias alsamixer='alsamixer -g'
alias ncmpc='ncmpc -C'
alias voiddoc='zathura --fork /usr/share/doc/void/handbook.pdf'

# Enable syntax highlighting
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
