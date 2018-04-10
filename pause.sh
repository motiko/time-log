#!/bin/bash
STATUS=`./status.sh`
if [[ "$STATUS" != "START" &&  "$STATUS" != "RESUME" ]] ; then
  echo "Error status is $STATUS"
  exit -1
fi
echo "PAUSE|`date +"%Y-%m-%d %H:%M|%s"`|`./sum_last.sh`| $1 " >> current.log
./status.sh
