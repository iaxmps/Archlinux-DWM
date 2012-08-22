#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

xset +fp /usr/share/fonts/local
xset fp rehash
feh --bg-scale /home/loscrews/Pics/bg.jpg &
mpd &
xbindkeys &
#xcompmgr &
conky | while read -r; do xsetroot -name "$REPLY"; done &
thunar --daemon &
exec dbus-launch ck-launch-session dwm

