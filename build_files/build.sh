#!/bin/bash

set -ouex pipefail

### Install packages

# Fedora Repo
dnf5 install -y tmux \
	pavucontrol \
	kitty \
	sddm \
	xorg-x11-server-Xwayland \
	waybar

# Hyprland
dnf5 copr enable solopasha/hyprland
dnf5 install -y hyprland \ 
	xdg-desktop-portal-hyprland \
	hyprpolkitagent \
	hyprshot \
	swww \
	waypaper

#### Example for enabling a System Unit File

systemctl enable podman.socket
