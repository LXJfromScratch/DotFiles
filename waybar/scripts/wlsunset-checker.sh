#!/bin/sh

pid=$(pgrep -x wlsunset)

if [ $pid ]; then
  # echo ""
  echo '{"text":"","tooltip":"Nightlight on"}'
else
  # echo "󰖨"
  echo '{"text":"󰖨","tooltip":"Nightlight off"}'
fi
