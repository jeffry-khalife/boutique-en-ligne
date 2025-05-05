<?php
session_start();

require_once '../app/Core/Autoloader.php';

use App\Core\Router;

$router = new Router();
$router->handleRequest();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boutique en ligne</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.3/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

    <div class="max-w-7xl mx-auto py-8">

        <div class="flex">
            <div class="w-1/4 bg-white p-4 rounded shadow-lg">
                <h2 class="text-xl font-bold">Filtres</h2>
                <form method="GET" action="index.php">
                    <div class="mt-4">
                        <label for="console" class="block text-sm font-medium text-gray-700">Console</label>
                        <select name="console" id="console" class="mt-1 block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                            <option value="">Tous</option>
                            <option value="NES" <?php echo isset($_GET['console']) && $_GET['console'] == 'NES' ? 'selected' : ''; ?>>NES</option>
                            <option value="SNES" <?php echo isset($_GET['console']) && $_GET['console'] == 'SNES' ? 'selected' : ''; ?>>SNES</option>
                        </select>
                    </div>
                    <button type="submit" class="mt-4 px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">Appliquer</button>
                </form>
            </div>

            <div class="w-3/4 pl-8">
                <h1 class="text-3xl font-bold mb-4">Jeux en vente</h1>

                <div class="grid grid-cols-3 gap-4">
                    <?php
                    use App\Models\Game;

                    $consoleFilter = isset($_GET['console']) ? $_GET['console'] : '';

                    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
                    $perPage = 6;
                    $offset = ($page - 1) * $perPage;

                    $game = new Game();
                    $games = $game->getGames($consoleFilter, $offset, $perPage);

                    foreach ($games as $g) {
                        echo '<div class="bg-white p-4 rounded shadow-lg">';
                        echo '<img src="' . $g['image'] . '" alt="' . $g['name'] . '" class="w-full h-40 object-cover mb-4 rounded">';
                        echo '<h3 class="text-lg font-semibold">' . $g['name'] . '</h3>';
                        echo '<p class="text-sm text-gray-600">' . $g['info'] . '</p>';
                        echo '<p class="text-xl font-bold mt-2">€' . number_format($g['price'], 2) . '</p>';

                        echo '<form method="POST" action="index.php">';
                        echo '<input type="hidden" name="game_id" value="' . $g['id'] . '">';
                        echo '<button type="submit" class="mt-4 px-4 py-2 bg-green-500 text-white rounded hover:bg-green-600">Ajouter au panier</button>';
                        echo '</form>';

                        echo '</div>';
                    }
                    ?>
                </div>

                <div class="mt-8">
                    <nav aria-label="Page navigation">
                        <ul class="flex justify-center space-x-4">
                            <?php
                            $totalGames = $game->countGames($consoleFilter);
                            $totalPages = ceil($totalGames / $perPage);

                            if ($page > 1) {
                                echo '<li><a href="?page=' . ($page - 1) . '&console=' . $consoleFilter . '" class="px-4 py-2 bg-gray-300 rounded">Précédent</a></li>';
                            }

                            for ($i = 1; $i <= $totalPages; $i++) {
                                echo '<li><a href="?page=' . $i . '&console=' . $consoleFilter . '" class="px-4 py-2 bg-gray-300 rounded">' . $i . '</a></li>';
                            }

                            if ($page < $totalPages) {
                                echo '<li><a href="?page=' . ($page + 1) . '&console=' . $consoleFilter . '" class="px-4 py-2 bg-gray-300 rounded">Suivant</a></li>';
                            }
                            ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
