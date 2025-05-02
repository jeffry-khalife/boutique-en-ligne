<?php
session_start();

require_once '../app/Core/Autoloader.php';

use App\Core\Router;

$router = new Router();
$router->handleRequest();
?>