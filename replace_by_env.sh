#!/bin/bash
output=$(cat $1)
while read -r line ; do
    key=$(echo $line | cut -f1 -d=)
    value=$(echo $line | cut -f2 -d=)
    output=$(echo "$output" | sed -e 's/\$'"$key"'/'"$value"'/')
done
echo "$output"