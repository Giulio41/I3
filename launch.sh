#! /usr/bin/env bash

#Terminate already running bar instances
killall -q polybar
#if all your bars have ipc enabled, you can also use
#polybar-msq cmb quit

#Launch bar1 and bar2
eco "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example >>/tmp/polybar1.log 2>&1 &
#polybar bar2 >>/tmp/polybar2.log 2>&1 &

echo "Bars launched..."
