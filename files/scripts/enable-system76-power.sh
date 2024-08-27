#!/bin/bash

KERNEL_VERSION=$(uname -r)
dnf install kernel-devel-${KERNEL_VERSION} kernel-headers-${KERNEL_VERSION} -y

