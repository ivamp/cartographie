<?php
	function affichage($station, $station2){
		include("/var/www/fonctions/connexion.php");
		$requete = "SELECT * FROM confip WHERE os LIKE :nom OR os LIKE :nom2";
		$exec=$bdd->prepare($requete);
		$exec->bindParam(":nom",$station);
		$exec->bindParam(":nom2",$station2);
		$exec->execute();
		$resultat=$exec->fetchAll(PDO::FETCH_ASSOC);
		foreach ($resultat as $affich_station){
			//$onclick='"'.$affich_station['ip'].'"';
			echo"
			<p>
 				<strong> IP : ".$affich_station['ip']."  : </strong>
				<input type='submit' name='scanner' value='Scan' onclick='fonctionA()'/>
    				<a href='script_python.php?ip=".$affich_station['ip']."'>Details</a>
			</p>";
   
		}
		require_once("/var/www/fonctions/fermetureBdd.php");
	}
?>



