#!/bin/bash

# arg 1 is the .h265 encoded file
# arg 2 is the name of the output file

ffmpeg -i $1 -c:v libx264 -crf 20 $2 
