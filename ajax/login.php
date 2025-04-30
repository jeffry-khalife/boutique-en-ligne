<?php
require '../Autoloader.php';

$user = new User();
if ($user->login($_POST['username'], $_POST['password'])) {
    echo "Connexion réussie.";
} else {
    echo "Nom d'utilisateur ou mot de passe incorrect.";
}

?>