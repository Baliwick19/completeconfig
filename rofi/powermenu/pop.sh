if [[ $(pgrep -x "rofi")  ]]; then 
    killall rofi 
else
    ~/.config/rofi/powermenu/powermenu.sh  
fi


