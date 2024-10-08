#!/bin/bash

# separates the name of the file from the file extension, then prints them on two separate lines

OIFS=$IFS
IFS="."

fileString=($1)
fileName=${fileString[0]}
fileExtension=${fileString[1]}

index=2
while [ $index -lt ${#fileString[@]} ]
do
	fileExtension+=".${fileString[$index]}"
	index=$((index+1))
done

IFS=$OIFS

echo $fileName
echo $fileExtension

