#!/bin/bash
#make spreadlist to submit data (fastq) to ENA
#sample_alias	instrument_model	library_name	library_source	library_selection	library_strategy	design_description	library_construction_protocol	insert_size	forward_file_name	forward_file_md5	reverse_file_name	reverse_file_md5

#ls */*_R1.fastq.gz> Folders_R1 #Make a list
#sed -i 's/\// /g' Folders_R1 #Split into two colums
#sed -i 's/R1\.fastq\.gz/ /g' Folders_R1 #make the second column the prefix
head Folders_R1 >Folders_R1_test
echo "sample_alias	instrument_model	library_name	library_source	library_selection	library_strategy	design_description	library_construction_protocol	insert_size	forward_file_name	forward_file_md5	reverse_file_name	reverse_file_md5" > test
#while read -r Sample prefix; do
#Sample=`cut -f 1 -d '/' ${line}`
#prefix=`cut -f 2 -d '/' ${line}|awk -F"R1" '{print}'`
#echo $Sample $prefix
#echo "${Sample}	Illumina HiSeq 3000	NA	GENOMIC	RANDOM	WGS	NA	NA	350	/Bantam/$Sample/${prefix}R1.fastq.gz	/Bantam/$Sample/${prefix}R1.fastq.gz.md5	/Bantam/$Sample/${prefix}R2.fastq.gz    /Bantam/$Sample/${prefix}R2.fastq.gz.md5" >>Spreadsheet.txt
#done < Folders_R1

##A testing file
while read -r Sample prefix; do
#Sample=`cut -f 1 -d '/' ${line}`
#prefix=`cut -f 2 -d '/' ${line}|awk -F"R1" '{print}'`
echo $Sample $prefix
echo -e "${Sample}\tIllumina HiSeq 3000\tNA\tGENOMIC\tRANDOM\tWGS\tNA\tNA\t350\t/Bantam/$Sample/${prefix}R1.fastq.gz\t`cat $Sample/${prefix}R1.fastq.gz.md5`\t/Bantam/$Sample/${prefix}R2.fastq.gz\t`cat $Sample/${prefix}R2.fastq.gz.md5`" >>test
done < Folders_R1_test
