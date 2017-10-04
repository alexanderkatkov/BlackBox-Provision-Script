#!/usr/bin/env bash
#
# System silent update file

echo $'\n'
echo "---------------------------------------------"
echo "System & packages silent update."
echo "---------------------------------------------"
echo $'\n'
# Updating & upgrading packages

# Update repository list
sudo apt-get update -y
# Upgrade packages with suspending GRUB configuration modal
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold" upgrade
