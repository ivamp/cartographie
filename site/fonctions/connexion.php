<?php
$server='localhost'; //Nom du serveur
$user='root';
$motdepasse='cdaisi';
$base='carto';

try {

	$bdd = new PDO('mysql:host=localhost;dbname=carto', 'root', 'cdaisi');
	$bdd->exec("SET CHARACTER SET utf8");
	$bdd->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION); //Mettre Warning en cas d'erreur SQL
}
catch (PDOExeption $e){
	echo "Erreur : ".$e->getMessage()."";
	die();
}
?>
