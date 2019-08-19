-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 11:06 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `img` varchar(256) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(350) NOT NULL,
  `releaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `img`, `price`, `description`, `releaseDate`) VALUES
(1, 'ARK: Survival Evolved', 'ark.jpg', 54.99, ' Stranded on the shores of a mysterious island, you must learn to survive. Use your cunning to kill or tame the primeval creatures roaming the land, and encounter other players to survive, dominate... and escape. ', '2017-08-27'),
(2, 'Remnant: From the Ashes', 'remenant.jpg', 39.99, 'The world has been thrown into chaos by an ancient evil from another dimension. As one of the last remnants of humanity, you must set out alone or alongside up to two other survivors to face down hordes of deadly enemies to try to carve a foothold, rebuild, and retake what was lost.', '2019-08-20'),
(3, 'DARQ', 'darq.jpg', 16.79, 'DARQ tells the story of Lloyd, a boy who becomes aware of the fact that he is dreaming. The dream quickly turns into a nightmare and all attempts to wake up end in failure. Lloyd learns how to survive the nightmare by bending the laws of physics and manipulating the fluid fabric of the dream world.', '2019-08-15'),
(4, 'Crysis 2', 'crysis2.jpg', 19.99, 'Aliens are decimating New York City, only you have the technology to survive. Be The Weapon.', '2011-03-22'),
(5, 'The Witcher 3', 'thewitcher3.jpg', 29.99, 'As war rages on throughout the Northern Realms, you take on the greatest contract of your life — tracking down the Child of Prophecy, a living weapon that can alter the shape of the world.', '2015-05-18'),
(6, 'Assassin\'s Creed Odyssey', 'assassins_creed_odyssey.jpg', 59.99, 'Choose your fate in Assassin\'s Creed® Odyssey. From outcast to living legend, embark on an odyssey to uncover the secrets of your past and change the fate of Ancient Greece.', '2018-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `newsposts`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsposts`
--
ALTER TABLE `newsposts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newsposts`
--
ALTER TABLE `newsposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
