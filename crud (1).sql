-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 06 fév. 2025 à 10:35
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

DROP TABLE IF EXISTS `liste`;
CREATE TABLE IF NOT EXISTS `liste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produit` varchar(200) NOT NULL,
  `prix` varchar(20) NOT NULL,
  `nombre` int NOT NULL,
  `image_produit` varchar(300) NOT NULL,
  `actif` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `liste`
--

INSERT INTO `liste` (`id`, `produit`, `prix`, `nombre`, `image_produit`, `actif`) VALUES
(2, 'produit 234', '32', 33, '200x200.png', 1),
(3, 'produit ZZ2', '12', 23, '200x200.png', 0),
(4, 'produit XXXXX', '344', 45, '200x200.png', 1),
(5, 'produit yop', '344', 34, '200x200A.png', 1),
(6, 'klhjsdqjkhsd', '23', 12, '200x200A.png', 1),
(7, 'klhjsdqjkhsd', '23', 12, '200x200A.png', 0),
(8, 'wxxwwx', '23', 34, '200x200.png', 0),
(9, 'produit numéro 9', '12', 45, '200x200.png', 0),
(10, 'gggg', '12', 56, '200x200.png', 0),
(11, 'Prod ZZZZZZZZZZ Y', '12', 34, '200x200CCCC.png', 0),
(12, 'PROD IMAGE', '344', 56, '200x200XXXXXX.png', 1),
(13, 'ww', '56', 87, '200x200.png', 0),
(14, 'wxxwxw', '78', 89, '200x200A.png', 0),
(15, 'hjjhjkj', '56', 56666, '200x200CCCC.png', 0),
(16, 'qsqqs', '12', 34, '200x200.png', 0),
(17, 'produit WWWW', '347', 67, '200x200CCCC.png', 1),
(18, 'produit img2', '12', 34, '200x200CCCC.png', 1),
(19, 'produitimg3', '45', 56, '200x200.png', 1),
(20, 'produitimg4', '56', 89, '200x200.png', 1),
(21, 'produit ZZXXX', '45', 12, '200x200CCCC.png', 1),
(23, 'TShirt Noir', '12', 245, 'tshirt200BGw.jpg', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
