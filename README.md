# TeamaNiema
185 project: Brain Cancer

Write something about our project here

Description of files:
        

Our pipeline will be run using 185_Test.sh
    The pipeline depends heavily on the find_circ scripts from:
        http://circbase.org/download/find_circ.tar.gz

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



Alex:
As of right now, here is how you run the script (from the root directory):
Make sure you install pysam (pip install pysam)
When you run on actual data, make sure you update the reference genome accordingly (hg38 for most)
Make sure you index hg38 before running (for bowtie)

source ./bin/185_Test.sh <bam_file> <indexed_file_for_bowtie> <genome>
Example:
	source ./bin/185_Test.sh ./data/raw_data/test_vs_cdr1as.bam ./bin/find_circ/test_data_copy/bt2_cdr1as_locus ./bin/find_circ/test_data/



