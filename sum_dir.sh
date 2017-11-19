#/bin/sh

ls -1 $1/*.log | while read filename; do
  ./sum_file.sh $filename
done | ./sum_hours.sh
