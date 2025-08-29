#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 copr enable solopasha/hyprland
dnf5 install -y \
	tmux \
	pavucontrol \
	kitty \
	sddm \
	xorg-x11-server-Xwayland \
	waybar \
	hyprland \
	xdg-desktop-portal-hyprland \
	hyprpolkitagent \
	hyprshot \
	swww \
	waypaper
dnf5 copr disable -y solopasha/hyprland

#### Example for enabling a System Unit File

systemctl enable podman.socket
