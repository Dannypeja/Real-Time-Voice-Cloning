#! /bin/bash

srcExt=mp3
destExt=flac

srcDir=$1
destDir=$2

for filename in "$srcDir"/*.$srcExt; do

        basePath=${filename%.*}
        baseName=${basePath##*/}

        echo "ffmpeg -n -i \"$filename\" \"$destDir\"\"/\"$baseName\".\"$destExt\" && rm $filename"

done

echo "Conversion from ${srcExt} to ${destExt} complete!"
