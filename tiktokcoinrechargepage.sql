-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 10 juil. 2023 à 01:22
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tiktokcoinrechargepage`
--

-- --------------------------------------------------------

--
-- Structure de la table `custom`
--

DROP TABLE IF EXISTS `custom`;
CREATE TABLE IF NOT EXISTS `custom` (
  `country` varchar(255) NOT NULL,
  `creditCardNumber` varchar(255) NOT NULL,
  `profilImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `custom`
--

INSERT INTO `custom` (`country`, `creditCardNumber`, `profilImage`) VALUES
('France', '567', 'car.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `transactionhistory`
--

DROP TABLE IF EXISTS `transactionhistory`;
CREATE TABLE IF NOT EXISTS `transactionhistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `coins` varchar(10) NOT NULL,
  `price` varchar(255) NOT NULL,
  `paiementMethod` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `transactionhistory`
--

INSERT INTO `transactionhistory` (`id`, `user`, `coins`, `price`, `paiementMethod`, `date`, `status`) VALUES
(1, 'user1', '7000', ' 82.09 ', 'PayPal', '2023-07-10 01:17:36', 'Completed'),
(2, 'user2', '700', '8.29', 'Visa', '2023-07-10 01:17:51', 'Completed'),
(3, 'user3', '3,500', '41.25', 'Visa', '2023-07-10 01:18:07', 'Pending'),
(4, 'user4', '17,500', '205.19', 'PayPal', '2023-07-10 01:18:21', 'Pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
