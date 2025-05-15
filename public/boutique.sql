-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 14 mai 2025 à 10:59
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
  `idGame` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idGame`)
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `console`
--

INSERT INTO `console` (`id`, `name`, `description`) VALUES
(1, 'NES', 'La Nintendo Entertainment System, par abréviation NES, également couramment appelée Nintendo en France, est une console de jeux vidéo de génération 8 bits fabriquée par l\'entreprise japonaise'),
(2, 'SNES', 'La Super Nintendo — appelée Super Famicom (スーパーファミコン?) au Japon et Super Nintendo Entertainment System (Super NES ou SNES) en Amérique du Nord — est une console de jeux vidéo du constructeur '),
(3, 'SEGA', 'Sega Corporation (株式会社セガ, Kabushiki kaisha Sega, abréviation de Service Games, couramment stylisé SEGA) est une société japonaise de développement et d\'édition de jeux vidéo, ainsi qu\'un fabr'),
(4, 'GameBoy', 'La (ou le) Game Boy (ゲームボーイ, Gēmu Bōi) est une console portable de jeu vidéo 8-bits de quatrième génération développée et fabriquée par Nintendo.'),
(5, 'Playstation 1', 'PlayStation est le nom de plusieurs consoles de jeux vidéo fabriquées par l\'entreprise japonaise Sony. Il s\'agit d\'un nom anglais qui signifie littéralement « station de jeu » pour jouer des '),
(6, 'Nintendo 64', 'La Nintendo 64 (ニンテンドウ64, Nintendō Rokujūyon?), également connue sous les noms de code Project Reality et Ultra 64 lors de sa phase de développement, est une console de jeux vidéo de salon, s');

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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `name`, `info`, `image`, `price`, `quantity`, `availability`, `idUser`, `idConsole`) VALUES
(3, 'Super Mario Bros', 'Jeu de plate-forme créé par Shigeru Miyamoto', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/marioNES.jpg?raw=true', 10, 10, 1, 0, 1),
(4, 'The Legend of Zelda', 'Jeu d\'aventure créé par Shigeru Miyamoto', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/ZeldaNES.jpg?raw=true', 13, 5, 1, 0, 1),
(5, 'Metroid', 'Jeu de plate-forme et exploration créé par Gunpei Yokoi', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/NES/metroidNES.jpg?raw=true', 15, 3, 1, 0, 1),
(6, 'Mega Man 2', 'Jeu de plate-forme créé par Keiji Inafune et Yasuaki Katō', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/megaman2NES.jpg', 10, 8, 1, 0, 1),
(7, 'Castlevania', 'Jeu d\'action créé par Toru Igarashi et Kinji Fukasaku', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/castlevaniaNES.jpg', 11, 7, 1, 0, 1),
(8, 'Duck Hunt', 'Jeu de tir au pistolet créé par Gunpei Yokoi', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/duckhuntNES.jpg', 6, 12, 1, 0, 1),
(9, 'Punch-Out!!', 'Jeu de boxe créé par Genyo Takeda et Yoshiki Okamoto', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/PunchoutNES.jpg', 12, 4, 1, 0, 1),
(10, 'Contra', 'Jeu de tir en scrolling vertical créé par Kinji Fukasaku', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/contraNES.jpg', 14, 2, 1, 0, 1),
(11, 'Ninja Gaiden', 'Jeu d\'action et plate-forme créé par Hiroshi Matsuyama', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/ninjagaidenNES.jpg', 15, 6, 1, 0, 1),
(12, 'Double Dragon II', 'Jeu de combat et plate-forme créé par Yoshihiko Oka', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/doubledragon2NES.jpg', 11, 9, 1, 0, 1),
(13, 'Excitebike', 'Jeu de course créé par Toru Igarashi et Kinji Fukasaku', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/excitebikeNES.jpg', 6, 11, 1, 0, 1),
(14, 'Kirby’s Adventure', 'Jeu de plate-forme et exploration créé par Masahiro Sakurai', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/kirby\'sNES.jpg', 10, 10, 1, 0, 1),
(15, 'Bubble Bobble', 'Jeu de plate-forme et puzzle créé par Toru Igarashi', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/bubbleNES.jpg', 9, 15, 1, 0, 1),
(16, 'Kid Icarus', 'Jeu d\'aventure et plate-forme créé par Masahiro Sakurai', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/kidicarusNES.jpg', 13, 5, 1, 0, 1),
(17, 'Battletoads', 'Jeu de combat et plate-forme créé par Geoff Skellington et Tim Sweeney', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/battletoadsNES.jpg', 14, 2, 1, 0, 1),
(18, 'Ice Climber', 'Jeu de plate-forme créé par Toru Igarashi et Kinji Fukasaku', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/iceclimberNES.jpg', 7, 14, 1, 0, 1),
(19, 'Blaster Master', 'Jeu d\'aventure et exploration créé par Hiroshi Matsuyama', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/blastermasterNES.jpg', 12, 4, 1, 0, 1),
(20, 'River City Ransom', 'Jeu de combat et plate-forme créé par Yoshihiko Oka', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/rivercityNES.jpg', 11, 9, 1, 0, 1),
(21, 'Tetris', 'Jeu de puzzle créé par Alexey Pajitnov', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/tetrisNES.jpg', 8, 16, 1, 0, 1),
(22, 'Dr. Mario', 'Jeu de puzzle créé par Gunpei Yokoi et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/NES/drmarioNES.jpg', 9, 10, 1, 0, 1),
(23, 'The Legend of Zelda: A Link to the Past', 'Jeu d\'aventure créé par Shigeru Miyamoto et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/zeldaSNES.jpg', 15, 5, 1, 0, 2),
(24, 'Super Mario World', 'Jeu de plate-forme créé par Shigeru Miyamoto et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/supermarioSNES.jpg', 13, 8, 1, 0, 2),
(25, 'Super Metroid', 'Jeu de plate-forme et exploration créé par Gunpei Yokoi et Nintendo', 'https://i.servimg.com/u/f56/18/82/80/05/tm/2014-011.jpg', 15, 3, 1, 0, 2),
(26, 'Donkey Kong Country', 'Jeu de plate-forme créé par Rare et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/donkeykongSNES.jpg', 14, 2, 1, 0, 2),
(27, 'Final Fantasy VI (III en US)', 'Jeu de rôle créé par Hironobu Sakaguchi et Square', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/finalfantasySNES.jpg', 16, 1, 1, 0, 2),
(28, 'Chrono Trigger', 'Jeu de rôle créé par Yuji Horii et Square', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/chronotriggerSNES.jpg', 17, 1, 1, 0, 2),
(29, 'Super Mario Kart', 'Jeu de course créé par Shigeru Miyamoto et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/mariokartSNES.jpg', 11, 12, 1, 0, 2),
(30, 'Secret of Mana', 'Jeu de rôle actionnel créé par Koichi Ishii et Square', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/secretofmanaSNES.jpg', 15, 4, 1, 0, 2),
(31, 'EarthBound (Mother 2)', 'Jeu de rôle créé par Shigesato Itoi et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/earthboundSNES.jpg', 14, 2, 1, 0, 2),
(32, 'Street Fighter II Turbo', 'Jeu de combat créé par Noritaka Funamizu et Capcom', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/streetfighter2SNES.jpg', 13, 6, 1, 0, 2),
(33, 'F-Zero', 'Jeu de course créé par Tadashi Bridle et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/fzeroSNES.jpg', 10, 10, 1, 0, 2),
(34, 'Yoshi’s Island', 'Jeu de plate-forme créé par Shigeru Miyamoto et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/yoshiSNES.jpg', 12, 5, 1, 0, 2),
(35, 'Super Castlevania IV', 'Jeu d\'action créé par Toru Sugimoto et Konami', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/supercastlevaniaSNES.jpg', 11, 8, 1, 0, 2),
(36, 'Mega Man X', 'Jeu de plate-forme créé par Keiji Inafune et Capcom', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/megamanSNES.jpg', 13, 3, 1, 0, 2),
(37, 'Star Fox', 'Jeu de course créé par Tadashi Bridle et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/starfoxSNES.jpg', 12, 4, 1, 0, 2),
(38, 'Super Ghouls ’n Ghosts', 'Jeu d\'action créé par Masami Ueda et Capcom', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/ghoulSNES.jpg', 10, 10, 1, 0, 2),
(39, 'Illusion of Gaia', 'Jeu de rôle créé par Shigeru Aramaki et Enix', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/gaiaSNES.jpg', 15, 2, 1, 0, 2),
(40, 'ActRaiser', 'Jeu de simulation créé par Keiichi Yano et Quintet', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/actraiserSNES.jpg', 14, 3, 1, 0, 2),
(41, 'Terranigma', 'Jeu d\'aventure créé par Takehiro Izushi et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/terranigmaSNES.jpg', 13, 5, 1, 0, 2),
(42, 'Pilotwings', 'Jeu de simulation créé par Toru Sugimoto et Nintendo', 'https://raw.githubusercontent.com/jeffry-khalife/boutique-en-ligne/refs/heads/Images/preview/images/SNES/pilotwingsSNES.jpg', 11, 9, 0, 0, 2),
(43, 'Sonic the Hedgehog 2', 'Vitesse, loopings et Tails en renfort.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/sonicthehedgehog%20SEGA.jpg?raw=true', 25, 10, 1, 1, 3),
(44, 'Streets of Rage 2', 'Le roi du beat\'em up à deux.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/streetsofrage2%20SEGA.jpg?raw=true', 22, 8, 1, 1, 3),
(45, 'Shinobi III: Return of the Ninja Master', 'Ninja classe, gameplay fluide.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/rocketknightSEGA.jpg?raw=true', 24, 5, 1, 1, 3),
(46, 'Gunstar Heroes', 'Run & gun explosif, pur chef-d\'œuvre de Treasure.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/gunstarheroes%20SEGA.jpg?raw=true', 27, 7, 1, 1, 3),
(47, 'Castlevania: Bloodlines', 'Version Sega unique et très réussie.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/castlevania%20SEGA.jpg?raw=true', 30, 4, 1, 1, 3),
(48, 'Golden Axe', 'Beat\'em up fantasy avec montures et magie.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/goldenaxe%20SEGA.jpg?raw=true', 20, 6, 1, 1, 3),
(49, 'Altered Beast', 'Transformation en bête féroce, culte de lancement.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/alteredbeast%20SEGA.jpg?raw=true', 18, 9, 1, 1, 3),
(50, 'ToeJam & Earl', 'Duo funky dans un rogue-lite délirant.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/toejam%20SEGA.jpg?raw=true', 23, 5, 1, 1, 3),
(51, 'Ristar', 'Plateforme créatif signé Sega, trop souvent oublié.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/ristar%20SEGA.jpg?raw=true', 19, 6, 1, 1, 3),
(52, 'Phantasy Star IV', 'Excellent RPG de science-fiction.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/phantasy4%20SEGA.jpg?raw=true', 35, 3, 1, 1, 3),
(53, 'Ecco the Dolphin', 'Poétique, difficile, sous-marin.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/eccothedolphin%20SEGA.jpg?raw=true', 21, 8, 1, 1, 3),
(54, 'Comix Zone', 'Action dans une BD vivante, très stylé.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/comixzone%20SEGA.jpg?raw=true', 26, 4, 1, 1, 3),
(55, 'Sonic & Knuckles', 'Ajout du fameux \"lock-on\" system.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/sonicetknuckles%20SEGA.jpg?raw=true', 28, 7, 1, 1, 3),
(56, 'Rocket Knight Adventures', 'Possum en armure avec jetpack, fun et intense.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/rocketknight%20SEGA.jpg?raw=true', 24, 5, 1, 1, 3),
(57, 'Mortal Kombat II', 'Version Mega Drive = sang présent 😈.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/mortal2%20SEGA.jpg?raw=true', 22, 6, 1, 1, 3),
(58, 'Landstalker', 'Action-RPG isométrique avec énigmes.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/landstalker%20SEGA.jpg?raw=true', 29, 4, 1, 1, 3),
(59, 'Thunder Force IV', 'Shoot\'em up intense avec une bande-son de folie.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/thunderforce4%20SEGA.jpg?raw=true', 27, 5, 1, 1, 3),
(60, 'Road Rash II', 'Courses de motos + baston sur route.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/roadrash2%20SEGA.jpg?raw=true', 20, 7, 1, 1, 3),
(61, 'Aladdin', 'Version Sega différente de la SNES, très animée.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/aladdin%20SEGA.jpg?raw=true', 23, 8, 1, 1, 3),
(62, 'OutRun', 'Conduite arcade avec soleil couchant et musique culte.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/SEGA/outrun%20SEGA.jpg?raw=true', 19, 9, 1, 1, 3),
(63, 'Tetris', 'LE jeu iconique, fourni avec la console.', '', 20, 5, 1, 1, 4),
(64, 'Super Mario Land 2: 6 Golden Coins', 'Plateforme fluide et inventif.', '', 20, 5, 1, 1, 4),
(65, 'The Legend of Zelda: Link’s Awakening', 'Un Zelda magique et complet.', '', 20, 5, 1, 1, 4),
(66, 'Metroid II: Return of Samus', 'Suite sur portable, très solide.', '', 20, 5, 1, 1, 4),
(67, 'Kirby’s Dream Land', 'Le tout premier Kirby, tout en douceur.', '', 20, 5, 1, 1, 4),
(68, 'Donkey Kong (1994)', 'Commence comme l\'arcade... puis surprise !', '', 20, 5, 1, 1, 4),
(69, 'Wario Land: Super Mario Land 3', 'Plateforme + money = win.', '', 20, 5, 1, 1, 4),
(70, 'Pokémon Rouge / Bleu', 'Le phénomène planétaire commence ici.', '', 20, 5, 1, 1, 4),
(71, 'Dr. Mario', 'Puzzle game à la sauce virus/médoc.', '', 20, 5, 1, 1, 4),
(72, 'Mega Man V', 'Épisode exclusif avec les Stardroids.', '', 20, 5, 1, 1, 4),
(73, 'Castlevania II: Belmont\'s Revenge', 'Très bon opus 8-bit.', '', 20, 5, 1, 1, 4),
(74, 'Gargoyle’s Quest', 'Action-RPG avec Firebrand (du lore de Ghosts\'n Goblins).', '', 20, 5, 1, 1, 4),
(75, 'Tetris Attack', 'Puzzle nerveux avec Yoshi et cie.', '', 20, 5, 1, 1, 4),
(76, 'Balloon Kid', 'Suite spirituelle de Balloon Fight, très sympa.', '', 20, 5, 1, 1, 4),
(77, 'DuckTales', 'Plateforme fun avec Oncle Picsou et sa canne pogo.', '', 20, 5, 1, 1, 4),
(78, 'Teenage Mutant Ninja Turtles: Fall of the Foot Clan', 'Beat\'em up simple mais efficace.', '', 20, 5, 1, 1, 4),
(79, 'Motocross Maniacs', 'Courses avec loopings et cascades.', '', 20, 5, 1, 1, 4),
(80, 'Revenge of the Gator', 'Flipper ultra addictif.', '', 20, 5, 1, 1, 4),
(81, 'Final Fantasy Adventure (Mystic Quest)', 'Action-RPG, préquel de Secret of Mana.', '', 20, 5, 1, 1, 4),
(82, 'Bomberman GB', 'Version adaptée, mais toujours explosive.', '', 20, 5, 1, 1, 4),
(83, 'Final Fantasy VII', 'RPG culte, Cloud, Sephiroth, chocobo, émotions.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Final%20Fantasy%20VII/Face.jpg?raw=true', 20, 5, 1, 1, 5),
(84, 'Metal Gear Solid', 'Infiltration + cinématique de malade.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Metal%20gear%20solid/face.jpg?raw=true', 20, 5, 1, 1, 5),
(85, 'Resident Evil 2', 'Survival horror qui a fait flipper toute une génération.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Resident%20evil%202/face.jpg?raw=true', 20, 5, 1, 1, 5),
(86, 'Castlevania: Symphony of the Night', 'Exploration 2D sublime.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Castelvania%20-%20Symphony%20of%20the%20night/face.jpg?raw=true', 20, 5, 1, 1, 5),
(87, 'Crash Bandicoot 3: Warped', 'Plateforme fun, voyage dans le temps.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Crash%20bandicoot%203/face.jpg?raw=true', 20, 5, 1, 1, 5),
(88, 'Spyro the Dragon', 'Plateforme 3D colorée et chill.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Spyro%20the%20dragon/face.jpg?raw=true', 20, 5, 1, 1, 5),
(89, 'Gran Turismo 2', 'Réaliste, voitures par centaines.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Gran%20turismo%202/face%202.jpg?raw=true', 20, 5, 1, 1, 5),
(90, 'Tekken 3', 'Baston nerveuse, roster culte.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Tekken%203/face%201.jpg?raw=true', 20, 5, 1, 1, 5),
(91, 'Tomb Raider II', 'Lara Croft, temples, flingues et acrobaties.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Tomb%20raider%202/face.jpg?raw=true', 20, 5, 1, 1, 5),
(92, 'Silent Hill', 'Brouillard, peur psychologique, ambiance pesante.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Silent%20hill/face%20scell%C3%A9.jpg?raw=true', 20, 5, 1, 1, 5),
(93, 'Tony Hawk’s Pro Skater 2', 'Tricks stylés, BO légendaire.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Tony%20hawk\'s%20pro%20skater%202/face.jpg?raw=true', 20, 5, 1, 1, 5),
(94, 'Crash Team Racing', 'Mario Kart version PlayStation, et c’est top.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Crash%20team%20racing/face.jpg?raw=true', 20, 5, 1, 1, 5),
(95, 'Vagrant Story', 'RPG tactique sombre et hyper stylisé.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Vagrant%20story/face.jpg?raw=true', 20, 5, 1, 1, 5),
(96, 'Chrono Cross', 'Suite spirituelle de Chrono Trigger, très sous-estimé.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Chrono%20cross/face.jpg?raw=true', 20, 5, 1, 1, 5),
(97, 'Parasite Eve', 'Survival-RPG avec une ambiance à la Resident Evil.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Parasite%20eve/face.jpg?raw=true', 20, 5, 1, 1, 5),
(98, 'Driver', 'Courses-poursuites old-school à la sauce années 70.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Driver/face.jpg?raw=true', 20, 5, 1, 1, 5),
(99, 'Suikoden II', 'RPG avec plus de 100 persos jouables, chef-d’œuvre.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Suikoden%202/face.jpg?raw=true', 20, 5, 1, 1, 5),
(100, 'Medievil', 'Sir Daniel Fortesque, humour gothique et gameplay unique.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Medievil/face.jpg?raw=true', 20, 5, 1, 1, 5),
(101, 'Ape Escape', 'Gameplay original avec les deux sticks.', 'https://github.com/jeffry-khalife/boutique-en-ligne/tree/Images/preview/images/Playstation%20I/Ape%20escape?raw=true', 20, 5, 1, 1, 5),
(102, 'Legacy of Kain: Soul Reaver', 'Scénario mature, gameplay dimensionnel.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Playstation%20I/Legacy%20of%20kain%20-%20soul%20reaver/Face.jpg?raw=true', 20, 5, 1, 1, 5),
(103, 'The Legend of Zelda: Ocarina of Time', 'Un des meilleurs jeux ever.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Zelda%20-%20ocarina%20of%20time/boite%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(104, 'Super Mario 64', 'Premier vrai jeu de plateforme 3D, une claque.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Super%20mario%2064/boite%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(105, 'GoldenEye 007', 'FPS multi culte, le roi des soirées split-screen.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Golden%20eye/cartouche.jpg?raw=true', 20, 5, 1, 1, 6),
(106, 'Mario Kart 64', 'Course fun et trahison entre potes.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Mario%20kart%2064/cartouche.jpg?raw=true', 20, 5, 1, 1, 6),
(107, 'Banjo-Kazooie', 'Plateforme 3D drôle, colorée, ultra bien pensée.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Banjo-kazooie/cartouche%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(108, 'Perfect Dark', 'Suite spirituelle de GoldenEye, plus poussé.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Perfect%20dark/cartouche%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(109, 'The Legend of Zelda: Majora’s Mask', 'Ambiance dark, boucle temporelle.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/The%20Legend%20of%20Zelda%20Majora%E2%80%99s%20Mask/cartouche%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(110, 'Star Fox 64', 'Shootez dans l’espace avec Fox McCloud.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Star%20Fox%2064%20(Lylat%20Wars)/cartouche%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(111, 'Donkey Kong 64', 'Gros collect-a-thon avec toute la DK team.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Donkey%20Kong%2064/boite%20.jpg?raw=true', 20, 5, 1, 1, 6),
(112, 'Super Smash Bros.', 'Le tout premier, crossover de folie.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Smash%20Bros/boite.jpg?raw=true', 20, 5, 1, 1, 6),
(113, 'Diddy Kong Racing', 'Course + aventure avec avions et hovercrafts.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Diddy%20Kong%20Racing/boite%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(114, 'Wave Race 64', 'Jet-ski + eau dynamique, fun total.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Wave%20Race%2064/Boite%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(115, 'F-Zero X', 'Courses ultra rapides et hardcore.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/F-zero%20x/cartouche%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(116, 'Pokémon Stadium', 'Combats 3D des Pokémon de la Gen 1/2.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Pokemon%20stadium/boite.jpg?raw=true', 20, 5, 1, 1, 6),
(117, '1080° Snowboarding', 'Glisse stylée et technique.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/1080%C2%B0%20Snowboarding/boite%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(118, 'Yoshi’s Story', 'Univers mignon et bande-son originale.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Yoshi%E2%80%99s%20Story/cartouche.jpg?raw=true', 20, 5, 1, 1, 6),
(119, 'Kirby 64: The Crystal Shards', 'Pouvoirs combinés, plateforme adorable.', 'https://github.com/jeffry-khalife/boutique-en-ligne/blob/Images/preview/images/Nintendo%2064/Kirby%2064%20The%20Crystal%20Shards/boite%20face.jpg?raw=true', 20, 5, 1, 1, 6),
(120, 'Turok 2: Seeds of Evil', 'FPS avec dinos, gore et arsenal WTF.', '', 20, 5, 1, 1, 6),
(121, 'Conker’s Bad Fur Day', 'Jeu d’écureuil trash et hilarant (R-rated !).', '', 20, 5, 1, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUser` int NOT NULL,
  `idPayment` int NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) NOT NULL DEFAULT 'en attente',
  `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_adress` varchar(255) DEFAULT NULL,
  `notes` text,
  `order_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `idProduct` (`idUser`,`idPayment`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `idUser`, `idPayment`, `order_date`, `status`, `total_amount`, `shipping_adress`, `notes`, `order_number`) VALUES
(8, 20, 1, '2025-05-10 10:57:38', 'en attente', 38.00, NULL, NULL, 'RG8'),
(9, 20, 1, '2025-05-10 10:57:54', 'annulée', 6.00, NULL, NULL, 'RG9'),
(10, 20, 1, '2025-05-10 10:58:07', 'annulée', 13.00, NULL, NULL, 'RG10'),
(11, 20, 1, '2025-05-10 10:58:23', 'annulée', 21.00, NULL, NULL, 'RG11'),
(12, 20, 1, '2025-05-10 11:33:33', 'expédiée', 14.00, NULL, NULL, 'RG20250510-095D94'),
(13, 20, 1, '2025-05-10 14:20:56', 'en attente', 33.00, NULL, NULL, 'RG20250510-E1AFAD'),
(14, 20, 1, '2025-05-12 10:17:56', 'en attente', 13.00, NULL, NULL, 'RG20250512-B54115'),
(15, 20, 1, '2025-05-12 10:19:34', 'annulée', 15.00, NULL, NULL, 'RG20250512-D9B34A');

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `game_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `game_id` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `game_id`, `quantity`, `price`) VALUES
(9, 8, 3, 1, 10.00),
(10, 8, 4, 1, 13.00),
(11, 8, 5, 1, 15.00),
(12, 9, 8, 1, 6.00),
(13, 10, 4, 1, 13.00),
(14, 11, 5, 1, 15.00),
(15, 11, 8, 1, 6.00),
(16, 12, 40, 1, 14.00),
(17, 13, 27, 1, 16.00),
(18, 13, 28, 1, 17.00),
(19, 14, 4, 1, 13.00),
(20, 15, 5, 1, 15.00);

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
  `idGame` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idGame`)
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
  `idGame` int NOT NULL,
  `idOrder` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idGame`,`idOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `mail`, `password`, `adress`, `phone_number`, `role`, `idGame`, `idOrder`) VALUES
(6, 'test', 'test@gmail', '$2y$10$zjHh13ufaEVv7XzLnZE4d.pl1KCTxlCPNs4TaFv4ZYjeyMScQcsyy', 'test ', 3, 'admin', 0, 0),
(20, 'b', 'b@b', '$2y$10$3qrqwkqM6grvcXMrMww3d.Wm6ipCfPQEN3RouhZymphhDTz2kcdT.', 'bb', 4, 'user', 0, 0),
(21, 'a', 'a@a', '$2y$10$EXKIa02dGJxOI5giRL0WnO0jFUybhpbt.wDjjMkgm38NeAil0e4aq', 'a', 2, 'user', 0, 0),
(23, 'nana', 'anna.marras@laplateforme.io', '$2y$10$oysgAq01pPwEsovJSrDSz.ppr6LQsUfvZ8mNWMKUvhiJqSKukhx3S', 'rue de l&#039;adresse', 606060606, 'user', 0, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
