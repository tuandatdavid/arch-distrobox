#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu --noconfirm
grep -v '^#' ./boxkit.packages | xargs pacman -S --no-confirm
rm -rf /var/cache/pacman/pkg/*
