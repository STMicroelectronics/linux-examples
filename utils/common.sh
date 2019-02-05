#!/bin/sh

get_board_compatible()
{
local base_dt_compatible=$(tr -d '\0' </proc/device-tree/compatible)
local dt_compatible="error"

	case $base_dt_compatible in
	*-ev1*)
		dt_compatible="ev1"
		;;
	*-dk2*)
		dt_compatible="dk2"
		;;
	esac

	echo "$dt_compatible"
}
