#!/bin/sh
echo "PAUSE|`date +"%Y-%m-%d %H:%M|%s"`|`./sum_last.sh`| $1 " >> hours.log
./status.sh
