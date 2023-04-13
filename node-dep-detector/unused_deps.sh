#!/bin/bash

# find all installed packages
all_deps=($(npm ls --depth=0 --parseable --all --prod | sed '1d' | xargs -n1 basename))

# find all files with .js, .jsx, .ts, and .tsx extensions in the app directory
source_files=($(find src -type f -name "*.js" -o -name "*.jsx" -o -name "*.ts" -o -name "*.tsx"))

# filter out the node_modules directory from the list of source files
source_files=($(echo ${source_files[@]} | tr ' ' '\n' | grep -v node_modules | tr '\n' ' '))

echo "All dependencies: ${all_deps[@]}"

# search for each dependency in the source files and output any that are not found
unused_deps=()
for dep in "${all_deps[@]}"
do
  is_used=$(grep -r "$dep" "${source_files[@]}" | grep -v '\.d\.ts')
  if [ -z "$is_used" ]; then
    unused_deps+=("$dep")
  fi
done
