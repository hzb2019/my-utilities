#!/bin/bash

# assumes all files have .h265 extension and downgrades them to h264 encoding

currentDirectoryFiles=(*)
fileNames=($(getAllFileNames.sh))

for ((i=0; i<${#currentDirectoryFiles[@]}; i++))
do
	downgradeH265ToH264.sh ${currentDirectoryFiles[$i]} "${fileNames[$i]}.h265"
done
