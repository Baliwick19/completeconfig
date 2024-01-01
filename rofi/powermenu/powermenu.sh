#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu
#
## Available Styles
#
## style-1   style-2   style-3   style-4   style-5
## style-6   style-7   style-8   style-9   style-10

# Current Theme
dir="$HOME/.config/rofi/powermenu/"
theme='style'

# CMDs
uptime="`uptime -p | sed -e 's/up //g'`"
host=`hostname`

# Options
shutdown='shutdown'
reboot='reboot'
lock='lock'
suspend='suspend'
logout='logout'
# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Uptime: $uptime" \
		-mesg "Uptime: $uptime" \
		-theme ${dir}/${theme}.rasi
}


# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$shutdown\n$reboot\n$logout\n$lock\n$suspend" | rofi_cmd
}



# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
		poweroff
        ;;
    $reboot)
		reboot
        ;;
    $lock)
        swaylock
        ;;
    $suspend)
		systemctl suspend
        ;;
    $logout)
		hyprctl dispatch exit
        ;;
esac
