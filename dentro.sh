#!/usr/bin/env bash

# Copyright (c) 2021-2024 tteck
# Author: tteck (tteckster)
# License: MIT
# https://github.com/tteck/Proxmox/raw/main/LICENSE
msg_info "Updating"
apt update -y
apt upgrade -y
apt-get install -y curl
apt-get install -y wget
apt-get install -y sudo
msg_ok "Updated"
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh
msg_info "Cleaning up"
apt-get -y autoremove
apt-get -y autoclean
msg_ok "Cleaned"
