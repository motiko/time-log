#/bin/sh
STATUS=`./status.sh`
if [[ "$STATUS" == "PAUSE" || "$STATUS" == "STOP" ]] ; then
  echo "Error status is $STATUS"
  exit -1
fi
line=`grep -n "####" hours.log | tail -n 1 | egrep -oh "^\d+"`
interims_sum=$(sed -n $line,\$p hours.log | grep PAUSE | cut -d'|' -f4|./sum_hours.sh)
sum=$(echo "$interims_sum\n`./sum_last.sh`" | ./sum_hours.sh)
echo "STOP|`date +"%Y-%m-%d %H:%M|%s"`|$sum| $1 " >> hours.log
