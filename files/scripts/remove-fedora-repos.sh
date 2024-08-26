#!/bin/bash

# Define the path to the updates-archive repository
repo_path="/etc/yum.repos.d/fedora*.repo"  

# Remove Updates Repository
if [ -e "$repo_path" ]; then
    # Remove the repository
    if rm -rf "$repo_path"; then
        echo "Removed Fedora Repos ..."
    else
        echo "No Fedora Repos to remove ..."
    fi
else
    echo "No Fedora Repos to remove ..."
fi
