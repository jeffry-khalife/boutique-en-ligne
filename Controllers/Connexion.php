<?php

class Connexion {
    private $host = 'localhost';
    private $db = 'boutique';
    private $user = 'root';
    private $pass = '';
    protected $pdo;

    public function __construct() {
        try {
        $this->pdo = new PDO("mysql:host=$this->host;dbname=$this->db;charset=utf8", $this->user, $this->pass);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
    catch (PDOException $e) {
        die("Erreur de connexion : " . $e->getMessage());
        }
    }

    public function getPDO() {
        return $this->pdo;
    }

    public function isAdmin() {
        return $this->role === 'admin';
    }

    public function isUser() {
        return $this->role === 'user';
    }
}

?>
