#!/usr/bin/bash
# Check if the directory argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute-directory-path>"
  exit 1
fi
# Check if the directory exists
if [ -d "$1" ]; then
  count=$(find "$1" -type f | wc -l)
  echo "There are $count files in '$1'."
else
  echo "'$1' is not a valid directory."
fi
