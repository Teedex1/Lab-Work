#!/bin/bash
fruit="apple"
case $fruit in
	"apple")
echo "this is a red fruit"
;;
	"lemon")
	echo "this is a green fruit" 
	;;
*)
	echo "this is not a fruit"
esac
