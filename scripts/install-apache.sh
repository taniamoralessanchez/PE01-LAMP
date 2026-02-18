#!/bin/bash
set -e

echo "=== Actualizando paquetes ==="
apt-get update -y

echo "=== Instalando Apache ==="
apt-get install -y apache2

# Habilitar módulos
a2enmod rewrite
a2enmod ssl

systemctl enable apache2
systemctl start apache2

echo "Apache instalado correctamente"