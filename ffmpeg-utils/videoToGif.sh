#!/bin/bash

# converts an entire video file into a gif

if ! [ -f $1 ]  # if first argument is not a valid file in the current context
then
	echo "File not found."
	exit 1
fi

read -r nextFileName <<< $(getNextGif.sh $1) # get the output file name
echo "Output file is: " $nextFileName

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd ) # get the directory of the script so we can find the config file path
read -r config <<< $(echo $(cat "${SCRIPT_DIR}/videoToGif.config")) # read the config file options

ffmpeg -ss 0 -t 100 -i $1 \
    -vf $config \
    -loop 0 $nextFileName
