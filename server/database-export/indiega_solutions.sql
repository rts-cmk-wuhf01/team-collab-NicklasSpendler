-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 20. 08 2019 kl. 14:57:58
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indiega_solutions`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `contactmessages`
--

CREATE TABLE `contactmessages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(8) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `contactTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `contactmessages`
--

INSERT INTO `contactmessages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `contactTime`) VALUES
(1, 'Daniel', 'dtherkildsen@hotmail.com', 12345678, 'Hej cool site', 'Vildt bror, jeg er så glad for at være her :D', '2019-08-20 13:51:05'),
(2, 'Daniel', 'dtherkildsen@hotmail.com', 12345678, 'Hej cool site', 'Vildt bror, jeg er så glad for at være her :D', '2019-08-20 13:51:41'),
(4, 'Daniel', 'Dtherkildsen@hotmail.com', 13213231, 'Sygt bror', 'Vildt bror', '2019-08-20 14:14:37');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `img` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `releaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `games`
--

INSERT INTO `games` (`id`, `name`, `img`, `price`, `description`, `releaseDate`) VALUES
(1, 'ARK: Survival Evolved', 'ark.jpg', 55, ' Stranded on the shores of a mysterious island, you must learn to survive. Use your cunning to kill or tame the primeval creatures roaming the land, and encounter other players to survive, dominate... and escape. ', '2017-08-27'),
(2, 'Remnant: From the Ashes', 'remnant.jpg', 40, 'The world has been thrown into chaos by an ancient evil from another dimension. As one of the last remnants of humanity, you must set out alone or alongside up to two other survivors to face down hordes of deadly enemies to try to carve a foothold, rebuild, and retake what was lost.', '2019-08-20'),
(3, 'DARQ', 'darq.jpg', 17, 'DARQ tells the story of Lloyd, a boy who becomes aware of the fact that he is dreaming. The dream quickly turns into a nightmare and all attempts to wake up end in failure. Lloyd learns how to survive the nightmare by bending the laws of physics and manipulating the fluid fabric of the dream world.', '2019-08-15'),
(4, 'Crysis 2', 'crysis2.jpg', 20, 'Aliens are decimating New York City, only you have the technology to survive. Be The Weapon.', '2011-03-22'),
(5, 'The Witcher 3', 'the_witcher_3.jpg', 30, 'As war rages on throughout the Northern Realms, you take on the greatest contract of your life — tracking down the Child of Prophecy, a living weapon that can alter the shape of the world.', '2015-05-18'),
(6, 'Assassin\'s Creed Odyssey', 'assassins_creed_odyssey.jpg', 60, 'Choose your fate in Assassin\'s Creed® Odyssey. From outcast to living legend, embark on an odyssey to uncover the secrets of your past and change the fate of Ancient Greece.', '2018-10-05');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `src` varchar(50) NOT NULL,
  `gameFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `src`, `gameFK`) VALUES
(1, 'ark1', 1),
(2, 'ark2', 1),
(3, 'assassinsgreed1', 6),
(4, 'assassinsgreed2', 6),
(5, 'crysis1', 4),
(6, 'crysis2', 4),
(7, 'darq1', 3),
(8, 'darq2', 3),
(9, 'thewitcher1', 5),
(10, 'thewitcher2', 5),
(11, 'remnant1', 2),
(12, 'remnant2', 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `newsposts`
--

CREATE TABLE `newsposts` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `img` varchar(250) NOT NULL,
  `postTime` datetime NOT NULL,
  `fkGame` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `newsposts`
--

INSERT INTO `newsposts` (`id`, `title`, `description`, `img`, `postTime`, `fkGame`) VALUES
(1, 'This Month in Assassin’s Creed – August 2019 Update', 'Players will no longer be able to apply the Sphinx Mane set bonus to other set items.\r\nAddressed several issues with the Rage ability in combat.\r\nAddressed an issue that caused the Call to Arms ability to be locked after Level 81.\r\nAddressed an issue preventing players from using the NPC locking mechanic while Rage is enabled.', 'assassins_creed_odyssey_news1.jpg', '2019-08-06 00:00:00', 6),
(2, 'The Witcher 3 next gen status', 'Built exclusively for next generation hardware, the REDengine 3 renders the world of The Witcher visually nuanced and organic, a real true to life fantasy.\r\nDynamic weather systems and day/night cycles affect how the citizens of the towns and the monsters of the wilds behave.\r\nRich with storyline choices in both main and subplots, this grand open world is influenced by the player unlike ever before.', 'the_witcher_3_news1.jpg', '2019-06-19 00:00:00', 5),
(3, '\'But can it run Crysis?\'—10 years of a PC gaming meme', 'At a time when few games required throwing out your aging PC and starting anew, Crysis ignored the development plateau introduced by consoles and forced everyone to save up for pricey hardware for the first time in a long time. ', 'crysis2_news1.jpg', '2017-11-13 00:00:00', 4),
(4, 'Darq developer reveals why he turned down Epic Store exclusivity', 'The developer of horror-filled puzzle game Darq turned down an Epic Games Store exclusivity deal, he revealed this week, and has called on Epic to allow indie games to sell simultaneously on the store and via Steam.', 'darq_news1.jpg', '2019-08-18 00:00:00', 3),
(5, 'Known Issues - VIP Preview Weekend', 'These are the known issues you may experience in the VIP Preview Weekend build of Remnant: From the Ashes. Our team is aware of these issues and working to resolve them in a future update. Thank you for your patience and understanding. For technical issues, please contact official Arc support.', 'remnant_news1.jpg', '2019-08-15 06:05:38', 2),
(6, 'Community Crunch 194: Genesis, Public Beta, and On The Horizon', 'Last week we introduced a new chapter in the ARK saga: Genesis.  By purchasing the season pass, you obtain a brand new H.L.N.A companion.  Are you enjoying H.L.N.A.\'s company on your adventures?  Genesis will be a brand new experience for old and new players alike.  Check out our live stream if you\'re looking for more details on what to expect! ', 'ark_news1.jpg', '2019-08-12 00:00:00', 1);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gameFK` (`gameFK`);

--
-- Indeks for tabel `newsposts`
--
ALTER TABLE `newsposts`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tilføj AUTO_INCREMENT i tabel `newsposts`
--
ALTER TABLE `newsposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`gameFK`) REFERENCES `games` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
