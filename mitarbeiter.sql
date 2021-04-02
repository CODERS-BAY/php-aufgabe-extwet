-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Apr 2021 um 15:30
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mitarbeiter`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `user_username` varchar(20) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `user_rights` varchar(20) NOT NULL,
  `user_photo` text NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pwd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`user_username`, `user_firstname`, `user_lastname`, `user_rights`, `user_photo`, `user_email`, `user_pwd`) VALUES
('Admin', 'Ute', 'Wetscher', 'admin', '', 'wetscher.ute@gmx.at', '827ccb0eea8a706c4c34a16891f84e7b'),
('WalterO', 'Walter', 'Oberk', 'leader', 'test.jpg', 'wer@fjglks.at', 'adcaec3805aa912c0d0b14a81bedb6ff'),
('Wiiiii', 'Waoutj', 'Oberk', 'leader', 'test.jpg', 'wer@fjglks.at', 'bcfa8a783aaf938cdef361634d5f9289');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rights`
--

CREATE TABLE `rights` (
  `rights_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rights`
--

INSERT INTO `rights` (`rights_name`) VALUES
('admin'),
('teamleiter'),
('mitarbeiter');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `team`
--

CREATE TABLE `team` (
  `team_name` varchar(20) NOT NULL,
  `team_color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `team`
--

INSERT INTO `team` (`team_name`, `team_color`) VALUES
('Grafik', 'red'),
('Redaktion', 'yellow'),
('Texter', 'blue');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_list`
--

CREATE TABLE `user_list` (
  `username` varchar(20) NOT NULL,
  `user_pwd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`user_username`);

--
-- Indizes für die Tabelle `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
