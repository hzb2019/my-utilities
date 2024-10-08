#!/bin/bash

# gets file name before the file extension

echo $(echo $(getFileNameAndExtension.sh $1) | head -n1 | awk '{print $1;}')
