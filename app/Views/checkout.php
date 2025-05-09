<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finalisation de la commande</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.3/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen">

    <nav class="bg-white shadow px-4 py-2 flex items-center justify-between">
        <a href="?page=home"><a href="?page=home"><div class="flex items-center space-x-2">
            <img src="https://cdn-icons-png.flaticon.com/512/25/25694.png" alt="Logo" class="h-8 w-8">
            <span class="font-bold text-xl text-gray-800">RetroGames</span>
        </div></a>
        <div id="searchBarContainer" class="flex-1 mx-4 hidden relative">
            <form id="searchForm" class="flex items-center" autocomplete="off">
                <input
                    id="navbarSearchInput"
                    type="text"
                    placeholder="Rechercher un produit..."
                    class="w-full border border-gray-300 rounded-l px-3 py-1 focus:outline-none focus:ring-2 focus:ring-blue-300 transition"
                >
                <button type="submit" class="bg-blue-500 text-white px-3 py-1 rounded-r hover:bg-blue-600 transition">
                    Rechercher
                </button>
            </form>
            <ul id="searchSuggestions" class="absolute left-0 right-0 bg-white border border-gray-300 rounded-b shadow z-50 hidden"></ul>
        </div>

        <div class="flex items-center space-x-6">
            <button id="searchIconBtn" class="focus:outline-none">
                <svg class="h-6 w-6 text-gray-700 hover:text-blue-500 transition" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                    <circle cx="11" cy="11" r="8" />
                    <line x1="21" y1="21" x2="16.65" y2="16.65" />
                </svg>
            </button>
            <a href="?page=shopping" class="relative">
                <svg class="h-6 w-6 text-gray-700 hover:text-blue-500 transition" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                    <path d="M3 3h2l.4 2M7 13h10l4-8H5.4" />
                    <circle cx="9" cy="21" r="1" />
                    <circle cx="20" cy="21" r="1" />
                </svg>
            </a>
            <?php if (isset($_SESSION['user'])): ?>
            <div class="relative group" id="profileDropdownContainer">
                <button id="profileIconBtn" class="focus:outline-none flex items-center">
                    <svg class="h-6 w-6 text-gray-700 hover:text-blue-500 transition" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <circle cx="12" cy="8" r="4" />
                        <path d="M6 20c0-2.2 3.6-4 6-4s6 1.8 6 4" />
                    </svg>
                    <svg class="h-4 w-4 ml-1 text-gray-500" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <div class="absolute right-0 mt-2 w-48 bg-white border rounded shadow-lg opacity-0 group-hover:opacity-100 pointer-events-none group-hover:pointer-events-auto transition duration-200 z-50"
                    id="profileDropdownMenu">
                    <a href="/boutique-en-ligne/?page=profil" class="block px-4 py-2 text-gray-700 hover:bg-gray-100">Informations</a>
                    <a href="/boutique-en-ligne/?page=parametres" class="block px-4 py-2 text-gray-700 hover:bg-gray-100">Paramètres</a>
                    <a href="/boutique-en-ligne/?page=commandes" class="block px-4 py-2 text-gray-700 hover:bg-gray-100">Mes commandes</a>
                    <a href="/boutique-en-ligne/?page=logout" class="block px-4 py-2 text-red-600 hover:bg-gray-100">Déconnexion</a>
                </div>
            </div>
            <?php else: ?>
            <a href="/boutique-en-ligne/?page=login">
                <svg class="h-6 w-6 text-gray-700 hover:text-blue-500 transition" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                    <circle cx="12" cy="8" r="4" />
                    <path d="M6 20c0-2.2 3.6-4 6-4s6 1.8 6 4" />
                </svg>
            </a>
            <?php endif; ?>
        </div>
    </nav>

    <div class="max-w-xl mx-auto mt-10 bg-white p-6 rounded shadow text-center">
        <?php if (!isset($_SESSION['user_id'])): ?>
            <p class="text-red-600 text-lg font-semibold mb-4">Vous devez être connecté pour passer une commande.</p>
            <a href="/boutique-en-ligne/?page=login" class="inline-block px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">Se connecter</a>
        <?php else: ?>
            <p class="text-green-600 text-lg font-semibold mb-4">Votre panier a été transféré à votre compte.</p>
            <p>Vous pouvez maintenant finaliser votre commande.</p>
        <?php endif; ?>
    </div>

    <script src="/boutique-en-ligne/public/assets/js/navbar.js"></script>
</body>
</html>
