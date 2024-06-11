-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2024 at 11:34 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet1`
--

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

CREATE TABLE `membres` (
  `idmembres` int(11) NOT NULL,
  `nom` varchar(11) DEFAULT NULL,
  `prenom` varchar(11) DEFAULT NULL,
  `nb_acteur` int(11) DEFAULT NULL,
  `p_presence` int(11) DEFAULT NULL,
  `nb_demande` int(45) DEFAULT NULL,
  `nb_technique` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`idmembres`, `nom`, `prenom`, `nb_acteur`, `p_presence`, `nb_demande`, `nb_technique`) VALUES
(1, 'Durand', 'Alice', 25, 40, 55, 30),
(2, 'Martin', 'Bob', 10, 20, 25, 15),
(3, 'Leroy', 'Charlie', 20, 40, 50, 30),
(4, 'Bernard', 'David', 15, 45, 50, 35),
(5, 'Thomas', 'Eve', 22, 35, 50, 28),
(6, 'Petit', 'Frank', 18, 45, 50, 32),
(7, 'Robert', 'Grace', 12, 32, 40, 28),
(8, 'Richard', 'Hank', 30, 35, 50, 20),
(9, 'Durand', 'Isla', 5, 24, 25, 20),
(10, 'Moreau', 'Jack', 8, 15, 20, 12),
(11, 'Lemoine', 'Kim', 18, 25, 45, 27),
(12, 'Roux', 'Liam', 10, 15, 30, 20),
(13, 'Blanc', 'Nina', 12, 35, 40, 28),
(14, 'Fontaine', 'Oscar', 20, 30, 50, 30),
(15, 'Garnier', 'Paul', 25, 30, 60, 35),
(16, 'Dupuis', 'Quentin', 15, 20, 40, 25),
(17, 'Marin', 'Rachel', 12, 25, 40, 28),
(18, 'Simon', 'Steve', 22, 30, 50, 28),
(19, 'Fournier', 'Tina', 10, 12, 25, 15),
(20, 'Perrin', 'Victor', 20, 32, 40, 20),
(21, 'Leroy', 'Alice', 28, 38, 60, 32),
(22, 'Martin', 'Ben', 12, 22, 30, 18),
(23, 'Gagnon', 'Catherine', 15, 25, 35, 20),
(24, 'Tremblay', 'David', 20, 30, 45, 25),
(25, 'Roy', 'Emma', 18, 28, 40, 22),
(26, 'Leblanc', 'Frank', 25, 35, 55, 30),
(27, 'Fortin', 'Gabrielle', 10, 18, 22, 12),
(28, 'Morin', 'Henry', 22, 32, 50, 28),
(29, 'Caron', 'Isabelle', 30, 38, 55, 25),
(30, 'Gauthier', 'Jack', 8, 10, 20, 15),
(31, 'Pelletier', 'Katherine', 15, 22, 35, 20),
(32, 'Boucher', 'Luc', 25, 35, 55, 30),
(33, 'Lefebvre', 'Mia', 12, 20, 30, 18),
(34, 'Gagne', 'Nathan', 18, 25, 40, 22),
(35, 'Deschamps', 'Olivia', 20, 30, 45, 25),
(36, 'Charette', 'Philip', 28, 38, 60, 32),
(37, 'Beaulieu', 'Quentin', 15, 25, 35, 20),
(38, 'Lapointe', 'Rose', 18, 28, 40, 22),
(39, 'Girard', 'Samuel', 25, 35, 55, 30);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `idrole` int(11) NOT NULL,
  `acteur` tinyint(4) DEFAULT NULL,
  `nom_role` varchar(45) DEFAULT NULL,
  `role_desc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`idrole`, `acteur`, `nom_role`, `role_desc`) VALUES
(1, 1, 'Acteur Principal', 'gfjkdgskbf'),
(2, 0, 'Ingénieur Son', 'hfjdksahf'),
(3, 1, 'Second Rôle', 'ajshdksjah'),
(4, 0, 'Éclairagiste', 'skdfjhskdj'),
(5, 1, 'Figurant', 'wekfjwkejf'),
(6, 0, 'Technicien Lumière', 'aslkdjakdj'),
(7, 1, 'Acteur de Soutien', 'zmxncvbmn'),
(8, 0, 'Régisseur', 'qweqweqwe'),
(9, 1, 'Protagoniste', 'oiuasdklj'),
(10, 0, 'Scénographe', 'mnbvzxcvb'),
(11, 1, 'Acteur Principal', 'gfjkdgskbf'),
(12, 0, 'Ingénieur Son', 'hfjdksahf'),
(13, 1, 'Second Rôle', 'ajshdksjah'),
(14, 0, 'Éclairagiste', 'skdfjhskdj'),
(15, 1, 'Figurant', 'wekfjwkejf'),
(16, 0, 'Technicien Lumière', 'aslkdjakdj'),
(17, 1, 'Acteur de Soutien', 'zmxncvbmn'),
(18, 0, 'Régisseur', 'qweqweqwe'),
(19, 1, 'Protagoniste', 'oiuasdklj'),
(20, 0, 'Scénographe', 'mnbvzxcvb'),
(21, 1, 'Acteur de Théâtre', 'dfgjkdsfgh'),
(22, 0, 'Costumier', 'djkfhwdfjk'),
(23, 1, 'Choriste', 'dsfkjdskfj'),
(24, 0, 'Accessoiriste', 'sdkfjdsjkf'),
(25, 1, 'Doubleur', 'sdkjfhwkej'),
(26, 0, 'Metteur en Scène', 'djskfhwekj'),
(27, 1, 'Narrateur', 'dkjfhwejkh'),
(28, 0, 'Technicien Plateau', 'dsfjkhwekf'),
(29, 1, 'Cascadeur', 'sjdhfkjweh'),
(30, 0, 'Ingénieur Éclairage', 'sdjfhwkejf');

