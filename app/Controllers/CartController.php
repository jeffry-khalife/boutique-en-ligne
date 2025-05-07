<?php

namespace App\Controllers;

use App\Models\ShoppingCart;

class CartController {

    public function addToCart() {
        if (isset($_POST['game_id'])) {
            $gameId = (int)$_POST['game_id']; 
            $cart = new ShoppingCart();

            if (isset($_SESSION['user_id'])) {
                $cart->addToCart($gameId);  
            } else {
                if (!isset($_SESSION['cart'])) {
                    $_SESSION['cart'] = [];
                }
                if (!in_array($gameId, $_SESSION['cart'])) {
                    $_SESSION['cart'][] = $gameId;  
                }
            }

            header('Location: index.php?page=panier');
            exit;
        }
    }

    public function removeFromCart() {
        if (isset($_POST['remove_game_id'])) {
            $gameId = (int)$_POST['remove_game_id'];
            $cart = new ShoppingCart();
            $cart->removeFromCart($gameId);
        }
        header('Location: shopping.php');  
        exit;
    }

    public function clearCart() {
        $cart = new ShoppingCart();
        $cart->clearCart();
        header('Location: shopping.php');
        exit;
    }
}
?>
