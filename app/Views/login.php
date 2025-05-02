<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex justify-center items-center h-screen">

    <form id="loginForm" class="bg-white p-8 rounded shadow-md w-96 space-y-4">
        <h2 class="text-2xl font-bold mb-4 text-center">Connexion</h2>

        <input name="mail" type="email" placeholder="Email" required class="w-full border p-2 rounded">
        <input name="password" type="password" placeholder="Mot de passe" required class="w-full border p-2 rounded">

        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded w-full">Se connecter</button>

        <p class="text-center text-sm mt-4">Pas encore inscrit ? <a href="?page=register" class="text-blue-500">Créer un compte</a></p>

        <div id="loginMessage" class="text-center text-sm mt-4"></div>
    </form>

    <script src="../public/assets/js/script.js"></script>
</body>
</html>
