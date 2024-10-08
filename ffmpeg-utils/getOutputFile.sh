#!/bin/bash

# gets the next available name for a file with the given filename

file=$1
read -r fileName fileExtension <<< $(echo $(getFileNameAndExtension.sh $1))

read -r nextFileName <<< $(getNextFileNumber.sh $fileName $fileExtension)
echo $nextFileName
