# Load Xresources on startx
xrdb .Xresources

# Start picom compositor
picom -CGb

# Launch i3-gaps
exec i3
