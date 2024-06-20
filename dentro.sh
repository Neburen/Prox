#!/usr/bin/env bash

# Copyright (c) 2021-2024 tteck
# Author: tteck (tteckster)
# License: MIT
# https://github.com/tteck/Proxmox/raw/main/LICENSE

source /dev/stdin <<< "$FUNCTIONS_FILE_PATH"
color
verb_ip6
catch_errors
setting_up_container
network_check
update_os

msg_info "Updating"
$STD apt update -y
$STD apt upgrade -y
$STD apt-get install -y curl
$STD apt-get install -y wget
$STD apt-get install -y sudo
msg_ok "Updated"

wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh

msg_info "Cleaning up"
$STD apt-get -y autoremove
$STD apt-get -y autoclean
msg_ok "Cleaned"