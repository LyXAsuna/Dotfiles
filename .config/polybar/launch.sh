#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Set colors according to those defined by wal
source "${HOME}/.cache/wal/colors.sh"
background=$color0
background_alt=$color3
foreground=$color15
foreground_alt=$color2
highlight=$color4

# Spotify shit
rm -rf /tmp/ipc-bottom
ln -s /tmp/polybar/mqueue.$! /tmp/ipc-bottom

export POLY_WS_ICON_0="1;%{F$foreground_alt}%{F-} 1"
export POLY_WS_ICON_1="2;%{F$foreground_alt}%{F-} 2"
export POLY_WS_ICON_2="3;%{F$foreground_alt}%{F-} 3"
export POLY_WS_ICON_3="4;%{F$foreground_alt}%{F-} 4"
export POLY_WS_ICON_4="5;%{F$foreground_alt}%{F-} 5"
export POLY_WS_ICON_5="6;%{F$foreground_alt}%{F-} 6"
export POLY_WS_ICON_6="7;%{F$foreground_alt}%{F-} 7"
export POLY_WS_ICON_7="8;%{F$foreground_alt}%{F-} 9"
export POLY_WS_ICON_8="9;%{F$foreground_alt}%{F-} 0"

# start one on every possible active monitor
# https://github.com/polybar/polybar/issues/763#issuecomment-331604987
#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload main &
#  done
#else
polybar --reload main &
#fi
