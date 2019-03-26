#! /bin/bash
# comment - system variables
#echo "hello world"

doc="$1"

count=0
all=(0 0 0 0 0 0 0 0 0)
while read -n1 char
do
	#if [[ $char == "." ]]; then
		#echo $char
		#count=$((count+1))
	#fi
	case $char in
		"h" )
		#	{all[$0]}=$((${all[0]}+$1))
			((all[0]++))
			echo first;;
		"l" )
		#	{all[$1]}=$((${all[1]}+$1))
			echo second;;
		"e" )
			;;
		#	{all[$2]}=$((${all[2]}+$1));;
		"o" )
			;;
		#	{all[$3]}=$((${all[3]}+$1));;
		"w" )
			;;
		#	{all[$4]}=$((${all[4]}+$1));;
		"r" )
			;;
		#	{all[$5]}=$((${all[5]}+$1));;
		"d" )
			;;
		#	{all[$6]}=$((${all[6]}+$1));;
	esac
done < $doc

echo ${all[@]}