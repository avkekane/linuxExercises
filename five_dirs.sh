
#!/bin/bash

mkdir -p five

for i in $(seq 1 5); do
    subdir="five/dir$i"
    mkdir -p "$subdir"

    # Loop to create 4 files in each subdirectory
    for j in $(seq 1 4); do
        filepath="$subdir/file$j"
        
        # Clear/create the file
        > "$filepath"
        
        # Fill file 'j' with 'j' lines, each containing the digit 'j'
        for k in $(seq 1 $j); do
            echo "$j" >> "$filepath"
        done
    done
done

    
