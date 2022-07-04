#!/bin/bash -x

Hcount=0
Tcount=0
count=1
isHeads=0

while(( $count <= 21 ))
do
	((count++))
	randomCheck="$((RANDOM%2))"
	if (( $isHeads == $randomCheck ))
	then
		((Hcount++))
	else
		((Tcount++))
	fi

	if (( $Hcount == 11 ))
	then
		echo "Head 11 times"
		exit
	elif (( $Tcount == 11 ))
	then
		echo "Tail 11 times"
		exit
	else
		echo "next loop"
	fi
done

