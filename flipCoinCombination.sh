#!/bin/bash -x
declare -A singlet
declare -A doublet
declare -A triplet
read -p "Enter 1.Singlet combination 2.Doublet combination 3.Triplet combination" x
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
		for((i=0;i<10;i++))
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
      hhperc=$((($hh*100)/10))
      htperc=$((($ht*100)/10))
		thperc=$((($th*100)/10))
		ttperc=$((($tt*100)/10))
      doublet[HH]=$hhperc
      doublet[HT]=$htperc
		doublet[TH]=$thperc
		doublet[TT]=$ttperc
      echo "The Doublet combinations are" ${!doublet[@]}
      echo "The Percentage of each combination occuring are" ${doublet[@]}
	;;
	3)
		hhh=0
		hht=0
		hth=0
		htt=0
		tht=0
		tth=0
		thh=0
		ttt=0
		for((i=0;i<20;i++))
      do
         result3=$((RANDOM%2))
         result4=$((RANDOM%2))
			result5=$((RANDOM%2))
         if [[ $result3 -eq 0 && $result4 -eq 0 && $result5 -eq 0 ]]
         then
            ((hhh++))
         elif [[ $result3 -eq 0 && $result4 -eq 0 && $result5 -eq 1 ]]
         then
            ((hht++))
         elif [[ $result3 -eq 0 && $result4 -eq 1 && $result5 -eq 0 ]]
         then
            ((hth++))
			elif [[ $result3 -eq 0 && $result4 -eq 1 && $result5 -eq 1 ]]
         then
            ((htt++))
			elif [[ $result3 -eq 1 && $result4 -eq 0 && $result5 -eq 1 ]]
         then
            ((tht++))
			elif [[ $result3 -eq 1 && $result4 -eq 1 && $result5 -eq 0 ]]
         then
            ((tth++))
			elif [[ $result3 -eq 1 && $result4 -eq 0 && $result5 -eq 0 ]]
         then
            ((thh++))
			elif [[ $result3 -eq 1 && $result4 -eq 1 && $result5 -eq 1 ]]
         then
            ((ttt++))
			fi
		done
		hhhperc=$((($hhh*100)/20))
		hhtperc=$((($hht*100)/20))
		hthperc=$((($hth*100)/20))
		httperc=$((($htt*100)/20))
		thtperc=$((($tht*100)/20))
		tthperc=$((($tth*100)/20))
		thhperc=$((($thh*100)/20))
		tttperc=$((($ttt*100)/20))
		triplet[HHH]=$hhhperc
		triplet[HHT]=$hhtperc
		triplet[HTH]=$hthperc
		triplet[HTT]=$httperc
		triplet[THT]=$thtperc
		triplet[TTH]=$tthperc
		triplet[THH]=$thhperc
		triplet[TTT]=$tttperc
		echo "The Triplet combinations are" ${!triplet[@]}
      echo "The Percentage of each combination occuring are" ${triplet[@]}
	;;
esac
