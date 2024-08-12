#!/usr/bin/bash

xhost +SI:localuser:$USER
xss-lock -- slock &
lxpolkit &
xrdb ~/dotfiles/.emacs.d/exwm/Xresources 

exec picom &
exec nitrogen --restore &

setxkbmap -layout 'fr' -variant 'us-azerty' -model 'pc105' -option 'ctrl:swapcaps' 
