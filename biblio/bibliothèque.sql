-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:59
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliothèque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `Id_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(40) NOT NULL,
  `Prenom` varchar(40) NOT NULL,
  `Date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `Adresse` varchar(40) NOT NULL,
  `Num_tel` varchar(40) NOT NULL,
  `mail` varchar(40) NOT NULL,
  PRIMARY KEY (`Id_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`Id_Adherent`, `Nom`, `Prenom`, `Date_naissance`, `Date_adhesion`, `Adresse`, `Num_tel`, `mail`) VALUES
(1, 'ALADDIN', 'JASMINE', '0000-00-00', '0000-00-00', '97 avenue des saiyans', '0123456789', 'a.jas@gmail.com'),
(2, 'Son', 'Guko', '0000-00-00', '0000-00-00', '7 rue des Malveillants', '9876543210', 's.guko@gmail.com'),
(3, 'Bard', 'Suuup', '0000-00-00', '0000-00-00', '78 Rue des Sentinels', '9871234560', 'B.suuup@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(40) NOT NULL,
  `Nom` varchar(40) NOT NULL,
  `Prenom` varchar(40) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('BDMM', 'Band', 'manw', '0000-00-00'),
('Eau De Source', 'De Source', 'Eau', '0000-00-00'),
('KNMM', 'Koun', 'wamn', '0000-00-00'),
('NKYD', 'NG KONG YING', 'Davys', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `Id_emprunt` int(11) NOT NULL,
  `Date_emprunt` date NOT NULL,
  `Duree` int(11) NOT NULL,
  `Id_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Reference_livre` varchar(40) NOT NULL,
  PRIMARY KEY (`Id_emprunt`),
  KEY `Id_Adherent` (`Id_Adherent`,`Reference_livre`),
  KEY `Reference_livre` (`Reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`Id_emprunt`, `Date_emprunt`, `Duree`, `Id_Adherent`, `Reference_livre`) VALUES
(1, '0000-00-00', 7, 1, 'D456A416G8AX1EG'),
(2, '0000-00-00', 14, 2, 'FGR7CZHR168ET4G'),
(125478963, '0000-00-00', 7, 1, 'D456A416G8AX1EG'),
(132456789, '0000-00-00', 14, 2, 'FGR7CZHR168ET4G');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Reference_livre` varchar(40) NOT NULL,
  `Nbre_pages` int(11) NOT NULL,
  `ID_Auteur` varchar(40) NOT NULL,
  `Date_publication` date NOT NULL,
  `Genre` varchar(40) NOT NULL,
  `Disponibilité` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(11) NOT NULL,
  `Etat` varchar(40) NOT NULL,
  `Nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `ID_Auteur` (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`Reference_livre`, `Nbre_pages`, `ID_Auteur`, `Date_publication`, `Genre`, `Disponibilité`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`) VALUES
('D456A416G8AX1EG', 100, 'NKYD', '0000-00-00', 'Aventure', 0, 9000, 'NEUF', 1),
('FGR7CZHR168ET4G', 9999, 'Eau De Source', '0000-00-00', 'FICTIONNEL', 0, 745, 'NEUF', 2),
('R7ZCER4G62EGR24', 100, 'KNMM', '0000-00-00', 'LEAGUE OF LEGENDS', 0, 541, 'USE', 3);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`Id_Adherent`) REFERENCES `adherents` (`Id_Adherent`),
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`Reference_livre`) REFERENCES `livres` (`Reference_livre`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`ID_Auteur`) REFERENCES `auteurs` (`ID_Auteur`);
