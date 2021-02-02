# ENA_Submission_test

### Author: Zhou Wu
### Date: 2020-08-06

This is to show the basic steps to submit data to ENA repository.
WGS data with PE reads will be submitted. we have 44 samples with 826 PE fastq files. 
The fatsq files of the same sample were stored under one folder, named by the sample name.
The PE reads should share the prefix of file.
It is recommanded to test the submissions using the [Webin test service](https://ena-docs.readthedocs.io/en/latest/submit/general-guide/interactive.html?highlight=TEST#production-and-test-services)

## Steps for submission on ENA
1.	Study  x1 (Do it online **interactively**)
2.	Samples  x44 (Do it online **interactively**)
3.	Data  x143x2 (PE-reads) (Do it online **interactively**, prepare the speadsheet and md5 with the following scripts)

## Scripts
1.  make_md5.sh 
2.  Run_make_md5.sh
3.  make_spreadlist_test.sh
