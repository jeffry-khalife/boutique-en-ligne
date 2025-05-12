<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Bienvenue sur RetroGames</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.3/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-to-br from-blue-100 to-purple-200 min-h-screen flex flex-col justify-center items-center">
    <div class="bg-white bg-opacity-80 rounded-lg shadow-lg p-12 flex flex-col items-center">
        <img src="https://cdn-icons-png.flaticon.com/512/25/25694.png" alt="RetroGames" class="w-24 h-24 mb-4">
        <h1 class="text-4xl font-extrabold mb-4 text-gray-800 text-center">Bienvenue sur RetroGames !</h1>
        <p class="text-lg text-gray-600 mb-8 text-center max-w-xl">
            Plongez dans l’univers des jeux rétro, découvrez notre sélection NES, SNES et bien plus encore.<br>
            Collectionnez, jouez, partagez la passion du rétro-gaming !
        </p>
        <a href="?page=home" class="px-8 py-3 bg-blue-600 text-white rounded-full text-xl font-bold shadow hover:bg-blue-700 transition">
            Entrer dans la boutique
        </a>
    </div>
    <footer class="mt-12 text-gray-500 text-sm">
        &copy; <?= date('Y') ?> RetroGames. Tous droits réservés.
    </footer>
</body>
</html>
