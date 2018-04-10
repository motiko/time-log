#!/bin/bash
line=`grep -n "####" current.log | tail -n 1 | egrep -oh "^\d+"`
interims_sum=$(sed -n $line,\$p current.log | grep PAUSE | cut -d'|' -f4|./sum_hours.sh)
sum=$(echo "$interims_sum\n`./sum_last.sh`" | ./sum_hours.sh)
echo "STOP|`date +"%Y-%m-%d %H:%M|%s"`|$sum| $1 " >> current.log
./status.sh
