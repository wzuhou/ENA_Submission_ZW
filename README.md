# ENA_Submission_test

### Author: Zhou Wu
### Date: 2020-08-06

This is to show the basic steps to submit data to ENA repository.
WGS data with PE reads will be submitted. we have 44 samples with 826 PE fastq files. 

**NOTE** If more than two PE files of one single sample need to be submitted, then the mulitple PE reads files of the same sample should be stored under one folder named with the sample name. Then all the folder names(which equals the sample list) are listed in the file **Folders**
The PE reads should always share the prefix of file.

**It is recommanded to test the submissions using the [Webin test service](https://ena-docs.readthedocs.io/en/latest/submit/general-guide/interactive.html?highlight=TEST#production-and-test-services)**

## Steps for submission on ENA
1.	Study  x1 (Do it online **interactively**)
2.	Samples  x44 (Do it online **interactively**)
3.	Data  x143x2 (PE-reads) (Do it online **interactively**, prepare the speadsheet and md5 with the following scripts)

## Scripts
1.  make_md5.sh 
2.  Run_make_md5.sh  # **Only needed when more than two PE reads files of one single sample are presented**, and this script is simply used to run `make_md5.sh`
3.  make_spreadlist_test.sh
