#!/usr/bin/env bash

# Actualizar la lista de paquetes disponibles
apt update -y

# Actualizar los paquetes instalados
apt upgrade -y

# Instalar herramientas necesarias
apt-get install -y curl
apt-get install -y wget
apt-get install -y sudo

# Descargar el script adicional
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh

# Eliminar paquetes innecesarios
apt autoremove -y
