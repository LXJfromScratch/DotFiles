#! /bin/bash

current_id=$(hyprctl activeworkspace -j | jq '.id')

if [ $current_id -eq $1 ]; then
  hyprctl dispatch workspace previous
else
  hyprctl dispatch workspace $1
fi
