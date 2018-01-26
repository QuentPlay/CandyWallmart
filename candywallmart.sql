-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 26 Janvier 2018 à 13:05
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
(1, 'Glaces', '', 'assets/image/glaces_banner.jpg'),
(2, 'Confiseries', '', 'assets/image/bonbon_banner.jpg'),
(3, 'Gâteaux', '', 'assets/image/gateaux_banner.jpg'),
(4, 'Chocolats', '', 'assets/image/chocolate_banner.jpg');

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

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `email`, `adresse`, `cp`, `ville`, `motdepasse`, `remise`) VALUES
(1, 'dupont', 'valérie', 'dupont@yopmail.com ', '14, rue des myrtilles', '54000', 'nancy', 'test', '0.00'),
(2, 'Muller', 'Serge', 'muller@yopmail.com', '298, avenue du général De Gaules', '24000', 'Périgueux', 'test', '0.00'),
(3, 'Brest', 'Timothé', 'brest@yopmail.com', '47, impasse des ruines', '84260', 'sarrians', 'test', '0.00'),
(4, 'Cosselin', 'Madeline', 'cosse@yopmail.com', '90, rue du Pasteur', '62300', 'lens', 'test', '0.00'),
(12, 'lefebvre', 'pierre', 'nicolaslef53@gmail.com', '5 impasse des chataigniers', '53230', 'astillé', '6f189b00e3f6a409f728a6bd8aca7d65ed7222dc', '0.00'),
(13, 'thekid', 'billy', 'nicolas.lefebvre1010@bbox.fr', '8 rue de la banque', '33220', 'town hall', '5ddd93448ca3b4089a8e77b37a9805ad2361684c', '0.00');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idcommande` int(4) NOT NULL,
  `idclient` int(4) NOT NULL,
  `listcde` text NOT NULL,
  `prixcde` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'Kinder', 'assets/image/Kinder_logo.svg.png'),
(2, 'Haribo', 'assets/image/haribo-logo.jpg'),
(3, 'Milka', 'assets/image/milka.jpg'),
(5, 'Lutti', 'assets/image/lutti.jpg'),
(6, 'Carambar', 'assets/image/Carambar_1.png'),
(7, 'Nestlé', 'assets/image/nestle.jpg'),
(8, 'Toblerone', 'assets/image/toblerone.jpg'),
(9, 'Lu', 'assets/image/lu_logo_1.jpg'),
(10, 'Lotus', 'assets/image/lotus.png'),
(11, 'Magnum', 'assets/image/Logo_Magnum.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `idproduits` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `idcategorie` int(11) NOT NULL,
  `idmarque` int(11) NOT NULL,
  `quantite` int(10) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`idproduits`, `nom`, `prix`, `detail`, `image`, `idcategorie`, `idmarque`, `quantite`) VALUES
(1, 'Kinder Bueno', '1.99', 'll', 'assets/image/bueno.png', 4, 1, 150),
(2, 'Kinder Country', '1.50', '', 'assets/image/country.jpg', 4, 1, 100),
(3, 'Dragibus', '2.99', '', 'assets/image/dragibus.jpg', 2, 2, 65),
(4, 'Pépito', '3.50', '', 'assets/image/pepito.jpg', 3, 9, 99),
(5, 'Magnum ', '4.99', '', 'assets/image/magnum.jpg', 1, 11, 100),
(16, 'Milka chocolat au lait', '2.30', '', 'assets/image/milka_lait.jpg', 4, 3, 100),
(27, 'toblerone blanc', '1.45', '', 'assets/image/toblerone_blanc.jpg', 4, 8, 99),
(28, 'carambar caramel', '2.30', '', 'assets/image/carambar_caramel.jpg', 2, 6, 100),
(29, 'lu napolitain', '3.45', '', 'assets/image/napolitain.jpg', 3, 9, 100),
(30, 'lu pims', '3.35', '', 'assets/image/pims.jpg', 3, 9, 100),
(31, 'lutti flexi fizz', '2.55', '', 'assets/image/flexi_fizz.jpg', 2, 5, 100),
(32, 'lutti arlequin', '2.75', '', 'assets/image/arlequin.jpg', 2, 5, 100),
(33, 'nestle smarties', '2.30', '', 'assets/image/smarties.jpg', 4, 7, 100),
(34, 'nestle tablette smarties', '3.45', '', 'assets/image/smarties_tab.jpeg', 2, 5, 100),
(35, 'nestle kit kat', '3.50', '', 'assets/image/kitkat.png', 3, 7, 100),
(36, 'nestle mars', '3.50', '', 'assets/image/mars.jpg', 3, 7, 100),
(37, 'nestle lion', '3.50', '', 'assets/image/lions.jpg', 3, 7, 100),
(38, 'nestle snickers', '3.50', '', 'assets/image/snickers.png', 3, 7, 100);

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
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idcommande`),
  ADD KEY `idclient` (`idclient`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `idcategories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idcommande` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `marques`
--
ALTER TABLE `marques`
  MODIFY `idmarques` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `idproduits` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`idcategorie`) REFERENCES `categories` (`idcategories`),
  ADD CONSTRAINT `produits_ibfk_2` FOREIGN KEY (`idmarque`) REFERENCES `marques` (`idmarques`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
