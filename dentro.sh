#!/usr/bin/env bash
echo "Actualizar la lista de paquetes disponibles"
$STD apt-get update

echo "Actualizar los paquetes instalados"
$STD apt-get -y upgrade

echo "Instalar herramientas necesarias"
$STD apt-get install -y curl
$STD apt-get install -y wget
$STD apt-get install -y sudo

echo "Descargar el script adicional"
wget https://raw.githubusercontent.com/Neburen/Prox/main/crear_servicio.sh

echo "Eliminar paquetes innecesarios"
$STD apt-get -y autoremove
