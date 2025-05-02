<?php

namespace App\Controllers;

use App\Core\Database;
use App\Models\User;

class AuthController {
    public function register() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $jsonData = file_get_contents('php://input');
            $data = json_decode($jsonData, true);
    
            if (is_array($data)) {
                $user = new \App\Models\User();
                $user->setData($data);
    
                // ➤ Vérifie ici
                echo $user->register();
            } else {
                echo "❌ Erreur de format JSON.";
            }
            return;
        }
    
        require '../app/Views/register.php';
    }
      

    public function login() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $jsonData = file_get_contents('php://input');
            $data = json_decode($jsonData, true);
    
            if (isset($data['mail'], $data['password'])) {
                $user = new \App\Models\User();
                $user->setData($data);  
                $message = $user->login(); 
                echo $message;  
            } else {
                echo "❌ Données manquantes.";
            }
            return;
        }
    
        require '../app/Views/login.php';
    }
    
       
    public function logout() {
        session_start();
        session_unset();
        session_destroy();
    
        header('Location: ?page=login');
        exit;
    }
}
?>