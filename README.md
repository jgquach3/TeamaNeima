# TeamaNiema
185 project: Brain Cancer

data:
* bam.csv - csv with links to glioblastoma bam and bam index file downloads and other information about each sample

* hg38 files available (Direct download link) at:
http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.chromFa.tar.gz

* Circular RNA fasta and bed files available at:
http://circbase.org/cgi-bin/downloads.cgi

bin:
* pull_urls.py - grabs URLs from bam.csv
* get_bam.sh - downloads glioblastoma bam files into new directory

To download bam and hg38 files:
> ../bin/get_bam.sh

**NOTE**
Running the script will download more than 200 GB of data, so make sure you know what you're about.
