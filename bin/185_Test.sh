#!/usr/bin/env bash

if [ -z "$1" ]
  then
  echo "Please enter arguments"
  #exit 1
else
#Takes a bam file and a reference genome
bam_file=$1
ref=$2
unmapped=./output/unmapped/unmapped_$(basename $1)
anchors=./output/anchors/anchors_$(basename ${1%.*}).qfa
prefix=185_test
out_bed=./output/bed_files/$(basename ${1%.*}).bed
out_reads=./output/reads_files/$(basename ${1%.*}).reads
bt_log=./output/logs/bt_$(basename ${1%.*}).log
fc_log=./output/logs/fc_$(basename ${1%.*}).log

echo ">>> get the unmapped"
samtools view -hf 4 $bam_file | samtools view -Sb - > $unmapped
echo ">>> split into anchors"
./bin/find_circ/unmapped2anchors.py $unmapped > $anchors
echo ">>> run find_circ.py"
bowtie2 --reorder --mm -M20 --score-min=C,-15,0 -q -x $ref -U $anchors 2> $bt_log | ./bin/find_circ/find_circ.py -G $3 -p $prefix -s $fc_log > $out_bed 2> $out_reads
#echo ">>> compare to reference result. You should see 'overlap 1' here."
#echo ../cmp_bed.py test_out/sites.bed result_test.bed



### Please help with line 15
# -G path to genome with one fasta file for each chrm
# -r we would have to make that file
# -s output log
# -p prefix to append to each name 
fi
