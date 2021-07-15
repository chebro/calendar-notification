#! /bin/bash

send_notification() {
	TODAY=$(date '+%d')
	HEAD=$(cal "$1" | head -n1)
	BODY=$(cal "$1" | tail -n7 | sed "s|$TODAY|<u><b>$TODAY</b></u>|g")
	FOOT="\n<i>       ~ calendar</i> 󰸗 "
	dunstify -h string:x-canonical-private-synchronous:calendar \
		"$HEAD" "$BODY$FOOT" -u NORMAL
}

handle_action() {
	echo "$DIFF" > "$TMP"
	if [ "$DIFF" -ge 0 ]; then
		send_notification "+$DIFF month"
	else
		DIFF=$(echo "$DIFF*-1" | bc);
		send_notification "$DIFF month ago"
	fi
}

TMP="/tmp/calendar_notification_month"
touch "$TMP"

DIFF=$(cat "$TMP")

case $1 in
	"curr") DIFF=0;;
	"next") DIFF=$((DIFF+1));;
	"prev") DIFF=$((DIFF-1));;
esac

handle_action
