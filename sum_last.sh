#!/bin/sh
STATUS=`./status.sh`
if [[ "$STATUS" != "START" &&  "$STATUS" != "RESUME" ]] ; then
  echo "0:0"
  exit -1
fi
last=$(cat current.log | tail -n 1 |  cut -d'|' -f3 | egrep -oh "\d+")
now=$(date +"%s")
interim_sec=$((now - last))
total_minutes=$((interim_sec / 60))
hours=$((total_minutes / 60))
minutes=$((total_minutes % 60))
echo "$hours:$minutes"
