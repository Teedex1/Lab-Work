#!/bin/bash
i=1
while [[ $i -le 5 ]]
do
       echo "$i";
	(( i += 1 ))
done

j=1
for j in {1..50}
do
	echo $j
done
