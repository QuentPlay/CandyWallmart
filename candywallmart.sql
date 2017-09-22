-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 21 Septembre 2017 à 16:54
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `candywallmart`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `idcategories` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`idcategories`, `nom`, `description`, `image`) VALUES
(1, 'discount', 'lunettes de soleil bon marchées', 'assets/images/image_categorie/bonmarche.jpg'),
(2, 'polarisées', 'lunettes de soleil polarisantes', 'assets/images/image_categorie/polarise.jpg'),
(3, 'adaptables à la vue', 'lunettes de soleil correctrices', 'assets/images/image_categorie/correction.jpg'),
(4, 'sport', 'lunettes de soleil sportives', 'assets/images/image_categorie/sport.jpg'),
(5, 'femme', 'lunettes de soleil femme', 'assets/images/image_categorie/femme.jpg'),
(6, 'homme', 'lunettes de soleil homme', 'assets/images/image_categorie/homme.jpg'),
(7, 'unisexe', 'lunettes de soleil unisexe', 'assets/images/image_categorie/mixte.jpg'),
(100, 'top vente', 'lunettes les plus vendues', 'assets/images/image_categorie/topvente.jpg'),
(101, 'nouveaute', 'nouveautés 2017', 'assets/images/image_categorie/icon_new.png\r\n'),
(102, 'Enfant', 'Montures adaptées au design enfantin', ' assets/images/image_categorie/tpicoti-yeux-bebe.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` int(11) NOT NULL,
  `titre` enum('Monsieur','Madame','Autre','') NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `cp` varchar(6) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `motdepasse` varchar(100) NOT NULL,
  `remise` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `titre`, `nom`, `prenom`, `email`, `adresse`, `cp`, `ville`, `motdepasse`, `remise`) VALUES
(1, 'Madame', 'dupont', 'valérie', 'dupont@yopmail.com ', '14, rue des myrtilles', '54000', 'nancy', 'test', '0.00'),
(2, 'Monsieur', 'Muller', 'Serge', 'muller@yopmail.com', '298, avenue du général De Gaules', '24000', 'Périgueux', 'test', '0.00'),
(3, 'Monsieur', 'Brest', 'Timothé', 'brest@yopmail.com', '47, impasse des ruines', '84260', 'sarrians', 'test', '0.00'),
(4, 'Madame', 'Cosselin', 'Madeline', 'cosse@yopmail.com', '90, rue du Pasteur', '62300', 'lens', 'test', '0.00');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `idcommande` int(11) NOT NULL,
  `datecmd` date NOT NULL,
  `idclient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`idcommande`, `datecmd`, `idclient`) VALUES
(1, '2017-01-12', 1),
(2, '2017-01-12', 2),
(3, '2017-01-13', 3),
(4, '2017-01-14', 1),
(5, '2017-01-14', 2),
(6, '2017-01-15', 3),
(7, '2017-01-16', 1),
(8, '2017-01-17', 4),
(9, '2017-01-17', 1),
(10, '2017-01-18', 4);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detailscommande`
--

