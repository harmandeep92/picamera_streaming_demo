#!/bin/bash
set -e

OVERLAY=imx477
SYSFS_OVERLAY_PATH=/sys/kernel/config/device-tree/overlays/${OVERLAY}
OVERLAY_DTBO_PATH=${SNAP}/overlays/${OVERLAY}.dtbo

# Load the overlay only if it’s not already loaded
if [ ! -d "${SYSFS_OVERLAY_PATH}" ]; then
  mkdir -p "${SYSFS_OVERLAY_PATH}"
  cat "${OVERLAY_DTBO_PATH}" > "${SYSFS_OVERLAY_PATH}/dtbo"
fi