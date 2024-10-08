#!/bin/bash

# arg 1 file name
# arg 2 file extension

# finds a file name that does not exist in the current directory, given a file name and extension

fileName=$1
fileExtension=$2
concatNum=0

while [ -f "${fileName}${concatNum}.${fileExtension}" ]
do
	concatNum=$((concatNum + 1))	
done

echo "${fileName}${concatNum}.${fileExtension}"
