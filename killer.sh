#!/bin/bash

LOG_FILE="/tmp/zenigma.log"

KILLER_LOG="/tmp/killer.log"


while true; do

    LINE_COUNT=$(wc -l < "$LOG_FILE")

    if [ "$LINE_COUNT" -ge 20 ]; then

        pkill -f zenigma.sh

        echo "$(date): $LINE_COUNT lines, file deleted" >> "$KILLER_LOG"

        rm "$LOG_FILE"

        nohup bash zenigma.sh &

    else

        echo "$(date): $LINE_COUNT lines, no action" >> "$KILLER_LOG"

    fi

    sleep 300

done