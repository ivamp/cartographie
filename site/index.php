
<!DOCTYPE html>

<head>
<title>Projet CDAISI</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css"  type="text/css" />
<script src="js/ajaxFonction.js"  type="text/javascript"></script>
</head>

  
<body>

<center><h3>Cartographie Reseau : Projet CDAISI </h3></center>
<?php
	require_once("/var/www/fonctions/fonction.php");
?>
<div id=col_stations><center><h3>Stations de travail</h3></center>
<p>OS : Windows XP, Windows 7, Windows 8 /8.1</p>

<?php
	echo"".affichage("Windows 7%","Windows XP%")."";

?>
</div>
<div id=col_serveurs><center><h3>Serveurs</h3></center>
<center><p>OS : Windows Server, Debian</p></center>
<?php
	echo"".affichage("Windows Server%"," Test%")."";
?>
</div> 
<div id=col_routeurs><center><h3>Routeurs / Switchs</h3></center>
<center><p>OS : Cisco, D-Link</p></center>
<?php
	echo"".affichage("cisco%", " ")."";
?>
</div>
</body>

<!-- <footer>
Anthony Piesset - Remi Chambolle - Hami Santacruz 
</footer>
<!-->
</html>

<script>

</script>


