#!/bin/bash
# Create a file “Folders” ; Every row contains one name of the sample(folder names), and the fatsq files were stored in this folder.
for i in `less Folders` ; do sh make_md5.sh $i ;done
