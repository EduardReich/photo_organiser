#!/bin/bash

# Set the directory where your photos are located
photos_directory="path/to/photos"

# Set the prefix for the renamed files
file_prefix=""

# Change to the photos directory
cd "$photos_directory" || exit

# Get a list of all the photos in the directory
photo_files=$(find . -maxdepth 1 -type f -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" | sort)

# Sort the photos by creation date (oldest to newest)
sorted_photos=$(for photo in $photo_files; do
    creation_date=$(exiftool -s -s -s -CreateDate "$photo")
    printf "%s\t%s\n" "$creation_date" "$photo"
done | sort | cut -f 2)

# Rename and number the photos
counter=1
for photo in $sorted_photos; do
    new_name="$file_prefix $counter.${photo##*.}"
    mv "$photo" "$new_name"
    echo "Renamed $photo to $new_name"
    let counter++
done
