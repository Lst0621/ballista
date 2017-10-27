#!/bin/bash
####### Welcome to my life

cow=$(ls /usr/share/cowsay/cows | cut -f1 -d'.' | shuf | head -1)
COLS=`tput cols`

(fortune &&
	echo "" &&
	echo     "       $cow" ) | \
	cowthink -f $cow  |\
	awk -v "col=$COLS"  '{ l=length(); s=int((col -30  )/2); printf "%"(s+l)"s\n", $0 }'  | \

	lolcat -F 0.01
echo ""

fortune-zh|\
	awk -v "col=$COLS"  '{ l=length(); s=int((col- l )/2); printf "%"(s+l)"s\n", $0 }'  | lolcat
echo ""

(ddate  | \
	awk -v "col=$COLS"  '{ l=length(); s=int((col-l )/2); printf "%"(s+l)"s\n", $0 }'  &&
	echo "" 	)| \
	lolcat -F 0.12


