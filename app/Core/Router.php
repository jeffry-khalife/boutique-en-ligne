<?php

namespace App\Core;

class Router {
    public function handleRequest() {
        $page = $_GET['page'] ?? 'home';

        $userLoggedIn = isset($_SESSION['user_logged_in']) && $_SESSION['user_logged_in'] === true;

        switch ($page) {
            case 'register':
                $controller = new \App\Controllers\AuthController();
                $controller->register();
                break;

            case 'login':
                $controller = new \App\Controllers\AuthController();
                $controller->login();
                break;

            case 'home':
            default:
                $controller = new \App\Controllers\HomeController();
                $controller->index(); 
                break;

            case 'ajouter_panier':
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {  
                    $controller = new \App\Controllers\CartController();
                    $controller->addToCart();  
                }
                break;

            case 'supprimer_panier':
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {  
                    $controller = new \App\Controllers\CartController();
                    $controller->removeFromCart();  
                }
                break;

            case 'vider_panier':
                if ($_SERVER['REQUEST_METHOD'] == 'POST') { 
                    $controller = new \App\Controllers\CartController();
                    $controller->clearCart();  
                }
                break;
        }
    }
}

?>
