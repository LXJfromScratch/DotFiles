#! /bin/bash

var=$(cat /sys/class/leds/asus::kbd_backlight/brightness)

if [[ $var -eq 0 ]]; then
  echo 0
  else
    echo $[ $var - 1 ]
fi
