#!/bin/bash

# gets start and end times to clip a given video file into a gif

if ! [ -f $1 ] 
then
	echo "File not found."
	exit 1
fi

read -r nextFileName <<< $(getNextGif.sh $1)
echo "Output file is: " $nextFileName

read -p "What is the start time for the clip? " startTime
read -p "What is the end time for the clip? " endTime
length=$((endTime - startTime))
if [ $length -gt 0 ]
then
	echo "Length is " $length
else
	echo "Length is not valid."
	exit 1
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd ) # get the directory of the script so we can find the config file path
read -r config <<< $(echo $(cat "${SCRIPT_DIR}/videoToGif.config")) # read the config file options

ffmpeg -ss $startTime -t $length -i $1 \
    -vf $config \
    -loop 0 $nextFileName
