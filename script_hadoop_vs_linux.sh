#!/bin/bash

FILES="Datasets/4vxdw3pa
Datasets/kh9excea
Datasets/dybs9bnk
Datasets/datumz6m
Datasets/j4j4xdw6
Datasets/ym8s5fm4
Datasets/2h6a75nk
Datasets/vwvram8
Datasets/weh83uyn"
for f in $FILES
do
	time hadoop jar hadoop-mapreduce-examples-3.3.1.jar wordcount /input/$f outfile
	hdfs dfs -rm -r -skipTrash -f outfile
done

for f in $FILES
do
	time cat $f | tr ' ' '\n' | sort | uniq -c
	
done
 


