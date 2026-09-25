#!/bin/bash
i=2
while [[ $i -le 10 ]]
do
	echo "$i"
	(( i += 2))
done
