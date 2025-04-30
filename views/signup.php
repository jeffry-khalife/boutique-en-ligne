<?php
include ('../Controllers/Connexion.php'); // Inclure la classe Connexion
include ('../Controllers/User.php'); // Inclure la classe User

$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $login = $_POST['login'];
    $password = $_POST['password'];
    
    if (empty($login) || empty($password)) {
        $message = 'Tous les champs sont obligatoires';
    } else {
        try {
            // Créer une instance de Connexion pour obtenir l'objet PDO
            $connexion = new Connexion('localhost', 'livreor', 'root', ''); // Paramètres de la base de données

            // Créer une nouvelle instance de User en lui passant l'objet PDO
            $user = new User('localhost', 'livreor', 'root', '');

            $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
            $user->setLogin($login);
            $user->setPassword($hashedPassword);
            $user->save(); 

            $message = 'Inscription réussie ! Vous pouvez maintenant vous connecter.';
        } catch (Exception $e) {
            $message = 'Erreur lors de l\'inscription : ' . $e->getMessage();
        }
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Caveat' rel='stylesheet'>
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="style2.css">
    <title>Inscription</title>
</head>

<body>

    <div class="content">
        <div class="container">
            <h1>Inscription</h1>
            <form action="signup.php" method="POST">
                <label for="login">Nom d'utilisateur :</label>
                <input type="text" id="login" name="login" required><br><br>
                
                <label for="password">Mot de passe :</label>
                <input type="password" id="password" name="password" required><br><br>
                
                <button type="submit">S'inscrire</button> 
            </form>
            <?php if ($message): ?>
                <p><?php echo $message; ?></p>
            <?php endif; ?>
            <p>Déjà un compte ? <a href="login.php">Connexion</a></p>
        </div>
    </div>
</body>
</html>


</body>
</html>