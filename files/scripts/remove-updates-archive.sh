#!/bin/bash

# Define the path to the updates-archive repository
repo_path="/etc/yum.repos.d/fedora-updates.repo"  

# Remove Updates Repository
if [ -e "$repo_path" ]; then
    # Remove the repository
    if rm -rf "$repo_path"; then
        echo "Updates-archive repository removed successfully."
    else
        echo "Updates-archive repository does not exist."
    fi
else
    echo "Updates-archive repository does not exist."
fi

# Define the path to the updates-archive repository
repo_path="/etc/yum.repos.d/fedora-updates-archive.repo" 

# Remove Updates Archive Repository
if [ -e "$repo_path" ]; then
    # Remove the repository
    if rm -rf "$repo_path"; then
        echo "Updates-archive repository removed successfully."
    else
        echo "Updates-archive repository does not exist."
    fi
else
    echo "Updates-archive repository does not exist."
fi