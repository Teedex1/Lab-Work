#!/bin/bash
i=100

while [[ $i -ge 10 ]]
do
	echo "$i"
	(( i -= 1))
done
	
