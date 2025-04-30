<?php
require '../Autoloader.php';

$user = new User();
try {
    if ($user->register($_POST['username'], $_POST['password'])) {
        echo "Inscription réussie.";
    } else {
        echo "Erreur d'inscription.";
    }
} catch (PDOException $e) {
    echo "Nom d'utilisateur déjà utilisé.";
}


?>
