<?php require '../Autoloader.php'; ?>
<!DOCTYPE html>
<html>
<head>
    <title>Inscription</title>
    <script src="js/main.js" defer></script>
</head>
<body>
    <h2>Inscription</h2>
    <form id="registerForm">
                <label for="login">Nom d'utilisateur :</label>
                <input type="text" id="username" name="username" required><br><br>

                <!-- <label for="login">Mail</label>
                <input type="text" id="mail" name="mail" required><br><br>

                <label for="login">Adresse</label>
                <input type="text" id="adress" name="adress" required><br><br>

                <label for="login">Numéro de telephone</label>
                <input type="text" id="city" name="city" required><br><br> -->
                
                <label for="password">Mot de passe :</label>
                <input type="password" id="password" name="password" required><br><br>

                <!-- <label for="password">Confirmer votre mot de passe :</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required><br><br> -->
                
                <button type="submit">S'inscrire</button>  
            </form>
    </form>
</body>

<script src="../js/script.js"></script>
</html>