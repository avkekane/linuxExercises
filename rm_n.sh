#!/bin/bash 

# Check number of arguments
if [ $# -ne 2 ]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 1
fi

dir="$1"
n="$2"

# Find files larger than n bytes and remove them
find "$dir" -type f -size +"${n}"c -print -delete
