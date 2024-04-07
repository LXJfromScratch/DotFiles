swayidle -w timeout 300 'swaylock -f' \
            timeout 360 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on'\
            timeout 300000 'systemctl suspend' \
            before-sleep 'swaylock -f' &
