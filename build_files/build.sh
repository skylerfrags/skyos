#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable che/nerd-fonts
dnf5 -y install \
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
	waypaper \
	fuzzel \
	nerd-fonts
dnf5 -y copr disable che/nerd-fonts
dnf5 -y copr disable solopasha/hyprland

#### Example for enabling a System Unit File

systemctl enable podman.socket
