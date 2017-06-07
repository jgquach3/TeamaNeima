#!/bin/bash
mkdir ../data/glioblastoma_bam_files
cd ../data/glioblastoma_bam_files
python pull_urls.py ../bam.csv | while read line; do echo "wget $line"; done
