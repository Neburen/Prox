#!/usr/bin/env bash
echo "Actualizar la lista de paquetes disponibles"
$STD apt update
echo "Actualizar los paquetes instalados"
$STD apt upgrade -y
echo "Instalar herramientas necesarias"
$STD apt install -y curl
$STD apt install -y wget
$STD apt install -y sudo
echo "Descargar el script adicional"
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh
echo "Eliminar paquetes innecesarios"
$STD apt -y autoremove
