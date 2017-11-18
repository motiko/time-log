#!/bin/sh
STATUS=`./status.sh`
if [[ "$STATUS" != "STOP" ]] ; then
  echo "Error status is $STATUS"
  exit -1
fi
echo "################################################################################" >> hours.log
echo "START|`date +"%Y-%m-%d %H:%M|%s"`| $1" >> hours.log
