STATUS=`./status.sh`
if [[ "$STATUS" != "STOP" ]] ; then
  echo "Error status is '$STATUS'"
  exit -1
fi
cat hours.log >> $1
echo ""> hours.log
