#!/bin/bash

PS3="Power Menu: "
options=("Shutdown" "Reboot" "Suspend" "Logout" "Cancel")
select opt in "${options[@]}"
do
    case $opt in
        "Shutdown")
            systemctl poweroff
            break
            ;;
        "Reboot")
            systemctl reboot
            break
            ;;
        "Suspend")
            systemctl suspend
            break
            ;;
        "Logout")
            hyprctl dispatch exit
            break
            ;;
        "Cancel")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done