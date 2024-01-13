#!/usr/bin/env bash

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
		shutdown now 
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
