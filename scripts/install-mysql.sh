#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

apt-get install -y mysql-server

mysql << EOF
CREATE DATABASE IF NOT EXISTS lamp_db;
CREATE USER IF NOT EXISTS 'lamp_user'@'localhost' IDENTIFIED BY 'lamp_pass';
GRANT ALL PRIVILEGES ON lamp_db.* TO 'lamp_user'@'localhost';
FLUSH PRIVILEGES;
EOF

systemctl enable mysql
systemctl start mysql