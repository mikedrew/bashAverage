#/bin/bash

total=0 
average=0

#read how many integers are expected
read intCount

#read intCount integers and add them to the running total
for((i=0; i<$intCount;i++))
do
        read temp
        total=$(($total + $temp))
done

# -l indicates floating point
average=$(echo "$total/$intCount" | bc -l)

#format average with leading zero and 3 decimal places, rounding up.
printf "%0.3f\n" $average 
