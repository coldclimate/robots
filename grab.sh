#!/bin/bash
set -x
while read line
do
	CLEAN=`echo ${line} | sed 's/[^a-zA-Z0-9]/_/g'`
	wget "http://www.${line}/robots.txt" -O data/${CLEAN}.txt
done < sites.lst