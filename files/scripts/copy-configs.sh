#!/bin/bash

# Define the source and destination directories
source_dir="/etc"
destination_dir="/home/dave/git/tacos-os/files/system/etc"

# List of config files to copy
config_files=("howdy" "libvirt" "pam.d" "samba" "sysctl.d")
#
# Loop through the config files and copy them to the destination directory
for file in "${config_files[@]}"; do
    source_folder="${source_dir}/${file}/"
    destination_folder="${destination_dir}/${file}"
    
    # Check if the source file exists
    if [ -e "${source_folder}" ]; then
        cp -rf "${source_folder}/." "${destination_folder}/"
        echo "Copied ${source_folder} to ${destination_folder}/"
    else
        echo "Error: ${source_folder} does not exist in ${destination_folder}/"
    fi
done