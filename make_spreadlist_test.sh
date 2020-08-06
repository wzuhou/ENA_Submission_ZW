#!/bin/bash
#make spreadlist to submit data (fastq) to ENA
#sample_alias	instrument_model	library_name	library_source	library_selection	library_strategy	design_description	library_construction_protocol	insert_size	forward_file_name	forward_file_md5	reverse_file_name	reverse_file_md5

ls */*_R1.fastq.gz> Folders_R1 #Make a list
sed -i 's/\// /g' Folders_R1 #Split into two colums
sed -i 's/R1\.fastq\.gz/ /g' Folders_R1 #make the second column the prefix
#echo header line
echo "sample_alias	instrument_model	library_name	library_source	library_selection	library_strategy	design_description	library_construction_protocol	insert_size	forward_file_name	forward_file_md5	reverse_file_name	reverse_file_md5" > Spreadsheet.txt
#create the spreadsheet file delimited by tab
while read -r Sample prefix; do
#[Sample] the ID of sample or the folder name of this sample
#[prefix] the prefix of each fastq file
#echo $Sample $prefix 
echo -e "${Sample}\tIllumina HiSeq 3000\tNA\tGENOMIC\tRANDOM\tWGS\tNA\tNA\t350\t/Bantam/$Sample/${prefix}R1.fastq.gz\t`cat $Sample/${prefix}R1.fastq.gz.md5`\t/Bantam/$Sample/${prefix}R2.fastq.gz\t`cat $Sample/${prefix}R2.fastq.gz.md5`">>Spreadsheet.txt
#The optional filds are ocupied by NA in this file, can be replaced to empty filed in Excel before submitting the spreadsheet.
done <Folders_R1
