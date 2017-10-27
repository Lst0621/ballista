#!/bin/bash
####### Welcome to my life

cow=$(ls /usr/share/cowsay/cows | cut -f1 -d'.' | shuf | head -1)
COLS=`tput cols`

(fortune &&
	echo "" &&
	echo My Name is  $cow ) | \
	cowthink -f $cow  |\
	awk -v "col=$COLS"  '{ l=length(); s=int((col -30  )/2); printf "%"(s+l)"s\n", $0 }'  | \

	lolcat -F 0.01
echo ""

fortune-zh|\
	awk -v "col=$COLS"  '{ l=length(); s=int((col- l )/2); printf "%"(s+l)"s\n", $0 }'  | lolcat
echo ""

(ddate  | \
	awk -v "col=$COLS"  '{ l=length(); s=int((col-l )/2); printf "%"(s+l)"s\n", $0 }'  &&
	echo "" && 
date  | \
	awk -v "col=$COLS"  '{ l=length(); s=int((col-l )/2); printf "%"(s+l)"s\n", $0 }'  &&

	echo "" &&
	banner "WELCOME"|\
	awk -v "col=$COLS"  '{ l=length(); s=int((col-56 )/2); printf "%"(s+l)"s\n", $0 }'  &&
	banner "TO MY"|\
	awk -v "col=$COLS"  '{ l=length(); s=int((col-45 )/2); printf "%"(s+l)"s\n", $0 }'  &&
	banner "LIFE"|\
	awk -v "col=$COLS"  '{ l=length(); s=int((col-30 )/2); printf "%"(s+l)"s\n", $0 }'  )| \
	lolcat -F 0.12


