#!/bin/bash

echo "Today's `date`"
echo "Enter the path into this directory"

read "path"

echo "show all the files in this path directory"
ls "$path"
