<?php
namespace App\Controllers;

use App\Models\ShoppingCart;

class CheckoutController {
    public function index() {
        $userId = $_SESSION['user_id'] ?? null;
        $shoppingCart = new \App\Models\ShoppingCart();
    
        if ($userId) {
            $shoppingCart->moveCartToUser($userId);
        }
        require __DIR__ . '/../Views/checkout.php';
    }    
}
?>
