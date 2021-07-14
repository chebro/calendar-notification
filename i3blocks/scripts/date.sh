#!/bin/bash

# handle button actions
case $BLOCK_BUTTON in
	*) "$HOME/.config/i3blocks/scripts/actions/date.sh"
esac

# i3block
DATE=$(date '+%b %d')
LCAL=" 󰸘 "
echo "$LCAL$DATE "
