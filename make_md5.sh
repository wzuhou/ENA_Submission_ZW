#!/bin/bash
#Usage:
#sh Run_make_md5.sh
#for i in `less Folders` ; do sh make_md5.sh $i ;done
cd $1 #Enter the folder
ls *.gz >Fastq_list #List out all the fast1 files
for i in `less Fastq_list`;do \
echo $i
md5sum $i|awk '{print $1}'> ${i}.md5
done
cd ..
