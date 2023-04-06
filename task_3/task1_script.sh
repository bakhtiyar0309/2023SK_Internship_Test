#!/bin/bash

sed -e 's/[^A-Za-z]/ /g' dracula.txt | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | sort | awk '{print $2" " $1}'
