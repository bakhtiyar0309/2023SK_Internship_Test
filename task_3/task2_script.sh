#!/bin/bash
if [ $# -lt 2 ];
then
  echo "$0: Missing arguments"
  echo "1st argument: the name of txt file (e.g. dracula.txt)"
  echo "2nd argument: the folder to save output files (e.g. output)" 
  echo "For example: $0 dracula.txt output"
  exit 1
elif [ $# -gt 2 ];
then
  echo "$0: Too many arguments: $@"
  exit 1
fi 

filename=$1
output=$2

ten=$(sed -e  's/[^A-Za-z]/ /g' $filename | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | sort -nr | awk '{print $2" " $1}'| head -10; echo "x")

ten="${ten%%x}"

if [ ! -d "$(pwd)/$output" ]
then
	mkdir $output
fi

echo "${ten}"|head -10| while read line
do
 	word=$(echo $line| awk '{print $1}')
 	count=$(echo $line| awk '{print $2}')
	touch $output/"$word"_"$count".txt
done

echo "the operation has finished!"
