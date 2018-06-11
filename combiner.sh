#!/bin/bash
count=1
while [ $count -le 146 ]
do
find ${count}_* -name *R1_001.fastq.gz -exec cat {} > ${count}_R1.fastq.gz \;
find ${count}_* -name *R2_001.fastq.gz -exec cat {} > ${count}_R2.fastq.gz \;
echo "$count"
(( count++ ))
done
