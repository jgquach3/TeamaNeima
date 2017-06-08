#!/bin/bash
mkdir ../data/glioblastoma_bam_files
cd ../data/glioblastoma_bam_files
python ../../bin/pull_urls.py ../bam.csv > tmp
cat tmp | head -n 1 | while read line; do wget $line ; done
