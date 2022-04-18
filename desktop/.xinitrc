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

# Set the cursor to something sensible
xsetroot -cursor_name left_ptr

# Trackpad: enable tap-to-click
xinput set-prop 12 333 1

# Trackpad: set scrolling direction to natural
xinput set-prop 12 312 1

# Trackpad: don't disable when typing
xinput set-prop 12 341 0

# Start window manager
bspwm 2> .logs/bspwm.err > .logs/bspwm.log
