#!/bin/bash
file="urls.txt"

# Declare an empty array
readarray -t array < "$file"

for url in "${array[@]}"
do
    # Run waybackurls with the desired options and save the output to a file
    waybackurls "$url" | grep "=" | kxss | tee "op/wayback-kxss/$url-wayback-kxs-output.txt"
    
done
