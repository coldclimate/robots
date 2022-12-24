#!/bin/bash
set -x
while read line
do
	CLEAN=`echo ${line} | sed 's/[^a-zA-Z0-9]/_/g'`
	curl -Lsk --connect-timeout 2 "http://www.${line}/robots.txt" -o data/${CLEAN}.txt
done < sites.lst