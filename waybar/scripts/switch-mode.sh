
#!/bin/bash

current_Id=$(hyprctl activeworkspace -j | jq '.id')
status=/home/lxj/.config/waybar/scripts/hyprland-mode-status

infile() {
  readarray -t ids < <(cut -d' ' -f1 $1)
  for ((i = 0; i < ${#ids[@]}; i++)); do
    if [[ ${ids[i]} -eq $2 ]]; then
      return 1
    fi
  done
}

infile $status $current_Id
ret=$?

if [ $ret -eq 1 ]; then
  sed -i "/$current_Id/d" $status
else
  echo $current_Id >> $status
fi

hyprctl dispatch workspaceopt allfloat
