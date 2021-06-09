#!/bin/bash -x
declare -A singlet
declare -A doublet
read -p "Enter 1.Singlet combination 2.Doublet combination" x
case $x in
	1)
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
	;;
	2)
		hh=0
		ht=0
		th=0
		tt=0
		for((i=0;i<5;i++))
      do
         result1=$((RANDOM%2))
			result2=$((RANDOM%2))
         if [[ $result1 -eq 0 && $result2 -eq 0 ]]
         then
            ((hh++))
         elif [[ $result1 -eq 0 && $result2 -eq 1 ]]
         then
				((ht++))
			 elif [[ $result1 -eq 1 && $result2 -eq 0 ]]
         then
				((th++))
			 elif [[ $result1 -eq 1 && $result2 -eq 1 ]]
         then
				((tt++))
         fi
      done
      hhperc=$((($hh*100)/5))
      htperc=$((($ht*100)/5))
		thperc=$((($th*100)/5))
		ttperc=$((($tt*100)/5))
      doublet[hh]=$hhperc
      doublet[ht]=$htperc
		doublet[th]=$thperc
		doublet[tt]=$ttperc
      echo "The Doublet combinations are" ${!doublet[@]}
      echo "The Percentage of each combination occuring are" ${doublet[@]}
	;;
esac
