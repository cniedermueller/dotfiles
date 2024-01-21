#!/bin/sh

datetime=$(date "+%a %Y-%m-%d %k:%M:%S")
ram=$(free -h | grep Mem | awk '{printf "RAM: %s/%s\n", $3, $2}')
load=$(cat /proc/loadavg | awk '{printf "load average: %s %s %s (%s)", $1, $2, $3, $4};')

echo "$load" "$ram" "$datetime"
