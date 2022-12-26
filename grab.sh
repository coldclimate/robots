#!/bin/bash

for line in `cat sites.lst`
do
	CLEAN=`echo ${1} | sed 's/[^a-zA-Z0-9]/_/g'`
	curl -Lsk --max-time 5 "http://www.${1}/robots.txt" -o data/${CLEAN}.txt
	echo ${CLEAN}
done

echo "Done"