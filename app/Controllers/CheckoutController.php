<?php
namespace App\Controllers;

use App\Models\ShoppingCart;
use App\Models\Orders;

class CheckoutController {
    public function index() {
        $user = $_SESSION['user'] ?? null;
        $userId = $user['id'] ?? null;
        $shoppingCart = new ShoppingCart();

        if (!$userId) {
            header('Location: ?page=login');
            exit;
        }

        $cartItems = $shoppingCart->getCartItems();

        if (empty($cartItems)) {
            header('Location: ?page=shopping&msg=empty');
            exit;
        }

        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['confirm_order'])) {
            $ordersModel = new Orders();
            $orderId = $ordersModel->createOrder($userId, $cartItems);
            $shoppingCart->clearCart();
            header('Location: ?page=commandes&msg=success');
            exit;
        }

        require __DIR__ . '/../Views/checkout.php';
    }
}
?>
