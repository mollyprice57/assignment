#!/bin/bash
#Displays a given amount of lines of files either at the top or the bottom
#U1857246 Molly Price
biglist=$2
lines=$3
biglist+="/*"

if [ $1 == "-head" ]
then
	for dirctname in $biglist
	do
		temporary=$(head -n $lines $dirctname)
		echo "Head Start $dirctname"
		echo "$temporary"
	done
fi

if [ $1 == "-tail" ]
then
	for dirctname in $biglist
	do
		temporary=$(tail -n $lines $dirctname)
		echo "Tail Start $dirctname"
		echo "$temporary"
	done
fi
