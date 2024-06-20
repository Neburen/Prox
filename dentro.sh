#!/usr/bin/env bash
echo "Actualizar la lista de paquetes disponibles"
apt-get update

echo "Actualizar los paquetes instalados"
apt-get -y upgrade

echo "Instalar herramientas necesarias"
apt-get install -y curl
apt-get install -y wget
apt-get install -y sudo

echo "Descargar el script adicional"
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh

echo "Eliminar paquetes innecesarios"
apt-get -y autoremove