CREATE TABLE `detailscommande` (
  `idproduits` int(11) NOT NULL,
  `idcommandes` int(11) NOT NULL,
  `quantite` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `detailscommande`
--

INSERT INTO `detailscommande` (`idproduits`, `idcommandes`, `quantite`) VALUES
(2, 1, 1),
(6, 6, 1),
(12, 8, 1),
(13, 1, 2),
(14, 4, 1),
(15, 2, 1),
(18, 5, 1),
(34, 8, 1),
(35, 4, 1),
(39, 6, 1),
(44, 7, 1),
(50, 6, 1),
(57, 9, 2),
(59, 3, 2),
(63, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `marques`
--

CREATE TABLE `marques` (
  `idmarques` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `marques`
--

INSERT INTO `marques` (`idmarques`, `nom`, `logo`) VALUES
(1, 'Hugo Boss', 'gafas-de-sol-boss-hugo-boss.jpg'),
(2, 'Adidas', 'gafas-de-sol-adidas.jpg'),
(3, 'Arnette', 'gafas-de-sol-arnette.jpg'),
(4, 'Nike', 'gafas-de-sol-nike.jpg'),
(5, 'Oakley', 'gafas-de-sol-oakley.jpg'),
(6, 'Carrera', 'gafas-de-sol-carolina-herrera.jpg'),
(7, 'BeeCool', 'gafas-de-sol-beecool.jpg'),
(8, 'Michael Kors', 'gafas-de-sol-michael-kors.jpg'),
(9, 'Polaroid', 'gafas-de-sol-polaroid.jpg'),
(10, 'Ray Ban', 'gafas-de-sol-ray-ban.jpg'),
(11, 'Vogue', 'gafas-de-sol-vogue.jpg'),
(12, 'Dior', 'gafas-de-sol-dior.jpg'),
(13, 'Persol', 'gafas-de-sol-persol.jpg'),
(14, 'Celine', 'gafas-de-sol-celine.jpg'),
(15, 'Chloe', 'gafas-de-sol-chloe.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `idproduits` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `refConstructeur` varchar(100) NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `idcategorie` int(11) NOT NULL,
  `idmarque` int(11) NOT NULL,
  `inscription` date NOT NULL,
  `quantite` int(10) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`idproduits`, `nom`, `refConstructeur`, `prix`, `resume`, `detail`, `image`, `idcategorie`, `idmarque`, `inscription`, `quantite`) VALUES
(2, 'MTT BROWN', 'BOSS 0824/S', '135.00', 'largeur des verres 60 mm, longueur des branches 140 mm, pont 15 mm, métal, marron', '', 'assets/images/image_produit/BOSS0824S_HUB_YZ4(IR)_36015145.jpg', 2, 1, '2017-01-10', 100),
(3, 'AN3068 SMOKEY', '503/71', '99.00', '', 'largeur des verres 60 mm, longueur des branches 140 mm, pont 15 mm, métal, couleur or', 'assets/images/image_produit/AN3068-503_71.jpg', 1, 3, '2016-01-09', 100),
(4, 'AN4007 SLIDE / MATTE BLACK/GRAY GREEN', 'GRAY GREEN 01', '61.00', 'largeur des verres 66 mm, longueur des branches 115 mm, pont 17 mm, métal, couleur moir et gris.', 'Les AN4007 sont des lunettes de soleil pour homme de la marque Arnette. La forme de ce modèle est rectangulaire et la matière dont elle est faite est nylon. Tout en ayant une monture très mince, mais solide et légère, les lentes sont grandes et allongées\r\net elles offrent une protection latérale complète. Les verres couvrent le visage jusqu\'aux yeux complètement. Les branches sont minces et s\'adaptent très bien à la forme du visage. Elles ont aussi le logo de la marque sur le côté.\r\nCes lunettes ne sont disponibles que dans une seule taille et en une couleur\r\nunique.', 'assets/images/image_produit/AN4007_SLIDE-01.jpg', 1, 3, '2016-03-09', 100),
(5, 'SHE046 / SILVER / GREY GRADIENT', '579Y', '120.00', 'largeur des verres 54 mm, longueur des branches 135 mm, point 18mm, ', '', 'assets/images/image_produit/SHE046-579Y.jpg', 1, 6, '2017-01-15', 100),
(6, 'SHE066 / PURPLE / GREY GRADIENT', '0531', '115.00', 'largeur des verres 56 mm, longueur des branches 140 mm, pont 16 mm, taille unique.', '', 'assets/images/image_produit/SHE066-0531.jpg', 1, 6, '2016-01-08', 100),
(7, 'LIGHT HAVANA CRYSTAL BROWN POLARIZED', 'RB4147', '130.00', 'largeur des verres 60 mm, pont 15 mm unisexe et taille unique.', '', 'assets/images/image_produit/RB4147-710_57.jpg', 1, 10, '2017-01-02', 100),
(8, 'TOP MAT BLACK ON RED TRASP', 'RB4147', '90.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 15 mm , unisexe, noir et rouge', '', 'assets/images/image_produit/RB4147-617187.jpg', 1, 10, '2017-01-08', 100),
(9, 'MTRUTTEAL', 'BOSS 0824/S', '225.00', 'largeur des verres 60 mm, longueur des branches 145 mm, pont 15 mm, métal, bleu dégradé', '', 'assets/images/image_produit/BOSS0824S_HUB_Z0G(G5)_36015145.jpg', 2, 1, '2017-01-10', 100),
(10, 'VO2871S / BLACK', '219115', '99.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'assets/images/image_produit/VO2871S-W44_11.jpg', 1, 11, '2016-08-17', 100),
(11, 'BLKHVNCRY', 'BOSS 0742/S', '285.00', 'largeur des verres 48 mm, longueur des branches 140 mm, pont 24 mm, tigré noir', '', 'assets/images/image_produit/BOSS_0742_S____-KIL__EU_.jpg', 2, 1, '2017-01-10', 100),
(12, 'TRL PTTR', 'BOSS 0768/S', '245.00', 'largeur des verres 48 mm, longueur des branches 140 mm, pont 24 mm, bleu', '', 'assets/images/image_produit/BOSS_0768_S____-QOB__BN_.jpg', 2, 1, '2017-01-03', 94),
(13, 'RUTH CRBN', 'BOSS 0773/S', '324.00', 'largeur des verres 63 mm, longueur des branches 140 mm, pont 14 mm, noir et bleu', '', 'assets/images/image_produit/BOSS_0773_S____-HXS__DR_.jpg', 2, 1, '2017-01-10', 100),
(14, 'MATTE GREY', 'RB4224', '220.00', 'largeur des verres 49 mm, longeur des branches 140 mm, pont 20 mm, unisexe, gris et verre orange', '', 'assets/images/image_produit/RB4224-650_6Q.jpg', 1, 10, '2016-11-13', 100),
(15, 'MATTE TRASPARENT', 'RB4224', '220.00', 'largeur des verres 49 mm, longueur des branches 140 mm, pont 20 mm, unisexe transparent et bleu.', '', 'assets/images/image_produit/RB4224-646_55.jpg', 1, 10, '2016-10-12', 100),
(16, 'RB4226-710_73', 'SHINY HAVANA', '119.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 16 mm, tigre et marron.', '', 'assets/images/image_produit/RB4226-710_73.jpg', 1, 10, '2017-01-11', 100),
(17, 'VO2871S / OPAL PINK', '219114', '99.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, rose', '', 'assets/images/image_produit/VO2871S-219114.jpg', 1, 11, '2016-08-17', 100),
(18, 'VO2889S CHARLOTTE RONSON COLLECTION / TRANSPARENT AQUA GREEN GREY GRADIENT', '221211', '120.00', 'largeur des verres 55 mm, longueur des branches 140 mm, pont 19 mm, bleu ciel.', '', 'assets/images/image_produit/VO2889S-221211.jpg', 1, 11, '0000-00-00', 100),
(19, 'VO2871S / TOP BLUETTE/AZURE TRANSP', '238348', '120.00', 'largeur des verres 55 mm, longueur des branches 140 mm, pont 19 mm, bleu nuit.', '', 'assets/images/image_produit/VO2871S-238348.jpg', 1, 11, '2017-01-10', 100),
(20, 'LIGHT HORN', 'BC013', '256.00', 'largeur des verres 50 mm, longueur des branches 145 mm, pont 22 mm, unisexe, marron', '', 'assets/images/image_produit/BC013_BC_A_35022145_alt23_large.jpg', 3, 7, '2016-05-17', 100),
(21, 'SHE066 / PURPLE / GREY GRADIENT', '0531', '115.00', 'largeur des verres 56 mm, longueur des branches 140 mm, pont 16 mm, taille unique.', '', 'assets/images/image_produit/SHE066-0531.jpg', 7, 6, '2016-01-08', 0),
(22, 'LIGHT HAVANA CRYSTAL BROWN POLARIZED', 'RB4147', '130.00', 'largeur des verres 60 mm, pont 15 mm unisexe et taille unique.', '', 'assets/images/image_produit/RB4147-710_57.jpg', 7, 10, '2017-01-02', 100),
(23, 'TOP MAT BLACK ON RED TRASP', 'RB4147', '90.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 15 mm , unisexe, noir et rouge', '', 'assets/images/image_produit/RB4147-617187.jpg', 7, 10, '2017-01-08', 100),
(24, 'VO2871S / BLACK', '219115', '99.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'assets/images/image_produit/VO2871S-W44_11.jpg', 7, 11, '2016-08-17', 100),
(25, 'MATTE GREY', 'RB4224', '220.00', 'largeur des verres 49 mm, longeur des branches 140 mm, pont 20 mm, unisexe, gris et verre orange', '', 'assets/images/image_produit/RB4224-650_6Q.jpg', 7, 10, '2016-11-13', 100),
(26, 'MATTE TRASPARENT', 'RB4224', '220.00', 'largeur des verres 49 mm, longueur des branches 140 mm, pont 20 mm, unisexe transparent et bleu.', '', 'assets/images/image_produit/RB4224-646_55.jpg', 7, 10, '2016-10-12', 100),
(27, 'RB4226-710_73', 'SHINY HAVANA', '119.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 16 mm, tigre et marron.', '', 'RB4226-710_73.jpg', 7, 10, '2017-01-11', 100),
(28, 'VO2871S / OPAL PINK', '219114', '99.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, rose', '', 'VO2871S-219114.jpg', 7, 11, '2016-08-17', 100),
(29, 'VO2889S CHARLOTTE RONSON COLLECTION / TRANSPARENT AQUA GREEN GREY GRADIENT', '221211', '120.00', 'largeur des verres 55 mm, longueur des branches 140 mm, pont 19 mm, bleu ciel.', '', 'VO2889S-221211.jpg', 7, 11, '0000-00-00', 100),
(30, 'VO2871S / TOP BLUETTE/AZURE TRANSP', '238348', '120.00', 'largeur des verres 55 mm, longueur des branches 140 mm, pont 19 mm, bleu nuit.', '', 'VO2871S-238348.jpg', 7, 11, '2017-01-10', 100),
(31, 'TOP MAT BLACK ON RED TRASP', 'RB4147', '90.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 15 mm , unisexe, noir et rouge', '', 'RB4147-617187.jpg', 6, 10, '2017-01-08', 100),
(32, 'RBBBK YLL', 'BOSS 0799/S', '195.00', 'largeur des verres 57 mm, longueur des branches 130 mm, pont 17 mm', '', 'BOSS_0799_S-UDK_(C4).jpg', 3, 1, '2017-01-10', 100),
(33, 'MATTE GREY', 'RB4224', '220.00', 'largeur des verres 49 mm, longeur des branches 140 mm, pont 20 mm, unisexe, gris et verre orange', '', 'RB4224-650_6Q.jpg', 6, 10, '2016-11-13', 100),
(34, 'MATTE TRASPARENT', 'RB4224', '220.00', 'largeur des verres 49 mm, longueur des branches 140 mm, pont 20 mm, unisexe transparent et bleu.', '', 'RB4224-646_55.jpg', 6, 10, '2016-10-12', 100),
(35, 'RB4226-710_73', 'SHINY HAVANA', '119.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 16 mm, tigre et marron.', '', 'RB4226-710_73.jpg', 6, 10, '2017-01-11', 100),
(36, 'SHE046 / SILVER / GREY GRADIENT', '579Y', '120.00', 'largeur des verres 54 mm, longueur des branches 135 mm, point 18mm, ', '', 'SHE046-579Y.jpg', 5, 6, '2017-01-15', 100),
(37, 'SHE066 / PURPLE / GREY GRADIENT', '0531', '115.00', 'largeur des verres 56 mm, longueur des branches 140 mm, pont 16 mm, taille unique.', '', 'SHE066-0531.jpg', 5, 6, '2016-01-08', 100),
(38, 'VO2871S / BLACK', '219115', '99.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'VO2871S-W44_11.jpg', 5, 11, '2016-08-17', 100),
(39, 'VO2871S / OPAL PINK', '219114', '99.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, rose', '', 'VO2871S-219114.jpg', 5, 11, '2016-08-17', 100),
(40, 'VO2889S CHARLOTTE RONSON COLLECTION / TRANSPARENT AQUA GREEN GREY GRADIENT', '221211', '120.00', 'largeur des verres 55 mm, longueur des branches 140 mm, pont 19 mm, bleu ciel.', '', 'VO2889S-221211.jpg', 5, 11, '0000-00-00', 100),
(41, 'VO2871S / TOP BLUETTE/AZURE TRANSP', '238348', '120.00', 'largeur des verres 55 mm, longueur des branches 140 mm, pont 19 mm, bleu nuit.', '', 'VO2871S-238348.jpg', 5, 11, '2017-01-10', 100),
(42, 'BKCARBRED', 'BOSS 0731/S', '225.00', 'largeur des verres 60 mm, longueur des branches 145 mm, pont 15 mm, métal, marron et orange', '', 'BOSS_0731_S____-KDG__3H_.jpg', 2, 1, '2017-01-10', 100),
(43, 'SHE043 / 0R80*', '0R80*3', '170.00', 'largeur des verres 57 mm, longueur des branches 130 mm, pont 17 mm', '', 'SHE043-0R80*3.jpg', 3, 6, '2017-01-04', 100),
(44, 'BC027 / B ', 'BC027', '410.00', 'largeur des verres 50 mm, longueur des branches 145 mm, pont 22 mm, unisexe, marron', '', 'BC027_BC_B_34821140_alt23_large.jpg', 3, 7, '2017-01-10', 100),
(45, 'OO9102 HOLBROOK / MATTE BLACK (JULIAN WILS VIOLET IRIDIUM', '910226', '248.00', 'largeur des verres 55 mm, longueur des branches 137 mm, pont 18 mm', '', 'OO9102-910226.jpg', 4, 5, '2017-01-05', 95),
(46, 'NIKE FLATSPOT EV0923 / MATTE SQ BL-TID PL W-GREY LENS', 'EV0923', '170.00', 'largeur des verres 52 mm, longueur des branches 145 mm, pont 20 mm, unisexe', '', 'NIKE_FLATSPOT_EV0923-420.jpg', 4, 4, '2016-12-05', 0),
(47, 'A165 ADIVISTA S / MATTE BLACK', 'A6071', '165.00', 'largeur des verres 52 mm, longueur des branches 145 mm, pont 20 mm, unisexe', '', 'A165-6071.jpg', 4, 2, '2016-09-13', 15),
(48, 'A377 DAVAO / NAVY BLUE', 'A6052', '195.00', 'largeur des verres 52 mm, longueur des branches 145 mm, pont 20 mm, unisexe', '', 'A377-6052.jpg', 4, 2, '2017-01-11', 100),
(49, 'A376 RETEGO / SHINY BLACK/GREEN', 'A6060', '145.00', 'largeur des verres 52 mm, longueur des branches 145 mm, pont 20 mm, unisexe', '', 'A376-6060.jpg', 4, 2, '2017-01-12', 85),
(50, 'NIKE VITAL R EV0882 / DP BUR/HYP PNK TORT/GRY ML ROS', 'EV0882', '175.00', 'largeur des verres 52 mm, longueur des branches 145 mm, pont 20 mm, unisexe', '', 'NIKE_VITAL_R_EV0882-626.jpg', 4, 4, '2017-01-03', 65),
(51, 'OO9290 JAWBREAKER / MATTE URANIUM', '929011', '215.00', 'largeur des verres 55 mm, longueur des branches 137 mm, pont 18 mm', '', 'OO9290-929011.jpg', 4, 5, '2017-01-03', 100),
(52, 'OO9290 JAWBREAKER / POLISHED WHITE', '929018', '245.00', 'largeur des verres 55 mm, longueur des branches 137 mm, pont 18 mm, blanche et rose', '', 'OO9290-929018.jpg', 4, 5, '2017-01-04', 100),
(53, 'DIORUMBRAGE / BLCK RUTH', 'L9R', '425.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, noir', '', 'DIORUMBRAGE-L9R__IR_.jpg', 6, 12, '2016-08-10', 45),
(54, 'DIORUMBRAGE / BLUHVNPLD', 'TW0X8', '367.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'DIORUMBRAGE_CRD_0X8(TW)_35220135_alt23_large.jpg', 6, 12, '2016-08-10', 99),
(55, 'CL 41756 ZZ-TOP / BLACK', 'CL41756', '349.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, noir', '', 'CL_41756-807__3H_.jpg', 6, 14, '2016-08-10', 45),
(56, 'CL 41082/S JOE / HVNA GOLD ', 'CL41082', '399.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'CL_41082_S-3UA__1E_.jpg', 6, 14, '2016-08-10', 99),
(57, 'CE119S CARLINA SQUARED / GOLD', 'CE119S', '309.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, transparente', '', 'CE119S-734.jpg', 6, 15, '2016-08-10', 45),
(58, 'CE3605S / BLUE ', 'CE3605S', '145.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'CE3605S-424.jpg', 6, 15, '2016-08-10', 84),
(59, 'PO8649S / HAVANA ', 'PO8649S', '225.00', 'largeur des verres 49 mm, longueur des branches 140 mm, pont 20 mm, unisexe transparent et bleu.', '', 'PO8649S-24_31.jpg', 6, 13, '2016-10-12', 100),
(60, 'PO8649S / CAFFE\'', 'PO8649S', '225.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 16 mm, couleur café.', '', 'PO8649S-108_4E.jpg', 6, 13, '2017-01-11', 100),
(61, 'PLD 2033/S / HAVANGOLD', 'NHO', '165.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 16 mm', '', 'PLD_2033_S-NHO__RC_.jpg', 6, 9, '2017-01-11', 100),
(62, 'MK2013 POLYNESIA / BLACK BROWN TORTOISE ', 'MK2013', '225.00', 'largeur des verres 56 mm, longueur des branches 145 mm, pont 15 mm , unisexe, noir et marron', '', 'MK2013-306511.jpg', 7, 8, '2017-01-08', 100),
(63, 'MK6003 SALZBURG / BLACK', 'MK6003', '175.00', 'largeur des verres 56 mm, longueur des branches 135, pont 16 mm, gris', '', 'MK6003-300511.jpg', 7, 8, '2016-08-17', 100);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcategories`);

--
-- Index pour la table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`idcommande`),
  ADD KEY `idclient` (`idclient`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `detailscommande`
--
ALTER TABLE `detailscommande`
  ADD PRIMARY KEY (`idproduits`,`idcommandes`),
  ADD KEY `idproduits` (`idproduits`),
  ADD KEY `idcommandes` (`idcommandes`);

--
-- Index pour la table `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`idmarques`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`idproduits`),
  ADD KEY `idcategorie` (`idcategorie`),
  ADD KEY `idmarque` (`idmarque`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `idcategories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `idcommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `marques`
--
ALTER TABLE `marques`
  MODIFY `idmarques` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `idproduits` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`);

--
-- Contraintes pour la table `detailscommande`
--
ALTER TABLE `detailscommande`
  ADD CONSTRAINT `detailsCommande_ibfk_1` FOREIGN KEY (`idproduits`) REFERENCES `produits` (`idproduits`),
  ADD CONSTRAINT `detailsCommande_ibfk_2` FOREIGN KEY (`idcommandes`) REFERENCES `commandes` (`idcommande`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`idcategorie`) REFERENCES `categories` (`idcategories`),
  ADD CONSTRAINT `produits_ibfk_2` FOREIGN KEY (`idmarque`) REFERENCES `marques` (`idmarques`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
