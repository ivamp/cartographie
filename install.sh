#!/bin/bash

echo "Installation des prerequis"
apt-get update

echo "Faut-il installer apache2? y/n "
read response1
if [response1==y]
	apt-get install -y apache2
else
	""
echo "Faut-il installer mysql-server ? y/n"
read response2
if [response2==y]
	apt-get install -y mysql-server
else
	""
echo "Faut-il installer phpmyadmin ? y/n"
read response3
if [response3==y]
	apt-get install -y phpmyadmin
else
	""

apt-get install -y nmap

apt-get install -y libmysqlclient-dev

echo "saisir nom utilisateur de la base de donnee"
read name
echo "saisir mot de passe base de donnee"
read -s mdp

mysql -u $name -p $mdp < database.sql

cd scripts/
./ListeActive.sh
./ScanPort.sh
