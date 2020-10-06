-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 oct. 2020 à 14:59
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `logs`
--

-- --------------------------------------------------------

--
-- Structure de la table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `action` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `loginlogs`
--

INSERT INTO `loginlogs` (`id`, `user`, `action`, `date`) VALUES
(1, 'user@gmail.com ', 'login', '2020-10-04 20:32:11'),
(2, 'admin@gmail.com', 'logout', '2020-10-04 20:32:11');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `loginlogs`
--
ALTER TABLE `loginlogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `loginlogs`
--
ALTER TABLE `loginlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
