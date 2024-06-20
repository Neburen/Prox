#!/usr/bin/env bash
echo "Actualizar la lista de paquetes disponibles"
apt update
echo "Actualizar los paquetes instalados"
apt upgrade -y
echo "Instalar herramientas necesarias"
apt install -y curl
apt install -y wget
apt install -y sudo
echo "Descargar el script adicional"
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh
echo "Eliminar paquetes innecesarios"
apt autoremove -y
