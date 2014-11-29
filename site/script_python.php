
<?php
echo '<pre>';

 // Affiche le résultat de la commande "ls" et retourne
 // la dernière lignes dans $last_line. Stocke la valeur retournée
 // par la commande shelle dans $retval.
 $last_line = system('python3 nmap.py '.$_GET['ip'].'', $retval);

?>


