#!/bin/bash

yad --center \
    --fixed \
    --width=220 \
    --height=120 \
    --title="Power" \
    --text="Choose:" \
    --text-align=center \
    --button="Shutdown:0" \
    --button="Reboot:1" \
    --button="Sleep:2" \
    --button="Logout:3"

case $? in
    0) systemctl poweroff ;;
    1) systemctl reboot ;;
    2) systemctl suspend ;;
    3) i3-msg exit ;;
esac
