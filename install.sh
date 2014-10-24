#!/bin/bash
echo "Installation des prerequis"
apt-get update
apt-get install -y apache2
apt-get install -y mysql-server
apt-get install -y phpmyadmin

echo "saisir nom utilisateur de la base de donnee"
read name
echo "saisir mot de passe base de donnee"
read -s mdp

mysql --verbose --batch --host=localhost --user="$name" --password="$mdp" --execute="CREATE DATABASE carto;"
mysql --verbose --batch --host=localhost --user="$name" --password="$mdp" -D "carto"  --execute="CREATE TABLE confip ( ip VARCHAR(100), masque VARCHAR(100));"

apt-get install -y python3
apt-get install -y python3-setuptools
apt-get install -y python3-dev
apt-get install -y libmysqlclient-dev

cd modules/mysqldb
python3 setup.py install