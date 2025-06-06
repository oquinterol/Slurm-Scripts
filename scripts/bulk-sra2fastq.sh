#!/bin/bash

# to use this script launch ./script.sh {file}.txt
# {file}.txt have a list with all SRA id's

while read i
do
	sbatch ~/compute/Alexis/bin/sra2fastq.sh $(pwd)/reads/$i
done < $1

