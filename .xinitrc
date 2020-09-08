#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#pulseaudio
pulseaudio &


#compositor
picom --experimental-backends -b &

#wallpaper
wal -R &

#remap caps_lock to escape
setxkbmap -option caps:swapescape &

sleep 1

#xmodmap functions
xmodmap -e "keycode 23 = Hyper_L" &
xmodmap -e "keysym Scroll_Lock = Tab" &
xmodmap -e "keycode 51 = Hyper_R" &
xmodmap -e "keysym Pause = backslash" &
xmodmap -e "add mod4 = Hyper_R" &

sleep 1

#xcape functions (predifined in .Xmodmap)
xcape -e "Hyper_L=Tab" &
xcape -e "Hyper_R=backslash" &

sleep 1

#java support
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

#loop
while true; do
	dwm >/dev/null 2>&1
done 


#start dwm
exec dwm
