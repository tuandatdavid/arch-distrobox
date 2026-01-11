#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu --noconfirm
grep -v '^#' ./arch.packages | xargs pacman -S --noconfirm
rm -rf /var/cache/pacman/pkg/*
