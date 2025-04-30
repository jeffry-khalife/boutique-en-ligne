<?php

class User extends Connexion {
    public function register($username, $password) {
        $stmt = $this->getPDO()->prepare("INSERT INTO user (username, password) VALUES (?, ?)");
        return $stmt->execute([$username, password_hash($password, PASSWORD_BCRYPT)]);
    }

    public function login($username, $password) {
        $stmt = $this->getPDO()->prepare("SELECT * FROM user WHERE username = ?");
        $stmt->execute([$username]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user && password_verify($password, $user['password'])) {
            return true;
        }
        return false;
    }

    public function verifyPassword($currentPassword) {
        $stmt = $this->getPdo()->prepare("SELECT password FROM user WHERE id = ?");
        $stmt->execute([$this->id]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user) {
            return password_verify($currentPassword, $user['password']);
        }
        return false;
    }
}



?>
