#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep -x picom)" ]; then
            pkill picom
        else
            picom -b --config ~/.config/picom/config
        fi       
 ;;
    *)
        if [ "$(pgrep -x picom)" ]; then
            echo "#1"
        else
            echo "#2"
        fi
        ;;
esac
