#!/bin/bash

#find_homologs.sh <query file> <subject file> <output file
$qf_name=$1
$sf_name=$2
$of_name=$3

#tblastn is from protein -> nucleotide db
tblastn -query "$qf_name" -subject "$sf_name" -outfmt "6 pident qlen length" -out matches.txt

#filter output
awk '{if ($1>30 && $3>($4*0.9) print $0}' matches.txt > "$of_name"
wc -l $of_name