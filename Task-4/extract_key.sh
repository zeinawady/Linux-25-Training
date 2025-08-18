#!/bin/bash

extract() {

file=$1

if [[ $file == *.zip ]]; then
unzip -o "$file" -d extracted_files
elif [[ $file == *.tar.xz ]]; then
tar -xf "$file" -C extracted_files
else 
echo "File not supported"
fi
}
extract "$1"
extract "$2"
echo "Done"

