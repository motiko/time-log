#!/bin/bash
# e.g. input
# 4:20
# 1:30
# 0:05
# ...
sum=0
while IFS=: read -r hours minutes; do
    minutes=`echo $minutes | sed 's/^0\d//'`
    sum=$(($sum + $hours * 60 + $minutes))
done
total=$(($sum / 60)):$(($sum % 60))
echo $total
