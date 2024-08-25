#!/bin/bash
set -oue pipefail 
git clone https://github.com/pop-os/gnome-shell-extension-system76-power.git
cd gnome-shell-extension-system76-power
dnf install nodejs-typescript
make
make install

# mkdir -p /mnt/backup
# mkdir -p /mnt/vm
# mkdir -p /mnt/games