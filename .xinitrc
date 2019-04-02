# hiDPI
test -f $HOME/.Xresources  && xrdb -merge $HOME/.Xresources

# my keyboards
setxkbmap -layout us,us -variant ,intl -option grp:rctrl_rshift_toggle

# my monitors
xrandr --output DVI-D-1 --primary --mode 1920x1080 --scale 1x1
xrandr --output HDMI-0 --mode 3840x2160 --scale 1x1 --right-of DVI-D-1

# background
feh --bg-scale /home/patrick/perso/wallpapers/20190303_les_filles.jpg


# tools
# status
slstatus &

eval $(ssh-agent)

## restart with Alt-Shift-Q
## (only in debug process because make dwm slow not using exec)
# while true
# do
# 	dwm 2> $HOME/.dwm.log
# done

## or do a simple exec
# eval $(gpg-agent --daemon) #DONT NEED TO LAUNCH IT
exec dwm 2> $HOME/.dwm.log