-- --------------------------------------------------------

--
-- Table structure for table `selection`
--

CREATE TABLE `selection` (
  `idselection` int(11) NOT NULL,
  `idrole` int(11) DEFAULT NULL,
  `idmenbres` int(11) DEFAULT NULL,
  `idspectacles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selection`
--

INSERT INTO `selection` (`idselection`, `idrole`, `idmenbres`, `idspectacles`) VALUES
(1, 1, 11, 1),
(2, 2, 4, 1),
(3, 3, 24, 1),
(4, 4, 2, 1),
(5, 5, 15, 1),
(6, 6, 6, 2),
(7, 7, 17, 2),
(8, 8, 8, 2),
(9, 9, 20, 2),
(10, 10, 10, 2),
(11, 11, 3, 3),
(12, 12, 12, 3),
(13, 13, 13, 3),
(14, 14, 14, 3),
(15, 15, 15, 3),
(16, 16, 1, 4),
(17, 17, 17, 4),
(18, 18, 18, 4),
(19, 19, 19, 4),
(20, 20, 20, 4),
(21, 21, 2, 5),
(22, 22, 11, 5),
(23, 23, 12, 5),
(24, 24, 13, 5),
(25, 25, 14, 5),
(26, 26, 3, 6),
(27, 27, 4, 6),
(28, 28, 5, 6),
(29, 29, 6, 6),
(30, 30, 7, 6),
(31, 1, 8, 7),
(32, 2, 9, 7),
(33, 3, 10, 7),
(34, 4, 11, 7),
(35, 5, 12, 7),
(36, 6, 13, 8),
(37, 7, 14, 8),
(38, 8, 15, 8),
(39, 9, 16, 8),
(40, 10, 17, 8),
(41, 11, 18, 9),
(42, 12, 19, 9),
(43, 13, 20, 9),
(44, 14, 1, 9),
(45, 15, 2, 9),
(46, 16, 3, 10),
(47, 17, 4, 10),
(48, 18, 5, 10),
(49, 19, 6, 10),
(50, 20, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `spectacles`
--

CREATE TABLE `spectacles` (
  `idSpectacles` int(11) NOT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `lieux` varchar(100) DEFAULT NULL,
  `nb_rep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spectacles`
--

INSERT INTO `spectacles` (`idSpectacles`, `desc`, `date`, `lieux`, `nb_rep`) VALUES
(1, 'La Tragedie de lhomme commun', '2022-09-15', 'Theatre National', 3),
(2, 'Les Reves de la Nuit', '2020-11-25', 'Centre Culturel', 9),
(3, 'Le Secret du Petit Prince', '2023-03-08', 'Salle des Fetes', 15),
(4, 'Lumiere sur la Scene', '2021-07-12', 'Opera Municipal', 1),
(5, 'LAmour en Chansons', '2024-05-02', 'Palais des Congres', 7),
(6, 'Le Voyage Imaginaire', '2022-02-18', 'Salle Polyvalente', 5),
(7, 'Les Mille et Une Nuits', '2020-10-30', 'Maison de la Culture', 2),
(8, 'Les Amants du Theatre', '2023-09-05', 'Theatre Municipal', 5),
(9, 'Le Grand Spectacle', '2021-12-20', 'Grande Salle', 19),
(10, 'La Magie du Cirque', '2024-03-15', 'Chapiteau en Plein Air', 9),
(11, 'Les Contes Fantastiques', '2022-08-10', 'Chateau', 24),
(12, 'Le Reve Eveille', '2020-06-28', 'Grande Place', 3),
(13, 'La Danse des Etoiles', '2023-11-17', 'Salle de Danse', 9),
(14, 'Les Mysteres du Theatre', '2021-04-05', 'Theatre de Rue', 13),
(15, 'Le Spectacle des Illusions', '2024-09-22', 'Grande Salle des Fetes', 6),
(16, 'Les Voix de la Nature', '2022-12-08', 'Jardin Public', 1),
(17, 'La Fete de la Musique', '2020-07-01', 'Place du Village', 1),
(18, 'Les Arts du Cirque', '2023-05-18', 'Parc Municipal', 4),
(19, 'La Magie de la Scene', '2021-02-14', 'Salle de Spectacle', 2),
(20, 'Le Bal des Etoiles', '2024-10-10', 'Grande Salle de Reception', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`idmembres`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idrole`);

--
-- Indexes for table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`idselection`),
  ADD KEY `fkmembres_selction` (`idmenbres`),
  ADD KEY `fkrole_selction` (`idrole`),
  ADD KEY `fkspectacles_selction` (`idspectacles`);

--
-- Indexes for table `spectacles`
--
ALTER TABLE `spectacles`
  ADD PRIMARY KEY (`idSpectacles`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `selection`
--
ALTER TABLE `selection`
  ADD CONSTRAINT `fkmembres_selction` FOREIGN KEY (`idmenbres`) REFERENCES `membres` (`idmembres`),
  ADD CONSTRAINT `fkrole_selction` FOREIGN KEY (`idrole`) REFERENCES `role` (`idrole`),
  ADD CONSTRAINT `fkspectacles_selction` FOREIGN KEY (`idspectacles`) REFERENCES `spectacles` (`idSpectacles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
