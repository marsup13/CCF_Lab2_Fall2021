#!/bin/bash

FILES="4vxdw3pa
kh9excea
dybs9bnk
datumz6m
j4j4xdw6
ym8s5fm4
2h6a75nk
vwvram8
weh83uyn"
for f in $FILES
do
	time hadoop jar hadoop-mapreduce-examples-3.3.1.jar wordcount /input/$f outfile
	hdfs dfs -rm -r -skipTrash -f outfile
done

for f in $FILES
do
	time cat $f | tr ' ' '\n' | sort | uniq -c >>outputlinux.txt
	
done
 


