<?php
session_start(); 

require_once '../Core/Autoloader.php';

$cartController = new \App\Controllers\CartController();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['remove_game_id'])) {
        $cartController->removeFromCart();
    }

    if (isset($_POST['clear_cart'])) {
        $cartController->clearCart();
    }
}

$shoppingCart = new \App\Models\ShoppingCart();
$cartItems = $shoppingCart->getCartItems();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Votre Panier</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.3/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

    <div class="max-w-7xl mx-auto py-8">
        <h1 class="text-3xl font-bold mb-4">Votre Panier</h1>

        <?php if (!empty($cartItems)): ?>
            <div class="space-y-4">
                <?php foreach ($cartItems as $item): ?>
                    <div class="bg-white p-4 rounded shadow-lg flex justify-between items-center">
                        <div class="flex items-center">
                            <img src="<?= $item['image'] ?>" alt="<?= $item['name'] ?>" class="w-20 h-20 object-cover mr-4">
                            <div>
                                <h3 class="text-lg font-semibold"><?= $item['name'] ?></h3>
                                <p class="text-sm text-gray-600"><?= $item['price'] ?> €</p>
                            </div>
                        </div>
                        <form method="POST" action="shopping.php" class="ml-4">
                            <input type="hidden" name="remove_game_id" value="<?= $item['id'] ?>">
                            <button type="submit" class="px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600">Supprimer</button>
                        </form>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="mt-8">
                <form method="POST" action="shopping.php">
                    <button type="submit" name="clear_cart" class="px-4 py-2 bg-gray-800 text-white rounded hover:bg-gray-900">Vider le panier</button>
                </form>
            </div>

            <div class="mt-4">
                <a href="checkout.php" class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">Passer à la commande</a>
            </div>
        <?php else: ?>
            <p>Votre panier est vide.</p>
        <?php endif; ?>
    </div>

</body>
</html>
