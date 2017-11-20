STATUS=`./status.sh`
if [[ "$STATUS" != "STOP" ]] ; then
  echo "Error status is '$STATUS'"
  exit -1
fi
cat hours.log >> hours/$1.log
echo > hours.log
