#!/bin/sh

status = ""
datetime=$(date "+%a %Y-%m-%d %k:%M:%S")
ram=$(free -h | grep Mem | awk '{printf "%s/%s\n", $3, $2}')
bat0=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2;}')
bat1=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | awk '{print $2;}')

if [[ ! "$bat0" = "0%" ]]; then
  status+="[ BAT0: $bat0 ]"
fi
if [[ ! "$bat1" = "0%" ]]; then
  status+="[ BAT1: $bat1 ]"
fi

status+=" [ RAM: $ram ]"
status+=" [ $datetime ]"

echo "$status"
