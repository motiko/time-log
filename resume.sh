#!/bin/sh
if [[ "$(./status.sh)" != "PAUSE" ]] ; then
  echo "Error status is $(./status.sh)"
  exit -1
fi
echo "RESUME|`date +"%Y-%m-%d %H:%M|%s"`| $1 " >> current.log
