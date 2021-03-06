#!/bin/bash
STATUS=`./status.sh`
if [[ "$STATUS" == "STOP" ]] ; then
  echo "Error status is $STATUS"
  exit -1
fi
line=`grep -n "####" current.log | tail -n 1 | egrep -oh "^\d+"`
interims_sum=$(sed -n $line,\$p current.log | grep PAUSE | cut -d'|' -f4|./sum_hours.sh)
sum=$(echo -e "${interims_sum}\n$(./sum_last.sh)" | ./sum_hours.sh)
echo $sum
echo "STOP|`date +"%Y-%m-%d %H:%M|%s"`|$sum| $1 " >> current.log
