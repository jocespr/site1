-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 08 Décembre 2022 à 10:21
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('12A', 'jocelin speir', '2004-06-10', 'pas d''info', 694368484, '15 rue de paris', 94000, 'paris ', 'jocelin@gmail.com'),
('13A', 'rémy', '1999-12-24', 'rien', 694756821, '18 rue de paris', 94000, 'paris', 'rémy@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `data_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_clients` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_clients` (`code_clients`,`immatriculation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id_location`, `duree_location`, `data_location`, `prix_location`, `code_clients`, `immatriculation`, `caution`) VALUES
('368B', 72, '2022-12-08', 10000, '12A', '20bbq58', 10000000),
('558B', 48, '2022-12-08', 100000, '13A', '68rien89', 10000000);

-- --------------------------------------------------------

--
-- Structure de la table `réparation`
--

CREATE TABLE IF NOT EXISTS `réparation` (
  `Num_réparation` int(11) NOT NULL,
  `date_réparation` date NOT NULL,
  `duree_réparation` varchar(100) NOT NULL,
  `cout_réparation` varchar(100) NOT NULL,
  `responsables_réparations` varchar(100) NOT NULL,
  `immatriculations` varchar(100) NOT NULL,
  PRIMARY KEY (`Num_réparation`),
  KEY `immatriculations` (`immatriculations`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `réparation`
--

INSERT INTO `réparation` (`Num_réparation`, `date_réparation`, `duree_réparation`, `cout_réparation`, `responsables_réparations`, `immatriculations`) VALUES
(1, '2022-12-16', '24h', '15000', 'entreprise', '68rien89'),
(2, '2022-12-17', '48h', '60000', 'entreprise', '20bbq58');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilomètrage` int(11) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(256) NOT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `kilomètrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('20bbq58', 'audi', 'q3', 0, 'diesel', 'noir', 5, 5, '1000000', 'neuf'),
('68rien89', 'audi', 'q4 e_tron', 0, 'diesel', 'bleu', 5, 5, '10100000000', 'neuf');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`code_clients`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `réparation`
--
ALTER TABLE `réparation`
  ADD CONSTRAINT `r@0pparation_ibfk_1` FOREIGN KEY (`immatriculations`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
