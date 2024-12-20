-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Dic 20, 2024 alle 07:46
-- Versione del server: 8.2.0
-- Versione PHP: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bridge`
--
CREATE DATABASE IF NOT EXISTS `bridge` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bridge`;

-- --------------------------------------------------------

--
-- Struttura della tabella `accessi`
--

CREATE TABLE `accessi` (
  `username` varchar(50) NOT NULL,
  `cod_fis` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `accessi`
--

INSERT INTO `accessi` (`username`, `cod_fis`) VALUES
('Carroarmando', 'lrircr07b05e388i'),
('giuseppe_rossi', 'rssgpp94a01h501k'),
('RossoMalpelo', 'vrggvn02e03e388i');

-- --------------------------------------------------------

--
-- Struttura della tabella `annunciaziende`
--

CREATE TABLE `annunciaziende` (
  `id` int NOT NULL,
  `smart_working` tinyint(1) NOT NULL,
  `mattina` tinyint(1) NOT NULL,
  `pomeriggio` tinyint(1) NOT NULL,
  `notte` tinyint(1) NOT NULL,
  `part_time` tinyint(1) NOT NULL,
  `cod_fis` varchar(16) DEFAULT NULL,
  `iva` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `annunciaziende`
--

INSERT INTO `annunciaziende` (`id`, `smart_working`, `mattina`, `pomeriggio`, `notte`, `part_time`, `cod_fis`, `iva`) VALUES
(1, 1, 1, 1, 1, 1, 'vrggvn02e03e388i', '57946927170');

-- --------------------------------------------------------

--
-- Struttura della tabella `annuncipcto`
--

CREATE TABLE `annuncipcto` (
  `id` int NOT NULL,
  `part_time` tinyint(1) NOT NULL,
  `cod_fis` varchar(16) DEFAULT NULL,
  `iva` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `annuncitirocinio`
--

CREATE TABLE `annuncitirocinio` (
  `id` int NOT NULL,
  `part_time` tinyint(1) NOT NULL,
  `cod_fis` varchar(16) DEFAULT NULL,
  `iva` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `annunciutenti`
--

CREATE TABLE `annunciutenti` (
  `id` int NOT NULL,
  `raggio` int DEFAULT NULL,
  `smart_working` tinyint(1) NOT NULL,
  `mattina` tinyint(1) NOT NULL,
  `pomeriggio` tinyint(1) NOT NULL,
  `notte` tinyint(1) NOT NULL,
  `part_time` tinyint(1) NOT NULL,
  `cod_fis` varchar(16) NOT NULL,
  `iva` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `annunciutenti`
--

INSERT INTO `annunciutenti` (`id`, `raggio`, `smart_working`, `mattina`, `pomeriggio`, `notte`, `part_time`, `cod_fis`, `iva`) VALUES
(1, 999999999, 1, 1, 1, 1, 1, 'lrircr07b05e388i', '57946927170');

-- --------------------------------------------------------

--
-- Struttura della tabella `aziende`
--

CREATE TABLE `aziende` (
  `iva` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cap` int NOT NULL,
  `citta` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cod_fis` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `aziende`
--

INSERT INTO `aziende` (`iva`, `nome`, `cap`, `citta`, `provincia`, `cod_fis`) VALUES
('57946927170', 'Bridge', 60030, 'Jesi', 'AN', 'rssgpp94a01h501k');

-- --------------------------------------------------------

--
-- Struttura della tabella `credenziali`
--

CREATE TABLE `credenziali` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `credenziali`
--

INSERT INTO `credenziali` (`username`, `email`, `password`) VALUES
('Carroarmando', 'ilaririccardo@example.com', 'mypass123'),
('giuseppe_rossi', 'giuseppe.rossi@example.com', 'hashed_password_123'),
('RossoMalpelo', 'malpelo@example.com', 'Malpelito');

-- --------------------------------------------------------

--
-- Struttura della tabella `propone`
--

CREATE TABLE `propone` (
  `id_annuncio` int NOT NULL,
  `nome_ruolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `qualifiche`
--

CREATE TABLE `qualifiche` (
  `cod_fis` varchar(16) NOT NULL,
  `nome_ruolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `qualifiche`
--

INSERT INTO `qualifiche` (`cod_fis`, `nome_ruolo`) VALUES
('lrircr07b05e388i', 'programmatore'),
('lrircr07b05e388i', 'project manager'),
('lrircr07b05e388i', 'sistemista');

-- --------------------------------------------------------

--
-- Struttura della tabella `richiede`
--

CREATE TABLE `richiede` (
  `id_annuncio` int NOT NULL,
  `nome_ruolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `ruoli`
--

CREATE TABLE `ruoli` (
  `nome` varchar(50) NOT NULL,
  `descrizione` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `ruoli`
--

INSERT INTO `ruoli` (`nome`, `descrizione`) VALUES
('programmatore', 'programmatore'),
('project manager', 'project manager'),
('sistemista', 'sistemista');

-- --------------------------------------------------------

--
-- Struttura della tabella `scuole`
--

CREATE TABLE `scuole` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cap` int NOT NULL,
  `citta` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cod_fis` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `studi`
--

CREATE TABLE `studi` (
  `id_scuola` int NOT NULL,
  `cod_fis` varchar(16) NOT NULL,
  `anno` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `cod_fis` varchar(16) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `data_nascita` date NOT NULL,
  `cap` int NOT NULL,
  `citta` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`cod_fis`, `nome`, `cognome`, `data_nascita`, `cap`, `citta`, `provincia`) VALUES
('lrircr07b05e388i', 'Riccardo', 'Ilari', '2007-02-05', 60030, 'Jesi', 'AN'),
('rssgpp94a01h501k', 'Giuseppe', 'Rossi', '1994-01-01', 10100, 'Torino', 'TO'),
('vrggvn02e03e388i', 'Giovanni', 'Verga', '2002-05-03', 60030, 'Jesi', 'AN');

-- --------------------------------------------------------

--
-- Struttura della tabella `visionepcto`
--

CREATE TABLE `visionepcto` (
  `id_annuncio_pcto` int NOT NULL,
  `cod_fis` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `visionetirocinio`
--

CREATE TABLE `visionetirocinio` (
  `id_annuncio_tirocinio` int NOT NULL,
  `cod_fis` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `accessi`
--
ALTER TABLE `accessi`
  ADD PRIMARY KEY (`username`,`cod_fis`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- Indici per le tabelle `annunciaziende`
--
ALTER TABLE `annunciaziende`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_fis` (`cod_fis`),
  ADD KEY `iva` (`iva`);

--
-- Indici per le tabelle `annuncipcto`
--
ALTER TABLE `annuncipcto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_fis` (`cod_fis`),
  ADD KEY `iva` (`iva`);

--
-- Indici per le tabelle `annuncitirocinio`
--
ALTER TABLE `annuncitirocinio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iva` (`iva`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- Indici per le tabelle `annunciutenti`
--
ALTER TABLE `annunciutenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_fis` (`cod_fis`),
  ADD KEY `iva` (`iva`);

--
-- Indici per le tabelle `aziende`
--
ALTER TABLE `aziende`
  ADD PRIMARY KEY (`iva`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- Indici per le tabelle `credenziali`
--
ALTER TABLE `credenziali`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `propone`
--
ALTER TABLE `propone`
  ADD PRIMARY KEY (`id_annuncio`,`nome_ruolo`),
  ADD KEY `nome_ruolo` (`nome_ruolo`);

--
-- Indici per le tabelle `qualifiche`
--
ALTER TABLE `qualifiche`
  ADD PRIMARY KEY (`cod_fis`,`nome_ruolo`),
  ADD KEY `nome_ruolo` (`nome_ruolo`);

--
-- Indici per le tabelle `richiede`
--
ALTER TABLE `richiede`
  ADD PRIMARY KEY (`id_annuncio`,`nome_ruolo`),
  ADD KEY `nome_ruolo` (`nome_ruolo`);

--
-- Indici per le tabelle `ruoli`
--
ALTER TABLE `ruoli`
  ADD PRIMARY KEY (`nome`);

--
-- Indici per le tabelle `scuole`
--
ALTER TABLE `scuole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- Indici per le tabelle `studi`
--
ALTER TABLE `studi`
  ADD PRIMARY KEY (`id_scuola`,`cod_fis`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`cod_fis`);

--
-- Indici per le tabelle `visionepcto`
--
ALTER TABLE `visionepcto`
  ADD PRIMARY KEY (`id_annuncio_pcto`,`cod_fis`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- Indici per le tabelle `visionetirocinio`
--
ALTER TABLE `visionetirocinio`
  ADD PRIMARY KEY (`id_annuncio_tirocinio`,`cod_fis`),
  ADD KEY `cod_fis` (`cod_fis`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `annunciaziende`
--
ALTER TABLE `annunciaziende`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `annuncipcto`
--
ALTER TABLE `annuncipcto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `annuncitirocinio`
--
ALTER TABLE `annuncitirocinio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `annunciutenti`
--
ALTER TABLE `annunciutenti`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `scuole`
--
ALTER TABLE `scuole`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `accessi`
--
ALTER TABLE `accessi`
  ADD CONSTRAINT `accessi_ibfk_1` FOREIGN KEY (`username`) REFERENCES `credenziali` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `accessi_ibfk_2` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `annunciaziende`
--
ALTER TABLE `annunciaziende`
  ADD CONSTRAINT `annunciaziende_ibfk_1` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `annunciaziende_ibfk_2` FOREIGN KEY (`iva`) REFERENCES `aziende` (`iva`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `annuncipcto`
--
ALTER TABLE `annuncipcto`
  ADD CONSTRAINT `annuncipcto_ibfk_1` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `annuncipcto_ibfk_2` FOREIGN KEY (`iva`) REFERENCES `aziende` (`iva`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `annuncitirocinio`
--
ALTER TABLE `annuncitirocinio`
  ADD CONSTRAINT `annuncitirocinio_ibfk_1` FOREIGN KEY (`iva`) REFERENCES `aziende` (`iva`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `annuncitirocinio_ibfk_2` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `annunciutenti`
--
ALTER TABLE `annunciutenti`
  ADD CONSTRAINT `annunciutenti_ibfk_1` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `annunciutenti_ibfk_2` FOREIGN KEY (`iva`) REFERENCES `aziende` (`iva`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `aziende`
--
ALTER TABLE `aziende`
  ADD CONSTRAINT `aziende_ibfk_1` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `propone`
--
ALTER TABLE `propone`
  ADD CONSTRAINT `propone_ibfk_1` FOREIGN KEY (`id_annuncio`) REFERENCES `annunciutenti` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `propone_ibfk_2` FOREIGN KEY (`nome_ruolo`) REFERENCES `ruoli` (`nome`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `qualifiche`
--
ALTER TABLE `qualifiche`
  ADD CONSTRAINT `qualifiche_ibfk_1` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `qualifiche_ibfk_2` FOREIGN KEY (`nome_ruolo`) REFERENCES `ruoli` (`nome`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `richiede`
--
ALTER TABLE `richiede`
  ADD CONSTRAINT `richiede_ibfk_1` FOREIGN KEY (`id_annuncio`) REFERENCES `annunciaziende` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `richiede_ibfk_2` FOREIGN KEY (`nome_ruolo`) REFERENCES `ruoli` (`nome`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `scuole`
--
ALTER TABLE `scuole`
  ADD CONSTRAINT `scuole_ibfk_1` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `studi`
--
ALTER TABLE `studi`
  ADD CONSTRAINT `studi_ibfk_1` FOREIGN KEY (`id_scuola`) REFERENCES `scuole` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `studi_ibfk_2` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `visionepcto`
--
ALTER TABLE `visionepcto`
  ADD CONSTRAINT `visionepcto_ibfk_1` FOREIGN KEY (`id_annuncio_pcto`) REFERENCES `annuncipcto` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `visionepcto_ibfk_2` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `visionetirocinio`
--
ALTER TABLE `visionetirocinio`
  ADD CONSTRAINT `visionetirocinio_ibfk_1` FOREIGN KEY (`id_annuncio_tirocinio`) REFERENCES `annuncitirocinio` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `visionetirocinio_ibfk_2` FOREIGN KEY (`cod_fis`) REFERENCES `utenti` (`cod_fis`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
