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
* Ubuntu 22.04 LTS Jellyfin LXC Container Script                     *
* Script version: 1.0.0                                              *
**********************************************************************
EOF
}
header_info
echo -e "Loading..."
APP="eeeee"
var_disk="10"
var_cpu="2"
var_ram="2048"
var_os="ubuntu"
var_version="22.04"
variables
color
catch_errors

function default_settings() {
  CT_TYPE="1"
  PW=""
  CT_ID=$NEXTID
  HN=$NSAPP
  DISK_SIZE="$var_disk"
  CORE_COUNT="$var_cpu"
  RAM_SIZE="$var_ram"
  BRG="vmbr0"
  NET="dhcp"
  GATE=""
  APT_CACHER=""
  APT_CACHER_IP=""
  DISABLEIP6="no"
  MTU=""
  SD=""
  NS=""
  MAC=""
  VLAN=""
  SSH="yes"
  VERB="no"
  echo_default
}

function update_script() {
header_info
if [[ ! -d /usr/lib/jellyfin ]]; then msg_error "No ${APP} Installation Found!"; exit; fi
msg_info "Updating LXC"
apt-get update &>/dev/null
apt-get -y upgrade &>/dev/null
apt-get -y autoremove &>/dev/null
msg_ok "Updated LXC"
exit
}

start
build_container
description

msg_ok "Completed Successfully!\n"