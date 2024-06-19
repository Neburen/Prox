#!/usr/bin/env bash
source <(curl -s https://raw.githubusercontent.com/Neburen/Prox/main/prox_seleccion)
# Copyright (c) 2021-2024 tteck
# Author: tteck (tteckster)
# License: MIT
# https://github.com/tteck/Proxmox/raw/main/LICENSE

function header_info {
clear
cat <<"EOF"
**********************************************************************
* Crear contenedor      *
**********************************************************************
EOF
}
header_info
echo -e "Loading..."
variables
color
catch_errors

function update_script() {
header_info
msg_info "Updating LXC"
apt-get update &>/dev/null
apt-get -y upgrade &>/dev/null
apt-get install -y curl
apt-get install -y sudo
apt-get -y autoremove &>/dev/null

msg_ok "Installed Dependencies"

msg_ok "Updated ${APP} LXC"
exit
}

start
build_container
description

msg_ok "Completed Successfully!\n"
