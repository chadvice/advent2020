#!/bin/bash

count=1

for i in `cat day1.txt`; do
	for j in `cat day1.txt`; do
		for k in `cat day1.txt`; do
			sum=`expr $i + $j + $k`
			if [ $sum -eq 2020 ]; then
				product=`expr $i \* $j \* $k`
				echo "$i + $j + $k = $sum; $i * $j * $k = $product"
			fi

			echo "count=$count"
			count=`expr $count + 1`
		done	
	done
done
