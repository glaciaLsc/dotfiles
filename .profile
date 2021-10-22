#
# ksh profile
#

if [[ "$(tty)" = "/dev/tty1" ]]; then
	export ENV=$HOME/.kshrc
	startx
fi
