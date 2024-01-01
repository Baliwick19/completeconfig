if [[ $(pgrep -x "rofi")  ]]; then 
    killall rofi 
else
    ~/.config/rofi/launchers/run.sh  
fi


