#!/bin/bash
# Get local time
local_time=$(date +"%H:%M")

# TZ DB can be found in /usr/share/zoneinfo for quick reference see
# https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
# Get time in a different timezone (replace with the desired timezone)
gmt_time=$(TZ="Europe/London" date +"%H:%M")
edt_time=$(TZ="America/New_York" date +"%H:%M")

# Output both times
echo "GMT:$gmt_time | EDT:$edt_time"
