#!/bin/bash
echo "Today is $(date)"
echo "path to directory"

read "path"

echo "your path has the following directories"
ls "$path"
