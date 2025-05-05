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
                $controller = new \App\Controllers\CartController();
                $controller->addToCart(); 
                break;
        }
    }
}

?>
