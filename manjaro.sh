#!/bin/bash

# Basic
sudo pacman -Syu vim curl wget tar unzip base-devel clang gdb gcc make cups python3 python3-pip docker tree --noconfirm

# Codecs
sudo pacman -Syu a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv opus wavpack x264 xvidcore --noconfirm

# MiniLibX
sudo pacman -Syu xorg libxext zlib libbsd git --noconfirm

# Extensions and printers
sudo pacman -Syu gnome-tweaks gnome-shell-extensions cups sane system-config-printer --noconfirm

# Docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker

# Enable and start cups
sudo systemctl enable cups
sudo systemctl start cups