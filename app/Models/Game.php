<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class Game {
    private $db;

    public function __construct() {
        $this->db = Database::getInstance();
    }

    public function getGames($consoleFilter = '', $offset = 0, $perPage = 6) {
        $consoleMapping = [
            'NES' => 1,
            'SNES' => 2,
        ];
    
        if ($consoleFilter && isset($consoleMapping[$consoleFilter])) {
            $consoleFilter = $consoleMapping[$consoleFilter];
        } else {
            $consoleFilter = '';  
        }
    
        $sql = "SELECT * FROM game";
        $params = [];
    
        if ($consoleFilter) {
            $sql .= " WHERE idconsole = :console"; 
            $params['console'] = $consoleFilter;
        }
    
        $sql .= " LIMIT :offset, :perPage";
    
        $stmt = $this->db->prepare($sql);
    
        if ($consoleFilter) {
            $stmt->bindParam(':console', $params['console'], PDO::PARAM_INT); 
        }
        $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
        $stmt->bindParam(':perPage', $perPage, PDO::PARAM_INT);
    
        $stmt->execute();
    
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    

    public function countGames($consoleFilter = '') {
        $consoleMapping = [
            'NES' => 1,
            'SNES' => 2,
        ];
    
        if ($consoleFilter && isset($consoleMapping[$consoleFilter])) {
            $consoleFilter = $consoleMapping[$consoleFilter];
        } else {
            $consoleFilter = '';  
        }
    
        $sql = "SELECT COUNT(*) FROM game";
        $params = [];
    
        if ($consoleFilter) {
            $sql .= " WHERE idconsole = :console";
            $params['console'] = $consoleFilter;
        }
    
        $stmt = $this->db->prepare($sql);
        if ($consoleFilter) {
            $stmt->bindParam(':console', $params['console'], PDO::PARAM_INT);
        }
        $stmt->execute();
    
        return $stmt->fetchColumn();
    }
    
    
    
}
?>
