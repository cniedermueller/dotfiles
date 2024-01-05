#!/bin/sh

datetime=$(date "+%a %Y-%m-%d %k:%M:%S")
ram=$(free -h | grep Mem | awk '{printf "RAM: %s/%s\n", $3, $2}')

echo $ram $datetime
