#! /bin/bash

send_notification() {
	dunstify -h string:x-canonical-private-synchronous:calendar \
		"$(cal "$1" | head -n1)" \
		"$(cal "$1" | tail -n7 | sed "s|$TODAY|<u><b>$TODAY</b></u>|g")\n<i>       ~ calendar</i> 󰸗 " \
		-u NORMAL
}

scroll_action() {
	if [ "$DIFF" -ge 0 ]; then
		send_notification "+$DIFF month"
	else
		DIFF=$(echo "$DIFF*-1" | bc);
		send_notification "$DIFF month ago"
	fi
}

TMP="/tmp/calendar_notification_month"
touch "$TMP"

TODAY=$(date '+%d')
DIFF=$(cat "$TMP")

case $BLOCK_BUTTON in
	1) # click
		echo 0 > "$TMP"; send_notification -1
	;;
	4) # scroll up
		echo $((DIFF+1)) > "$TMP"; scroll_action
	;;
	5) # scroll down
		echo $((DIFF-1)) > "$TMP"; scroll_action
	;;
esac

