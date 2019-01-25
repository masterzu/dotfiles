# hiDPI
test -f ~/.Xresources  && xrdb -merge -I$HOME ~/.Xresources

# my keyboards
test -f ~/.xinitrc-keyboard && ~/.xinitrc-keyboard

# my monitors
test -f ~/.xinitrc-xrandr && ~/.xinitrc-xrandr

# add ssh keys at 
eval $(ssh-agent)

# tools
# status
slstatus &



# restart with Alt-Shift-Q
# while true
# do
# 	dwm 2> ~/.dwm.log
# done

# or do a simple exec
exec ssh-agent dwm 2> ~/.dwm.log

