#!/usr/bin/env bash
apt update -y
apt upgrade -y
apt-get install -y curl
apt-get install -y wget
apt-get install -y sudo
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh
apt-get -y autoremove
apt-get -y autoclean
