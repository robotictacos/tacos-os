#!/bin/bash

KERNEL_VERSION=$(uname -r)
rpm-ostree install kernel-devel-${KERNEL_VERSION} kernel-headers-${KERNEL_VERSION} -y

