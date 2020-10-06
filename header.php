<?php
header('Content-Type: application/json');

try{  
        $dbh = new PDO('mysql:host=localhost;dbname=logs;', 'root', '');   
        $retour["success"]=true;
        $retour["message"]="connexion à la base de donnee reussie";
}catch(Exception $e){
        $retour["success"]=false;
        $retour["message"]="connexion à la base de donnee impossible";
    }
?>