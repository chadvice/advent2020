#!/bin/bash

count=1

for i in `cat day1.txt`; do
	for j in `cat day1.txt`; do
		sum=`expr $i + $j`
		if [ $sum -eq 2020 ]; then
			product=`expr $i \* $j`
			echo "$i + $j = $sum; $i * $j = $product"
		fi
		echo $count
		count=`expr $count + 1`
	done
done
