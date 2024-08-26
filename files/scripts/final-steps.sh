#!/bin/bash
set -oue pipefail
# install system76 gnome widget
rpm-ostree install nodejs
npm install -g typescript
git clone https://github.com/pop-os/gnome-shell-extension-system76-power.git
cd gnome-shell-extension-system76-power
make
make install
cp -r /root/.local/share/gnome-shell/extensions/system76-power@system76.com/ /usr/share/gnome-shell/extensions/

# enable syntax highlighting in Helix
flatpak run com.helix_editor.Helix --grammar fetch
flatpak run com.helix_editor.Helix --grammar build

#Enable Howdy
echo "Downloading Howdy Signing Key"
curl https://download.copr.fedorainfracloud.org/results/principis/howdy-beta/pubkey.gpg > /tmp/pubkey.gpg
rpm --import /tmp/linux_signing_key.pub
rpm-ostree install pam_python howdy howdy-gtk
bash ./remove-fedora-repos.sh



# mkdir -p /mnt/backup
# mkdir -p /mnt/vm
# mkdir -p /mnt/games