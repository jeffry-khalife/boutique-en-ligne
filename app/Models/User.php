<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class User {
    private $username;
    private $mail;
    private $password;
    private $confirmPassword;
    private $adress;
    private $phone_number;

    public function setData(array $data) {
        $this->username = isset($data['username']) ? htmlspecialchars($data['username']) : '';
        $this->mail = isset($data['mail']) ? htmlspecialchars($data['mail']) : '';
        $this->password = isset($data['password']) ? $data['password'] : '';
        $this->confirmPassword = isset($data['confirmPassword']) ? $data['confirmPassword'] : '';
        $this->adress = isset($data['adress']) ? htmlspecialchars($data['adress']) : '';
        $this->phone_number = isset($data['phone_number']) ? intval($data['phone_number']) : 0;
    }

    public function register(): string {
        $pdo = \App\Core\Database::getInstance();
    
        if ($this->password !== $this->confirmPassword) {
            return json_encode([
                "success" => false,
                "message" => "❌ Les mots de passe ne correspondent pas."
            ]);
        }
    
        $stmt = $pdo->prepare("SELECT id FROM user WHERE mail = ?");
        $stmt->execute([$this->mail]);
        $existingUser = $stmt->fetch();
    
        if ($existingUser) {
            return json_encode([
                "success" => false,
                "message" => "❌ Cet email est déjà utilisé."
            ]);
        }
    
        try {
            $stmt = $pdo->prepare("INSERT INTO user (username, mail, password, adress, phone_number)
                                   VALUES (?, ?, ?, ?, ?)");
    
            $stmt->execute([
                $this->username,
                $this->mail,
                password_hash($this->password, PASSWORD_BCRYPT),
                $this->adress,
                $this->phone_number
            ]);

            $_SESSION['user'] = [
                'username' => $this->username,
                'mail' => $this->mail,
                'role' => 'user'
            ];
            
            return json_encode([
                "success" => true,
                "message" => "✅ Inscription réussie ! Redirection en cours..."
            ]);
            
        } catch (\PDOException $e) {
            return json_encode([
                "success" => false,
                "message" => "❌ Erreur lors de l'inscription : " . $e->getMessage()
            ]);
        }
    }

    public function login(): string {
        $pdo = \App\Core\Database::getInstance();
    
        $stmt = $pdo->prepare("SELECT * FROM user WHERE mail = ?");
        $stmt->execute([$this->mail]);
        $user = $stmt->fetch(\PDO::FETCH_ASSOC);
    
        if ($user && password_verify($this->password, $user['password'])) {
            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
    
            $_SESSION['user'] = [
                'id' => $user['id'],
                'username' => $user['username'],
                'mail' => $user['mail'],
                'role' => $user['role']
            ];
    
            return json_encode([
                "success" => true,
                "message" => "✅ Connexion réussie ! Redirection en cours..."
            ]);
    
            header("Location: /profil.php"); 
            exit(); 
        } else {
            return json_encode([
                "success" => false,
                "message" => "❌ Email ou mot de passe incorrect."
            ]);
        }
    }
    
}
?>
