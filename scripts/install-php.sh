#!/bin/bash
set -e

apt-get install -y php libapache2-mod-php \
  php-mysql php-curl php-gd php-mbstring php-xml

systemctl restart apache2