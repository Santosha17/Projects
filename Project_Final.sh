#!/bin/bash

#Get prefix from user
read -p "Insira o prefix: " prefix

#Get the folder path
read -p "Insira a pasta: " folder

#Go to the specific folder
cd "$folder"

# Loop through all files in the folder
for file in *
do
    # Get the file name and extension
    filename=$(basename "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"

    # Add the prefix to the file name
    new_filename="$prefix$filename.$extension"

    # Rename the file
    mv "$file" "$new_filename"
done

echo "All files in the folder have been renamed with the prefix $prefix"
