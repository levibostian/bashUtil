#!/bin/bash
# make sure a process is always running.

# designed to be a cron job
# $> crontab -e
# type following below to check if rescuetime running every 5 minutes.
# */5 * * * * /location/of/bashUtil/keepup.sh rescuetime rescuetime

program="$1"
scripttorun="$2"

if [[ ! `pidof -s $program` ]]; then
    "$scripttorun" &
fi
