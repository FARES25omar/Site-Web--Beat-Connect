-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2024 at 07:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test004`
--

-- --------------------------------------------------------

--
-- Table structure for table `tj_creer_cr`
--

CREATE TABLE `tj_creer_cr` (
  `Id_misc` int NOT NULL,
  `Id_art` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_jouer`
--

CREATE TABLE `tj_jouer` (
  `Id_play` int NOT NULL,
  `Id_amb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_liason`
--

CREATE TABLE `tj_liason` (
  `Id_play` int NOT NULL,
  `Id_misc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_miscap`
--

CREATE TABLE `tj_miscap` (
  `Id_misc` int NOT NULL,
  `Id_genre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_playap`
--

CREATE TABLE `tj_playap` (
  `Id_play` int NOT NULL,
  `Id_genre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_posseder_psdr`
--

CREATE TABLE `tj_posseder_psdr` (
  `Id_misc` int NOT NULL,
  `Id_blum` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_preference_prf`
--

CREATE TABLE `tj_preference_prf` (
  `Id_prsn` int NOT NULL,
  `Id_stmsc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_vote_vt`
--

CREATE TABLE `tj_vote_vt` (
  `Id_prsn` int NOT NULL,
  `Id_misc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_administrateur_ad`
--

CREATE TABLE `t_administrateur_ad` (
  `Id_ad` int NOT NULL,
  `motdepasse` varchar(50) DEFAULT NULL,
  `pseudo_adm` varchar(50) DEFAULT NULL,
  `Id_amb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_album_blum`
--

CREATE TABLE `t_album_blum` (
  `Id_blum` int NOT NULL,
  `nom_album` varchar(50) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_ambiance_amb`
--

CREATE TABLE `t_ambiance_amb` (
  `Id_amb` int NOT NULL,
  `nom_ambiance` varchar(50) DEFAULT NULL,
  `nombre_de_gens` tinyint DEFAULT NULL,
  `duree_evenement` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_artiste_art`
--

CREATE TABLE `t_artiste_art` (
  `Id_art` int NOT NULL,
  `nom_artiste` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_artiste_art`
--

INSERT INTO `t_artiste_art` (`Id_art`, `nom_artiste`) VALUES
(1, 'Dj Sebb'),
(2, 'gamma'),
(3, 'natoxie'),
(4, 'mikado'),
(5, 'kalash'),
(6, 'yu mei'),
(7, 'Harry style'),
(8, 'The weekend'),
(9, 'avicii'),
(10, 'the proclaimers'),
(11, 'major lazer'),
(12, 'daft punk '),
(13, 'missy elliott'),
(14, 'bob marley'),
(15, 'tone and i '),
(16, 'michael jackson '),
(17, 'lil nas x '),
(18, 'ariana grande '),
(19, 'TIF'),
(20, 'damso'),
(21, 'le will'),
(23, 'saf'),
(24, 'soolking '),
(25, 'seraphine noir'),
(26, 'koba lad'),
(27, 'plk'),
(28, 'aqua '),
(29, 'ice spice'),
(30, 'creeds'),
(31, 'eagles');

-- --------------------------------------------------------

--
-- Table structure for table `t_genre_genre`
--

CREATE TABLE `t_genre_genre` (
  `Id_genre` int NOT NULL,
  `nom_genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_genre_genre`
--

INSERT INTO `t_genre_genre` (`Id_genre`, `nom_genre`) VALUES
(1, 'jazz'),
(2, 'classique '),
(3, 'pop'),
(4, 'rock'),
(5, 'metale'),
(6, 'elctro');

-- --------------------------------------------------------

--
-- Table structure for table `t_musique_misc`
--

CREATE TABLE `t_musique_misc` (
  `Id_misc` int NOT NULL,
  `nom_musique` varchar(50) DEFAULT NULL,
  `duree_SC` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_personne_prsn`
--

CREATE TABLE `t_personne_prsn` (
  `Id_prsn` int NOT NULL,
  `age` date DEFAULT NULL,
  `pseudo_prsn` varchar(50) DEFAULT NULL,
  `sexe` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_personne_prsn`
--

INSERT INTO `t_personne_prsn` (`Id_prsn`, `age`, `pseudo_prsn`, `sexe`) VALUES
(1, '2003-10-25', 'fares', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `t_playlist_play`
--

CREATE TABLE `t_playlist_play` (
  `Id_play` int NOT NULL,
  `nom_playlist` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_playlist_play`
--

INSERT INTO `t_playlist_play` (`Id_play`, `nom_playlist`) VALUES
(1, 'Summer'),
(2, 'détente'),
(3, 'Motivation '),
(4, 'Sport'),
(5, 'Romance'),
(6, 'Hit\'s du moment ');

-- --------------------------------------------------------

--
-- Table structure for table `t_style_musical_stmsc`
--

CREATE TABLE `t_style_musical_stmsc` (
  `Id_stmsc` int NOT NULL,
  `genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tj_creer_cr`
--
ALTER TABLE `tj_creer_cr`
  ADD PRIMARY KEY (`Id_misc`,`Id_art`),
  ADD KEY `Id_art` (`Id_art`);

--
-- Indexes for table `tj_jouer`
--
ALTER TABLE `tj_jouer`
  ADD PRIMARY KEY (`Id_play`,`Id_amb`),
  ADD KEY `Id_amb` (`Id_amb`);

--
-- Indexes for table `tj_liason`
--
ALTER TABLE `tj_liason`
  ADD PRIMARY KEY (`Id_play`,`Id_misc`),
  ADD KEY `Id_misc` (`Id_misc`);

--
-- Indexes for table `tj_miscap`
--
ALTER TABLE `tj_miscap`
  ADD PRIMARY KEY (`Id_misc`,`Id_genre`),
  ADD KEY `Id_genre` (`Id_genre`);

--
-- Indexes for table `tj_playap`
--
ALTER TABLE `tj_playap`
  ADD PRIMARY KEY (`Id_play`,`Id_genre`),
  ADD KEY `Id_genre` (`Id_genre`);

--
-- Indexes for table `tj_posseder_psdr`
--
ALTER TABLE `tj_posseder_psdr`
  ADD PRIMARY KEY (`Id_misc`,`Id_blum`),
  ADD KEY `Id_blum` (`Id_blum`);

--
-- Indexes for table `tj_preference_prf`
--
ALTER TABLE `tj_preference_prf`
  ADD PRIMARY KEY (`Id_prsn`,`Id_stmsc`),
  ADD KEY `Id_stmsc` (`Id_stmsc`);

--
-- Indexes for table `tj_vote_vt`
--
ALTER TABLE `tj_vote_vt`
  ADD PRIMARY KEY (`Id_prsn`,`Id_misc`),
  ADD KEY `Id_misc` (`Id_misc`);

--
-- Indexes for table `t_administrateur_ad`
--
ALTER TABLE `t_administrateur_ad`
  ADD PRIMARY KEY (`Id_ad`),
  ADD KEY `Id_amb` (`Id_amb`);

--
-- Indexes for table `t_album_blum`
--
ALTER TABLE `t_album_blum`
  ADD PRIMARY KEY (`Id_blum`);

--
-- Indexes for table `t_ambiance_amb`
--
ALTER TABLE `t_ambiance_amb`
  ADD PRIMARY KEY (`Id_amb`);

--
-- Indexes for table `t_artiste_art`
--
ALTER TABLE `t_artiste_art`
  ADD PRIMARY KEY (`Id_art`);

--
-- Indexes for table `t_genre_genre`
--
ALTER TABLE `t_genre_genre`
  ADD PRIMARY KEY (`Id_genre`);

--
-- Indexes for table `t_musique_misc`
--
ALTER TABLE `t_musique_misc`
  ADD PRIMARY KEY (`Id_misc`);

--
-- Indexes for table `t_personne_prsn`
--
ALTER TABLE `t_personne_prsn`
  ADD PRIMARY KEY (`Id_prsn`);

--
-- Indexes for table `t_playlist_play`
--
ALTER TABLE `t_playlist_play`
  ADD PRIMARY KEY (`Id_play`);

--
-- Indexes for table `t_style_musical_stmsc`
--
ALTER TABLE `t_style_musical_stmsc`
  ADD PRIMARY KEY (`Id_stmsc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_administrateur_ad`
--
ALTER TABLE `t_administrateur_ad`
  MODIFY `Id_ad` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_album_blum`
--
ALTER TABLE `t_album_blum`
  MODIFY `Id_blum` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ambiance_amb`
--
ALTER TABLE `t_ambiance_amb`
  MODIFY `Id_amb` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_artiste_art`
--
ALTER TABLE `t_artiste_art`
  MODIFY `Id_art` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `t_genre_genre`
--
ALTER TABLE `t_genre_genre`
  MODIFY `Id_genre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_musique_misc`
--
ALTER TABLE `t_musique_misc`
  MODIFY `Id_misc` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_personne_prsn`
--
ALTER TABLE `t_personne_prsn`
  MODIFY `Id_prsn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_playlist_play`
--
ALTER TABLE `t_playlist_play`
  MODIFY `Id_play` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_style_musical_stmsc`
--
ALTER TABLE `t_style_musical_stmsc`
  MODIFY `Id_stmsc` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tj_creer_cr`
--
ALTER TABLE `tj_creer_cr`
  ADD CONSTRAINT `tj_creer_cr_ibfk_1` FOREIGN KEY (`Id_art`) REFERENCES `t_artiste_art` (`Id_art`),
  ADD CONSTRAINT `tj_creer_cr_ibfk_2` FOREIGN KEY (`Id_misc`) REFERENCES `t_musique_misc` (`Id_misc`);

--
-- Constraints for table `tj_jouer`
--
ALTER TABLE `tj_jouer`
  ADD CONSTRAINT `tj_jouer_ibfk_1` FOREIGN KEY (`Id_play`) REFERENCES `t_playlist_play` (`Id_play`),
  ADD CONSTRAINT `tj_jouer_ibfk_2` FOREIGN KEY (`Id_amb`) REFERENCES `t_ambiance_amb` (`Id_amb`);

--
-- Constraints for table `tj_liason`
--
ALTER TABLE `tj_liason`
  ADD CONSTRAINT `tj_liason_ibfk_1` FOREIGN KEY (`Id_play`) REFERENCES `t_playlist_play` (`Id_play`),
  ADD CONSTRAINT `tj_liason_ibfk_2` FOREIGN KEY (`Id_misc`) REFERENCES `t_musique_misc` (`Id_misc`);

--
-- Constraints for table `tj_miscap`
--
ALTER TABLE `tj_miscap`
  ADD CONSTRAINT `tj_miscap_ibfk_1` FOREIGN KEY (`Id_misc`) REFERENCES `t_musique_misc` (`Id_misc`),
  ADD CONSTRAINT `tj_miscap_ibfk_2` FOREIGN KEY (`Id_genre`) REFERENCES `t_genre_genre` (`Id_genre`);

--
-- Constraints for table `tj_playap`
--
ALTER TABLE `tj_playap`
  ADD CONSTRAINT `tj_playap_ibfk_1` FOREIGN KEY (`Id_genre`) REFERENCES `t_genre_genre` (`Id_genre`),
  ADD CONSTRAINT `tj_playap_ibfk_2` FOREIGN KEY (`Id_play`) REFERENCES `t_playlist_play` (`Id_play`);

--
-- Constraints for table `tj_posseder_psdr`
--
ALTER TABLE `tj_posseder_psdr`
  ADD CONSTRAINT `tj_posseder_psdr_ibfk_1` FOREIGN KEY (`Id_misc`) REFERENCES `t_musique_misc` (`Id_misc`),
  ADD CONSTRAINT `tj_posseder_psdr_ibfk_2` FOREIGN KEY (`Id_blum`) REFERENCES `t_album_blum` (`Id_blum`);

--
-- Constraints for table `tj_preference_prf`
--
ALTER TABLE `tj_preference_prf`
  ADD CONSTRAINT `tj_preference_prf_ibfk_1` FOREIGN KEY (`Id_stmsc`) REFERENCES `t_style_musical_stmsc` (`Id_stmsc`),
  ADD CONSTRAINT `tj_preference_prf_ibfk_2` FOREIGN KEY (`Id_prsn`) REFERENCES `t_personne_prsn` (`Id_prsn`);

--
-- Constraints for table `tj_vote_vt`
--
ALTER TABLE `tj_vote_vt`
  ADD CONSTRAINT `tj_vote_vt_ibfk_1` FOREIGN KEY (`Id_prsn`) REFERENCES `t_personne_prsn` (`Id_prsn`),
  ADD CONSTRAINT `tj_vote_vt_ibfk_2` FOREIGN KEY (`Id_misc`) REFERENCES `t_musique_misc` (`Id_misc`);

--
-- Constraints for table `t_administrateur_ad`
--
ALTER TABLE `t_administrateur_ad`
  ADD CONSTRAINT `t_administrateur_ad_ibfk_1` FOREIGN KEY (`Id_amb`) REFERENCES `t_ambiance_amb` (`Id_amb`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
