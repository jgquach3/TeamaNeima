#!/bin/bash
mkdir glioblastoma_bam_files
cd glioblastoma_bam_files
python pull_urls.py ../bam.csv | while read line; do echo "wget $line"; done
