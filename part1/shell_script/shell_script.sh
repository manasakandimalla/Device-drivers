# A simple shell script which takes a file name as CLI and give frequency of occurrence of each character in the file
#! /bin/bash

doc="$1"

all=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)

while read -n1 char
do
	case $char in
		"a"|"A" )
			((all[0]++));;
		"b"|"B" )
			((all[1]++));;
		"c"|"C" )
			((all[2]++));;
		"d"|"D" )
			((all[3]++));;
		"e"|"E" )
			((all[4]++));;
		"f"|"F" )
			((all[5]++));;
		"g"|"G" )
			((all[6]++));;
		"h"|"H" )
			((all[7]++));;
		"i"|"I" )
			((all[8]++));;
		"j"|"J" )
			((all[9]++));;
		"k"|"K" )
			((all[10]++));;
		"l"|"L" )
			((all[11]++));;
		"m"|"M" )
			((all[12]++));;
		"n"|"N" )
			((all[13]++));;
		"o"|"O" )
			((all[14]++));;
		"p"|"P" )
			((all[15]++));;
		"q"|"Q" )
			((all[16]++));;
		"r"|"R" )
			((all[17]++));;
		"s"|"S" )
			((all[18]++));;
		"t"|"T" )
			((all[19]++));;
		"u"|"U" )
			((all[20]++));;
		"v"|"V" )
			((all[21]++));;
		"w"|"W" )
			((all[22]++));;
		"x"|"X" )
			((all[23]++));;
		"y"|"Y" )
			((all[24]++));;
		"z"|"Z" )
			((all[25]++));;
		".")
			((all[26]++));;
		"0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9")
			((all[27]++));;
		"!"|"@"|"#"|"$"|"%"|"^"|"&"|"*"|"("|")")
			((all[28]++));;

		esac

done < $doc

echo "number of times a/A appears in the given file is : "${all[0]}
echo "number of times b/B appears in the given file is : "${all[1]}
echo "number of times c/C appears in the given file is : "${all[2]}
echo "number of times d/D appears in the given file is : "${all[3]}
echo "number of times e/E appears in the given file is : "${all[4]}
echo "number of times f/F appears in the given file is : "${all[5]}
echo "number of times g/G appears in the given file is : "${all[6]}
echo "number of times h/H appears in the given file is : "${all[7]}
echo "number of times i/I appears in the given file is : "${all[8]}
echo "number of times j/J appears in the given file is : "${all[9]}
echo "number of times k/K appears in the given file is : "${all[10]}
echo "number of times l/L appears in the given file is : "${all[11]}
echo "number of times m/M appears in the given file is : "${all[12]}
echo "number of times n/N appears in the given file is : "${all[13]}
echo "number of times o/O appears in the given file is : "${all[14]}
echo "number of times p/P appears in the given file is : "${all[15]}
echo "number of times q/Q appears in the given file is : "${all[16]}
echo "number of times r/R appears in the given file is : "${all[17]}
echo "number of times s/S appears in the given file is : "${all[18]}
echo "number of times t/T appears in the given file is : "${all[19]}
echo "number of times u/U appears in the given file is : "${all[20]}
echo "number of times v/V appears in the given file is : "${all[21]}
echo "number of times w/W appears in the given file is : "${all[22]}
echo "number of times x/X appears in the given file is : "${all[23]}
echo "number of times y/Y appears in the given file is : "${all[24]}
echo "number of times z/Z appears in the given file is : "${all[25]}
echo "number of times numbers(any digit) appears in the given file is : "${all[27]}
echo "number of times a special character appears in the given file is : "${all[28]}
echo "number of sentences in the given text file is : "${all[26]}