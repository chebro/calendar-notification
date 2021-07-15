#!/bin/bash

ACTION="$HOME/.config/i3blocks/scripts/actions/date.sh"

# handle button actions
case $BLOCK_BUTTON in
	1) $ACTION click;;
	4) $ACTION scrup;;
	5) $ACTION scrdn;;
esac

# i3block
DATE=$(date '+%b %d')
LCAL=" 󰸘 "
echo "$LCAL$DATE "
