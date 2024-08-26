#!/bin/bash

# Define the path to the updates-archive repository
repo_path="/etc/yum.repos.d/fedora-updates-archive.repo"  

# Check if the repository exists
if [ -d "$repo_path" ]; then
    # Remove the repository
    rm -rf "$repo_path"
    echo "Updates-archive repository removed successfully."
else
    echo "Updates-archive repository does not exist."
fi