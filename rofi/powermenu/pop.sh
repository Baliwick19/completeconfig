#!/bin/bash

rofi_pid=$(pgrep -x "rofi")

if [ -n "$rofi_pid" ]; then
    kill "$rofi_pid"
fi

~/.config/rofi/powermenu/powermenu.sh

