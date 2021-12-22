#! /bin/bash

# takes dir as argument and deletes all subfolders with only one file inside.

rootpath=$1

find $rootpath -maxdepth 1 -type d -exec bash -c "echo -ne '{}\t'; ls '{}' | wc -l" \; | \
awk -F"\t" '$NF==1{print $1}' | xargs rm -rv