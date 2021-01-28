#!/bin/sh
t=$(awk '1' log.txt)
name=$(cat log.txt | awk '{ print $4 }')
#echo "$name"
i=1
for n in $name
do
	#echo "$n"
	
	l=$(awk -v j=$i 'NR == j  {print $2}' log.txt)
	h=$(awk -v j=$i 'NR == j {print $3}' log.txt)
	echo "$l"
	echo "$h"
	f=$(awk -v j=$i 'NR == j {print $4}' log.txt)
        
	#value=$(awk '{ print $0 }' $f)
	newf=$(echo "${f^^}")
	#echo "$newf"
	awk -v  m=$l -v n=$h 'NR>=m && NR<=n' $f > $newf

	i=$((i +1))
	
	#awk 'NR>=10 && NR<=15' file1.txt > file2.txt
done



