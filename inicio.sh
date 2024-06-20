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
var_disk="10"
var_cpu="2"
var_ram="2048"
var_os=""
var_version=""
variables
color
catch_errors

start
build_container
update_container
description

msg_ok "Completed Successfully!\n"
