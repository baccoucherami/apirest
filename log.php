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


$requete = $dbh->prepare("SELECT user,action ,date FROM 
loginlogs");
$requete->execute();
$retour=$requete->fetchAll();
$i=0;
foreach($retour as $element) {

    unset($retour[$i]["0"]);
    unset($retour[$i]["1"]);
    unset($retour[$i]["2"]);

 $i++;
}
$data = json_encode($retour) ;

echo $data;
?>
