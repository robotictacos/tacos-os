#!/bin/bash

echo "Downloading Howdy Signing Key"
curl https://download.copr.fedorainfracloud.org/results/principis/howdy-beta/pubkey.gpg > /tmp/pubkey.gpg
rpm --import /tmp/linux_signing_key.pub