#!/bin/bash -x
declare -A singlet
heads=0
tails=0
for((i=0;i<5;i++))
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		echo Heads won
		((heads++))
	else
		echo Tails won
		((tails++))
	fi
done
hperc=$((($heads*100)/5))
tperc=$((($tails*100)/5))
singlet[Heads]=$hperc
singlet[Tails]=$tperc
echo "The Singlet combinations are" ${!singlet[@]}
echo "The Percentage of each combination occuring are" ${singlet[@]}
