-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018 m. Bal 09 d. 17:09
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duombaze`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(40) CHARACTER SET utf8 NOT NULL,
  `zanras` varchar(30) CHARACTER SET utf8 NOT NULL,
  `rezisierius` text CHARACTER SET utf8 NOT NULL,
  `aktoriai` text CHARACTER SET utf8 NOT NULL,
  `nuoKada` date NOT NULL,
  `trukme` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `films`
--

INSERT INTO `films` (`id`, `pavadinimas`, `zanras`, `rezisierius`, `aktoriai`, `nuoKada`, `trukme`) VALUES
(1, 'Sengire', 'Dokumentika, Lietuviskas', 'Mindaugas Survila', '-', '2018-03-25', 85),
(2, 'OAZE: Zaidimas prasideda', 'Veiksmo, trileris, fantastinis', 'Steven Spielberg', 'Mark Rylance', '2018-03-30', 180),
(3, 'Vaiduokliu zeme', 'Siaubo', 'Pascal Laugier', '-', '2018-03-28', 91),
(6, 'Kapu plesike Lara Croft', 'Veiksmo', 'Roar Uthaug', 'Alicia Vikander', '2018-03-18', 117),
(7, 'Triusis Piteris', 'Animacija, Komedija', 'Will Gluck', '-', '2018-03-25', 95),
(8, 'Titanas ', 'Fantastinis', 'Lennart Ruff', 'Sam Worthington', '2018-04-28', 97),
(9, 'Peledu kalnas', 'Drama, istorinis', 'Audrius Juzenas', '-', '2018-02-18', 135);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
