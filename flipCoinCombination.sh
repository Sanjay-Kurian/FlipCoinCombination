#!/bin/bash -x
result=$((RANDOM%2))
if [ $result -eq 0 ]
then
	echo Heads won
else
	echo Tails won
fi
