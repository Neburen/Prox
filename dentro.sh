#!/usr/bin/env bash

# Habilitar modo de depuración para ver cada comando ejecutado
set -x

echo "Actualizar la lista de paquetes disponibles"
apt update -y

echo "Actualizar los paquetes instalados"
apt upgrade -y

echo "Instalar herramientas necesarias"
apt-get install -y curl
apt-get install -y wget
apt-get install -y sudo

echo "Descargar el script adicional"
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh

echo "Eliminar paquetes innecesarios"
apt autoremove -y

# Deshabilitar modo de depuración
set +x
