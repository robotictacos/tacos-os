#!/bin/bash
set -oue pipefail

# enable syntax highlighting in Helix
flatpak run com.helix_editor.Helix --grammar fetch
flatpak run com.helix_editor.Helix --grammar build

# bash ./remove-fedora-repos.sh
