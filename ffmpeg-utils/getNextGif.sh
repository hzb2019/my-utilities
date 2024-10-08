#!/bin/bash

# gets the next available name for a gif with the given filename before file extension

file=$1
read -r fileName fileExtension <<< $(echo $(getFileNameAndExtension.sh $1))

read -r nextFileName <<< $(getNextFileNumber.sh $fileName "gif")
echo $nextFileName
