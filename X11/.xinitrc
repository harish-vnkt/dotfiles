xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --output eDP-1-1 --brightness 0.6
urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
exec i3
