#!/bin/bash

KERNEL_VERSION=$(uname -r)
dnf download -y kernel-headers-"${kernel_version}"
