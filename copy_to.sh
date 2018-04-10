#!/bin/bash
STATUS=`./status.sh`
if [[ "$STATUS" != "STOP" ]] ; then
  echo "Error status is '$STATUS'"
  exit -1
fi
cat current.log >> $1
echo ""> current.log
