#!/bin/bash
set -oue pipefail
# install system76 gnome widget
dnf install nodejs
npm install -g typescript
git clone https://github.com/pop-os/gnome-shell-extension-system76-power.git
cd gnome-shell-extension-system76-power
make
make install
cp -r /root/.local/share/gnome-shell/extensions/system76-power@system76.com/ /usr/share/gnome-shell/extensions/

# dnf swap ffmpeg-free ffmpeg --allowerasing
# dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
# dnf update @sound-and-video
# dnf swap mesa-va-drivers mesa-va-drivers-freeworld
# dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld


# mkdir -p /mnt/backup
# mkdir -p /mnt/vm
# mkdir -p /mnt/games