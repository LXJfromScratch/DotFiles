#!/bin/bash

current_Id=$(hyprctl activeworkspace -j | jq '.id')
status=/home/lxj/.config/waybar/scripts/hyprland-mode-status
mode=""

readarray -t ids < <(cut -d' ' -f1 $status)

for ((i = 0; i < ${#ids[@]}; i++)); do
  if [[ ${ids[i]} -eq $current_Id ]]; then
    mode=""
  fi
done

echo $mode


