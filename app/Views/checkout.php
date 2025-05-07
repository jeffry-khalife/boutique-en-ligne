<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    echo "<p>Vous devez être connecté pour passer une commande. <a href='login.php'>Se connecter</a></p>";
    exit;
}

$userId = $_SESSION['user_id'];

$shoppingCart = new \App\Models\ShoppingCart();

$shoppingCart->moveCartToUser($userId);

echo "<p>Votre panier a été transféré à votre compte. Vous pouvez maintenant finaliser votre commande.</p>";
?>
