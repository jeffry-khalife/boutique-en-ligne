<?php
if (!isset($_SESSION['user'])) {
    header('Location: ?page=login');
    exit;
}

$user = $_SESSION['user'];
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Profil utilisateur</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-8">
    <div class="max-w-2xl mx-auto bg-white p-6 rounded shadow">
        <h1 class="text-2xl font-bold mb-4 text-center">Profil de <?= htmlspecialchars($user['username']) ?></h1>

        <div class="space-y-2">
            <p><strong>Email :</strong> <?= htmlspecialchars($user['mail']) ?></p>
            <p><strong>Rôle :</strong> <?= htmlspecialchars($user['role']) ?></p>
        </div>

        <div class="mt-6 text-center">
            <a href="?page=logout" class="inline-block px-4 py-2 bg-red-500 text-white rounded">Se déconnecter</a>
        </div>
    </div>
</body>
</html>
