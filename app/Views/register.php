<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex justify-center items-center h-screen">

<form id="registerForm" class="bg-white p-8 rounded shadow-md w-96 space-y-4">
    <input name="username" type="text" placeholder="Nom d'utilisateur" required class="w-full border p-2 rounded">
    <input name="mail" type="email" placeholder="Email" required class="w-full border p-2 rounded">
    <input name="password" type="password" placeholder="Mot de passe" required class="w-full border p-2 rounded">
    <input name="confirmPassword" type="password" placeholder="Confirmer le mot de passe" required class="w-full border p-2 rounded">
    <input name="adress" type="text" placeholder="Adresse" required class="w-full border p-2 rounded">
    <input name="phone_number" type="text" placeholder="Numéro de téléphone" required class="w-full border p-2 rounded">
    <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded w-full">S'inscrire</button>
    <div id="responseMessage" class="text-center text-sm mt-4"></div>
</form>



<script src="../public/assets/js/script.js"></script>
</body>
</html>
