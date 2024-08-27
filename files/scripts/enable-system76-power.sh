#!/bin/bash

# KERNEL_VERSION=$(uname -r)
# rpm-ostree install kernel-devel-${KERNEL_VERSION} kernel-headers-${KERNEL_VERSION} -y

bash ./remove-fedora-repos.sh
dnf install system76-dkms system76-power system76-driver system76-firmware firmware-manager system76-io-dkms system76-acpi-dkms
systemctl enable com.system76.PowerDaemon.service system76-power-wake system76-firmware-daemon --now
systemctl enable --user com.system76.FirmwareManager.Notify.timer
system76-power graphics integrated

