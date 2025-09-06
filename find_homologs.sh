#!/bin/bash

#find_homologs.sh <query file> <subject file> <output file
$qf_name=$1
$sf_name=$2
$of_name=$3

#tblastn is from protein -> nucleotide db
tblastn -query "$qf_name" -subject "$sf_name" -outfmt "6 pident qlen length" -out matches.txt

