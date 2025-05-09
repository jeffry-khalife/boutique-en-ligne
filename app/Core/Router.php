<?php

namespace App\Core;

class Router {
    public function handleRequest() {
        if (session_status() == PHP_SESSION_NONE) {
            session_start(); 
        }

        $page = $_GET['page'] ?? 'home';

        switch ($page) {
            case 'register':
                $controller = new \App\Controllers\AuthController();
                $controller->register();
                break;

            case 'login':
                $controller = new \App\Controllers\AuthController();
                $controller->login();
                break;

            case 'logout': 
                $controller = new \App\Controllers\AuthController();
                $controller->logout();
                break;

            case 'profil':
                $controller = new \App\Controllers\ProfilController();
                $controller->index(); 
                break;

            case 'shopping':
                $controller = new \App\Controllers\CartController();
                $controller->showCart();
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

            case 'home':
            default:
                $controller = new \App\Controllers\HomeController();
                $controller->index(); 
                break;

            case 'checkout':
                $controller = new \App\Controllers\CheckoutController();
                $controller->index();
                break;

            case 'autocomplete':
                $controller = new \App\Controllers\GameController();
                $controller->autocomplete();
                break;

            case 'game': 
                $controller = new \App\Controllers\GameController();
                $controller->show();
                break;
                
            case 'ajouter_panier_ajax':
                $controller = new \App\Controllers\CartController();
                $controller->addToCartAjax();
                break;
                   
        }
    }
}

?>
