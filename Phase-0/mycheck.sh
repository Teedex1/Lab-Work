#!/bin/bash

check_status(){
if [ $? -ne 0 ]; then
	echo "error occured"
else
	echo "success"
fi
}
