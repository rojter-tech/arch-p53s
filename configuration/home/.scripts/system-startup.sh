#!/bin/bash
setxkbmap -option 'grp:alt_shift_toggle' -layout us,se -variant qwerty
numlockx on
eval `ssh-agent`
xrdb -load ~/.Xresources
echo 16961 > /sys/class/backlight/intel_backlight/brightness
#~/.screenlayout/top_wide.sh
/home/dreuter/.screenlayout/closet_multi_setup.sh
feh --bg-scale ~/.xmonad/bg/code-coding_3840x2400.jpg
(sudo killall conky; conky -c $HOME/.xmonad/scripts/system-overview) &
(sleep 5; /usr/bin/nm-applet) &
#(~/.scripts/connect_bt.sh) &
echo "Sucess loading startup"

