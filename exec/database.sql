-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 19 Novembre 2014 à 21:24
-- Version du serveur :  5.6.21
-- Version de PHP :  5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `Bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `Abonnement`
--

CREATE TABLE IF NOT EXISTS `Abonnement` (
`abo_id` int(6) unsigned NOT NULL,
  `typ_type` varchar(3) NOT NULL,
  `abo_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Abonnement`
--

INSERT INTO `Abonnement` (`abo_id`, `typ_type`, `abo_date`) VALUES
(2, 'ens', '2014-09-03'),
(3, 'ens', '2014-09-04'),
(4, 'doc', '2014-06-01'),
(8, 'etu', '2014-10-20'),
(9, 'etu', '2014-11-04');

-- --------------------------------------------------------

--
-- Structure de la table `Auteur`
--

CREATE TABLE IF NOT EXISTS `Auteur` (
`aut_id` int(6) unsigned NOT NULL,
  `aut_nom` varchar(63) NOT NULL,
  `aut_prenom` varchar(63) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Auteur`
--

INSERT INTO `Auteur` (`aut_id`, `aut_nom`, `aut_prenom`) VALUES
(1, 'Richter', 'Detlev'),
(2, 'Roling', 'J.K.'),
(3, 'Gounelle', 'Laurent'),
(4, 'Lori', 'Nelson'),
(5, 'Kirkman', 'Robert'),
(6, 'Adlard', 'Charlie'),
(7, 'Gaudiano', 'Stefano'),
(8, 'Thilliez', 'Franck'),
(9, 'Tournemaine', 'Jimmy'),
(10, 'Delahaie', 'Pierre'),
(11, 'Tournemaine', 'Jimmy');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE IF NOT EXISTS `Client` (
`cli_id` int(6) unsigned NOT NULL,
  `abo_id` int(6) unsigned DEFAULT NULL,
  `cli_nom` varchar(63) NOT NULL,
  `cli_prenom` varchar(63) NOT NULL,
  `cli_numRue` varchar(5) DEFAULT NULL,
  `cli_rue` varchar(255) DEFAULT NULL,
  `cli_CP` char(5) DEFAULT NULL,
  `cli_ville` varchar(45) DEFAULT NULL,
  `cli_tel` char(14) DEFAULT NULL,
  `cli_mail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Client`
--

INSERT INTO `Client` (`cli_id`, `abo_id`, `cli_nom`, `cli_prenom`, `cli_numRue`, `cli_rue`, `cli_CP`, `cli_ville`, `cli_tel`, `cli_mail`) VALUES
(1, NULL, 'TOURNEMAINE', 'Jimmy', NULL, 'allée des pervenches', '29280', 'Plouzané', NULL, 'jimmy.tournemaine@yahoo.fr'),
(2, NULL, 'SMITH', 'Maxime', '12', 'rue Michel Lareur', '29200', 'Brest', '06 24 33 56 78', 'john.smith@gmail.com'),
(3, 3, 'BIDON', 'Robin', '2096', 'rte du Minou', '29280', 'Plouzané', NULL, 'adressebidon@mailto.fr'),
(4, 4, 'SIMON', 'Gwendal', NULL, NULL, '29200', 'Brest', NULL, 'etiennedu29@hotmail.fr'),
(5, NULL, 'MOREL', 'Romane', NULL, NULL, NULL, NULL, NULL, 'frankymomo@gmail.com'),
(6, NULL, 'MARTIN', 'Manon', '12', 'bd Playmouth', '29200', 'Brest', '06 07 08 05 34', 'manon.martin9@sfr.fr'),
(7, NULL, 'MIOSSEC', 'Adèle', '10', 'rue de Vénus', '29200', 'Brest', NULL, 'adele.mss@hotmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `Editeur`
--

CREATE TABLE IF NOT EXISTS `Editeur` (
`edi_id` int(6) unsigned NOT NULL,
  `edi_nom` varchar(63) NOT NULL,
  `edi_adresse` varchar(255) NOT NULL,
  `edi_tel` char(14) DEFAULT NULL,
  `edi_mail` text
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Editeur`
--

INSERT INTO `Editeur` (`edi_id`, `edi_nom`, `edi_adresse`, `edi_tel`, `edi_mail`) VALUES
(1, 'Gallimard', '21 r. Jean Jaurès, 75000, Paris', '01 45 88 08 43', 'gallimard.editions@gmail.com'),
(2, 'Hachette', '23 bd. Hamilton, 69000, Lyon', '04 88 54 66 77', 'hachettelivres@yahoo.fr'),
(3, 'Actif', '259 av. de Mergueil, 34280, La-Grande-Motte', '04 67 29 04 67', 'info@actif-online.com'),
(4, 'Jorn', '38 r. de la Dysse, 34150, Montpeyroux', '04 67 96 64 79', 'creissac@wanadoo.fr'),
(5, 'Lirabelle', '2 imp. des soucis, 30000, Nimes', '04 66 80 23 65', 'lirabelle-olivierrayme@wanadoo.fr'),
(6, 'Mirmanda', '22 av. de la République, 66270, Le-Soler', NULL, 'info@mirmanda.com'),
(11, 'Tournemaine2', 'bidon', '0647880858', 'jimdeplzou@hotmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `Facture`
--

CREATE TABLE IF NOT EXISTS `Facture` (
`fac_id` int(6) unsigned zerofill NOT NULL,
  `fac_emission` date NOT NULL,
  `fac_livraison` date DEFAULT NULL,
  `cli_id` int(6) unsigned DEFAULT NULL,
  `fac_description` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Facture`
--

INSERT INTO `Facture` (`fac_id`, `fac_emission`, `fac_livraison`, `cli_id`, `fac_description`) VALUES
(000001, '2014-11-12', '2014-11-12', 3, 'test'),
(000002, '2014-11-12', '2014-11-12', 6, 'test deux'),
(000005, '2014-11-12', '2014-11-19', 1, ''),
(000006, '2014-11-12', '2014-11-19', 1, 'Le jour où j''ai appris à vivre'),
(000007, '2014-11-13', '2014-11-20', 2, '\nOuvrage n°7 (ISBN:9782265098695) Angor\nVersion Broché de 2014\nGenre : Polar\nLangue :  Français\nOuvrage n°4 (ISBN:9782366580983) Le jour où j''ai appris à vivre\nVersion Broché de 2014\nGenre : Roman\nLangue :  Français');

-- --------------------------------------------------------

--
-- Structure de la table `Livre`
--

CREATE TABLE IF NOT EXISTS `Livre` (
`lvr_id` int(6) unsigned NOT NULL,
  `ovr_id` int(6) unsigned NOT NULL,
  `edi_id` int(6) unsigned NOT NULL,
  `lvr_prix` decimal(5,2) unsigned NOT NULL,
  `lvr_dateAchat` date DEFAULT NULL,
  `lvr_pointVert` tinyint(1) NOT NULL DEFAULT '0',
  `lvr_dispo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Livre`
--

INSERT INTO `Livre` (`lvr_id`, `ovr_id`, `edi_id`, `lvr_prix`, `lvr_dateAchat`, `lvr_pointVert`, `lvr_dispo`) VALUES
(5, 4, 4, '7.99', '2014-01-16', 0, 0),
(6, 5, 4, '12.99', '2012-11-23', 0, 0),
(8, 7, 1, '4.99', NULL, 1, 0),
(9, 4, 6, '9.99', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Ouvrage`
--

CREATE TABLE IF NOT EXISTS `Ouvrage` (
`ovr_id` int(6) unsigned NOT NULL,
  `ovr_ISBN` char(13) NOT NULL,
  `ovr_titre` varchar(63) NOT NULL,
  `ovr_version` varchar(31) NOT NULL,
  `ovr_langue` varchar(31) DEFAULT NULL,
  `ovr_annee` year(4) NOT NULL,
  `ovr_genre` varchar(31) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Ouvrage`
--

INSERT INTO `Ouvrage` (`ovr_id`, `ovr_ISBN`, `ovr_titre`, `ovr_version`, `ovr_langue`, `ovr_annee`, `ovr_genre`) VALUES
(4, '9782366580983', 'Le jour où j''ai appris à vivre', 'Broché', 'Français', 2014, 'Roman'),
(5, '9782266236799', 'Demain est un autre jour', 'Poche', NULL, 2014, 'Roman'),
(7, '9782265098695', 'Angor', 'Broché', 'Français', 2014, 'Polar'),
(8, '9780123456789', 'Test Java', 'Normale (lol)', 'de Molière', 2014, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `Pret`
--

CREATE TABLE IF NOT EXISTS `Pret` (
`prt_id` int(6) unsigned NOT NULL,
  `lvr_id` int(6) unsigned NOT NULL,
  `cli_id` int(6) unsigned NOT NULL,
  `prt_dateEmprunt` date NOT NULL,
  `prt_emprunte` tinyint(1) NOT NULL DEFAULT '0',
  `prt_dateRetour` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Pret`
--

INSERT INTO `Pret` (`prt_id`, `lvr_id`, `cli_id`, `prt_dateEmprunt`, `prt_emprunte`, `prt_dateRetour`) VALUES
(15, 5, 4, '2003-12-01', 1, '2003-12-20'),
(16, 6, 6, '2003-12-01', 1, '2003-12-20'),
(21, 6, 4, '2014-11-08', 1, '2014-11-22'),
(22, 9, 1, '2014-11-12', 0, '2014-11-12');

-- --------------------------------------------------------

--
-- Structure de la table `TJ_Ecrire`
--

CREATE TABLE IF NOT EXISTS `TJ_Ecrire` (
  `ovr_id` int(6) unsigned NOT NULL,
  `aut_id` int(6) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `TJ_Ecrire`
--

INSERT INTO `TJ_Ecrire` (`ovr_id`, `aut_id`) VALUES
(4, 4),
(5, 4),
(7, 4),
(7, 6),
(4, 8),
(5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `Type_Abonnement`
--

CREATE TABLE IF NOT EXISTS `Type_Abonnement` (
  `typ_type` char(3) NOT NULL,
  `typ_duree` int(11) NOT NULL DEFAULT '31536000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Type_Abonnement`
--

INSERT INTO `Type_Abonnement` (`typ_type`, `typ_duree`) VALUES
('doc', 31536000),
('ens', 31536000),
('etu', 31536000);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Abonnement`
--
ALTER TABLE `Abonnement`
 ADD PRIMARY KEY (`abo_id`), ADD KEY `fk_AboTyp` (`typ_type`);

--
-- Index pour la table `Auteur`
--
ALTER TABLE `Auteur`
 ADD PRIMARY KEY (`aut_id`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
 ADD PRIMARY KEY (`cli_id`), ADD KEY `fk_CliAbo` (`abo_id`);

--
-- Index pour la table `Editeur`
--
ALTER TABLE `Editeur`
 ADD PRIMARY KEY (`edi_id`);

--
-- Index pour la table `Facture`
--
ALTER TABLE `Facture`
 ADD PRIMARY KEY (`fac_id`), ADD KEY `fk_FactureCli` (`cli_id`);

--
-- Index pour la table `Livre`
--
ALTER TABLE `Livre`
 ADD PRIMARY KEY (`lvr_id`), ADD KEY `fk_LvrOvr` (`ovr_id`), ADD KEY `fk_LvrEdi` (`edi_id`);

--
-- Index pour la table `Ouvrage`
--
ALTER TABLE `Ouvrage`
 ADD PRIMARY KEY (`ovr_id`), ADD UNIQUE KEY `ovr_ISBN` (`ovr_ISBN`);

--
-- Index pour la table `Pret`
--
ALTER TABLE `Pret`
 ADD PRIMARY KEY (`prt_id`), ADD KEY `fk_PrtLvr` (`lvr_id`), ADD KEY `fk_PrtCli` (`cli_id`);

--
-- Index pour la table `TJ_Ecrire`
--
ALTER TABLE `TJ_Ecrire`
 ADD PRIMARY KEY (`ovr_id`,`aut_id`), ADD KEY `fk_EcrAut` (`aut_id`);

--
-- Index pour la table `Type_Abonnement`
--
ALTER TABLE `Type_Abonnement`
 ADD PRIMARY KEY (`typ_type`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Abonnement`
--
ALTER TABLE `Abonnement`
MODIFY `abo_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Auteur`
--
ALTER TABLE `Auteur`
MODIFY `aut_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
MODIFY `cli_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Editeur`
--
ALTER TABLE `Editeur`
MODIFY `edi_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `Facture`
--
ALTER TABLE `Facture`
MODIFY `fac_id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Livre`
--
ALTER TABLE `Livre`
MODIFY `lvr_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Ouvrage`
--
ALTER TABLE `Ouvrage`
MODIFY `ovr_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Pret`
--
ALTER TABLE `Pret`
MODIFY `prt_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Abonnement`
--
ALTER TABLE `Abonnement`
ADD CONSTRAINT `fk_AboTyp` FOREIGN KEY (`typ_type`) REFERENCES `Type_Abonnement` (`typ_type`);

--
-- Contraintes pour la table `Client`
--
ALTER TABLE `Client`
ADD CONSTRAINT `fk_CliAbo` FOREIGN KEY (`abo_id`) REFERENCES `Abonnement` (`abo_id`);

--
-- Contraintes pour la table `Facture`
--
ALTER TABLE `Facture`
ADD CONSTRAINT `fk_FactureCli` FOREIGN KEY (`cli_id`) REFERENCES `Client` (`cli_id`);

--
-- Contraintes pour la table `Livre`
--
ALTER TABLE `Livre`
ADD CONSTRAINT `fk_LvrEdi` FOREIGN KEY (`edi_id`) REFERENCES `Editeur` (`edi_id`),
ADD CONSTRAINT `fk_LvrOvr` FOREIGN KEY (`ovr_id`) REFERENCES `Ouvrage` (`ovr_id`);

--
-- Contraintes pour la table `Pret`
--
ALTER TABLE `Pret`
ADD CONSTRAINT `fk_PrtCli` FOREIGN KEY (`cli_id`) REFERENCES `Client` (`cli_id`),
ADD CONSTRAINT `fk_PrtLvr` FOREIGN KEY (`lvr_id`) REFERENCES `Livre` (`lvr_id`);

--
-- Contraintes pour la table `TJ_Ecrire`
--
ALTER TABLE `TJ_Ecrire`
ADD CONSTRAINT `fk_EcrAut` FOREIGN KEY (`aut_id`) REFERENCES `Auteur` (`aut_id`),
ADD CONSTRAINT `fk_EcrOvr` FOREIGN KEY (`ovr_id`) REFERENCES `Ouvrage` (`ovr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
