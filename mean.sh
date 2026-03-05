#!/bin/bash

# check arguments
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 1
fi

col="$1"

# if file provided use it, otherwise read stdin
if [ $# -eq 2 ]; then
    input="$2"
else
    input="/dev/stdin"
fi

cut -d',' -f"$col" "$input" | tail -n +2 | awk '{sum+=$1; n++} END{if(n>0) print sum/n}'
