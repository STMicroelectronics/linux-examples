#!/bin/sh

val=1

while true; do

	pid=$$
	gpiomon --num-events=1 --silent --rising-edge gpiochip0 13
	trap 'kill -9 $pid' 2

	if [ $val -eq 1 ]; then
		val=0
	else
		val=1
	fi
	gpioset gpiochip0 14=$val

done
