#! /bin/bash

var=$(cat /sys/class/leds/asus::kbd_backlight/brightness)

if [[ $var -eq 3 ]]; then
  echo 3
  else
    echo $[ $var + 1 ]
fi
