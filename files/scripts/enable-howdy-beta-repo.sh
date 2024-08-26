#!/bin/bash

set -oue pipefail 
# Part of an attempt to add Google Chrome in the usual way.
echo "Fixing Howdy repo"
sed -i '/enabled/d' /etc/yum.repos.d/howdy-beta.repo 
echo "enabled=1" >> /etc/yum.repos.d/howdy-beta.repo

echo "Downloading Howdy Signing Key"
curl https://download.copr.fedorainfracloud.org/results/principis/howdy-beta/pubkey.gpg > /tmp/pubkey.gpg
rpm --import /tmp/linux_signing_key.pub


