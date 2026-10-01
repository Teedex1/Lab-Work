#!/bin/bash

echo "Please enter your num"
read num

if [ $num -gt 0 ]
then
	echo "$num is Positive"
elif [ $num -lt 0 ]
then
	echo "$num is negative"
else
	echo "$num is Zero"
fi

