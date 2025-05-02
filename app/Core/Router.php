<?php

namespace App\Core;

class Router {
    public function handleRequest() {
        $page = $_GET['page'] ?? 'login';

        switch ($page) {
            case 'register':
                $controller = new \App\Controllers\AuthController();
                $controller->register();
                break;

            case 'login':
            default:
                $controller = new \App\Controllers\AuthController();
                $controller->login();
                break;

            case 'logout':
                $controller = new \App\Controllers\AuthController();
                $controller->logout();
                break;

            case 'profil':
                $controller = new \App\Controllers\UserController();
                $controller->profil();
                break;
            }
        }
}
?>