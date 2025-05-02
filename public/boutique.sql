-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 02 mai 2025 à 09:15
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `year` int NOT NULL,
  `console` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `idProduct` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `console`
--

DROP TABLE IF EXISTS `console`;
CREATE TABLE IF NOT EXISTS `console` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `idProduct` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `info` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `idUser` int NOT NULL,
  `idConsole` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `name`, `info`, `image`, `price`, `quantity`, `availability`, `idUser`, `idConsole`) VALUES
(3, 'Super Mario Bros', 'Jeu de plate-forme créé par Shigeru Miyamoto', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/marioNES.jpg?raw=true', 10, 10, 1, 0, 0),
(4, 'The Legend of Zelda', 'Jeu d\'aventure créé par Shigeru Miyamoto', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/ZeldaNES.jpg?raw=true', 13, 5, 1, 0, 0),
(5, 'Metroid', 'Jeu de plate-forme et exploration créé par Gunpei Yokoi', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/metroidNES.jpg?raw=true', 15, 3, 1, 0, 0),
(6, 'Mega Man 2', 'Jeu de plate-forme créé par Keiji Inafune et Yasuaki Katō', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/megaman2NES.jpg?raw=true', 10, 8, 1, 0, 0),
(7, 'Castlevania', 'Jeu d\'action créé par Toru Igarashi et Kinji Fukasaku', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/castlevaniaNES.jpg?raw=true', 11, 7, 1, 0, 0),
(8, 'Duck Hunt', 'Jeu de tir au pistolet créé par Gunpei Yokoi', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/duckhuntNES.jpg?raw=true', 6, 12, 1, 0, 0),
(9, 'Punch-Out!!', 'Jeu de boxe créé par Genyo Takeda et Yoshiki Okamoto', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/PunchoutNES.jpg?raw=true', 12, 4, 1, 0, 0),
(10, 'Contra', 'Jeu de tir en scrolling vertical créé par Kinji Fukasaku', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/contraNES.jpg?raw=true', 14, 2, 1, 0, 0),
(11, 'Ninja Gaiden', 'Jeu d\'action et plate-forme créé par Hiroshi Matsuyama', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/ninjagaidenNES.jpg?raw=true', 15, 6, 1, 0, 0),
(12, 'Double Dragon II', 'Jeu de combat et plate-forme créé par Yoshihiko Oka', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/doubledragon2NES.jpg?raw=true', 11, 9, 1, 0, 0),
(13, 'Excitebike', 'Jeu de course créé par Toru Igarashi et Kinji Fukasaku', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/excitebikeNES.jpg?raw=true', 6, 11, 1, 0, 0),
(14, 'Kirby’s Adventure', 'Jeu de plate-forme et exploration créé par Masahiro Sakurai', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/kirby\'sNES.jpg?raw=true', 10, 10, 1, 0, 0),
(15, 'Bubble Bobble', 'Jeu de plate-forme et puzzle créé par Toru Igarashi', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/bubbleNES.jpg?raw=true', 9, 15, 1, 0, 0),
(16, 'Kid Icarus', 'Jeu d\'aventure et plate-forme créé par Masahiro Sakurai', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/kidicarusNES.jpg?raw=true', 13, 5, 1, 0, 0),
(17, 'Battletoads', 'Jeu de combat et plate-forme créé par Geoff Skellington et Tim Sweeney', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/battletoadsNES.jpg?raw=true', 14, 2, 1, 0, 0),
(18, 'Ice Climber', 'Jeu de plate-forme créé par Toru Igarashi et Kinji Fukasaku', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/iceclimberNES.jpg?raw=true', 7, 14, 1, 0, 0),
(19, 'Blaster Master', 'Jeu d\'aventure et exploration créé par Hiroshi Matsuyama', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/blastermasterNES.jpg?raw=true', 12, 4, 1, 0, 0),
(20, 'River City Ransom', 'Jeu de combat et plate-forme créé par Yoshihiko Oka', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/rivercityNES.jpg?raw=true', 11, 9, 1, 0, 0),
(21, 'Tetris', 'Jeu de puzzle créé par Alexey Pajitnov', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/tetrisNES.jpg?raw=true', 8, 16, 1, 0, 0),
(22, 'Dr. Mario', 'Jeu de puzzle créé par Gunpei Yokoi et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/drmarioNES.jpg?raw=true', 9, 10, 1, 0, 0),
(23, 'The Legend of Zelda: A Link to the Past', 'Jeu d\'aventure créé par Shigeru Miyamoto et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/zeldaSNES.jpg?raw=true', 15, 5, 1, 0, 0),
(24, 'Super Mario World', 'Jeu de plate-forme créé par Shigeru Miyamoto et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/supermarioSNES.jpg?raw=true', 13, 8, 1, 0, 0),
(25, 'Super Metroid', 'Jeu de plate-forme et exploration créé par Gunpei Yokoi et Nintendo', 'super-metroid.jpg', 15, 3, 1, 0, 0),
(26, 'Donkey Kong Country', 'Jeu de plate-forme créé par Rare et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/donkeykongSNES.jpg?raw=true', 14, 2, 1, 0, 0),
(27, 'Final Fantasy VI (III en US)', 'Jeu de rôle créé par Hironobu Sakaguchi et Square', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/finalfantasySNES.jpg?raw=true', 16, 1, 1, 0, 0),
(28, 'Chrono Trigger', 'Jeu de rôle créé par Yuji Horii et Square', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/chronotriggerSNES.jpg?raw=true', 17, 1, 1, 0, 0),
(29, 'Super Mario Kart', 'Jeu de course créé par Shigeru Miyamoto et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/mariokartSNES.jpg?raw=true', 11, 12, 1, 0, 0),
(30, 'Secret of Mana', 'Jeu de rôle actionnel créé par Koichi Ishii et Square', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/secretofmanaSNES.jpg?raw=true', 15, 4, 1, 0, 0),
(31, 'EarthBound (Mother 2)', 'Jeu de rôle créé par Shigesato Itoi et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/earthboundSNES.jpg?raw=true', 14, 2, 1, 0, 0),
(32, 'Street Fighter II Turbo', 'Jeu de combat créé par Noritaka Funamizu et Capcom', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/streetfighter2SNES.jpg?raw=true', 13, 6, 1, 0, 0),
(33, 'F-Zero', 'Jeu de course créé par Tadashi Bridle et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/fzeroSNES.jpg?raw=true', 10, 10, 1, 0, 0),
(34, 'Yoshi’s Island', 'Jeu de plate-forme créé par Shigeru Miyamoto et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/yoshiSNES.jpg?raw=true', 12, 5, 1, 0, 0),
(35, 'Super Castlevania IV', 'Jeu d\'action créé par Toru Sugimoto et Konami', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/supercastlevaniaSNES.jpg?raw=true', 11, 8, 1, 0, 0),
(36, 'Mega Man X', 'Jeu de plate-forme créé par Keiji Inafune et Capcom', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/megamanSNES.jpg?raw=true', 13, 3, 1, 0, 0),
(37, 'Star Fox', 'Jeu de course créé par Tadashi Bridle et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/starfoxSNES.jpg?raw=true', 12, 4, 1, 0, 0),
(38, 'Super Ghouls ’n Ghosts', 'Jeu d\'action créé par Masami Ueda et Capcom', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/ghoulSNES.jpg?raw=true', 10, 10, 1, 0, 0),
(39, 'Illusion of Gaia', 'Jeu de rôle créé par Shigeru Aramaki et Enix', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/gaiaSNES.jpg?raw=true', 15, 2, 1, 0, 0),
(40, 'ActRaiser', 'Jeu de simulation créé par Keiichi Yano et Quintet', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/actraiserSNES.jpg?raw=true', 14, 3, 1, 0, 0),
(41, 'Terranigma', 'Jeu d\'aventure créé par Takehiro Izushi et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/terranigmaSNES.jpg?raw=true', 13, 5, 1, 0, 0),
(42, 'Pilotwings', 'Jeu de simulation créé par Toru Sugimoto et Nintendo', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SNES/pilotwingsSNES.jpg?raw=true', 10, 10, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idProduct` int NOT NULL,
  `idUser` int NOT NULL,
  `idPayment` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idProduct`,`idUser`,`idPayment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `info` int NOT NULL,
  `idOrder` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idOrder` (`idOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idProduct` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
  `mail` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `adress` varchar(191) NOT NULL,
  `phone_number` int NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `idProduct` int NOT NULL,
  `idOrder` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idProduct`,`idOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `mail`, `password`, `adress`, `phone_number`, `role`, `idProduct`, `idOrder`) VALUES
(6, 'test', 'test@gmail', '$2y$10$zjHh13ufaEVv7XzLnZE4d.pl1KCTxlCPNs4TaFv4ZYjeyMScQcsyy', 'test ', 3, 'user', 0, 0),
(17, 'a', 'a@a', '$2y$10$sDiIVzffv1yun4UGpg7.QO8S3xeaEExdDQlaaHd/cpyS8u1Vlv5iK', 'a', 2, 'user', 0, 0),
(20, 'b', 'b@b', '$2y$10$3qrqwkqM6grvcXMrMww3d.Wm6ipCfPQEN3RouhZymphhDTz2kcdT.', 'b', 4, 'user', 0, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `console`
--
ALTER TABLE `console`
  ADD CONSTRAINT `console_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `game` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
