-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: sept. 17, 2021 la 07:10 PM
-- Versiune server: 10.4.18-MariaDB
-- Versiune PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `amazon_work`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tops`
--

CREATE TABLE `tops` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL COMMENT '1 = vanzare, 2 = vizita, 3 = like',
  `period` tinyint(3) UNSIGNED NOT NULL COMMENT '1 = saptamanal, 2 = lunar, 3 = anual',
  `value` tinyint(4) UNSIGNED NOT NULL,
  `comp` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 = stagnare, 2 = crestere, 3 = scadere',
  `prod` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `tops`
--

INSERT INTO `tops` (`id`, `type`, `period`, `value`, `comp`, `prod`) VALUES
(1, 1, 1, 18, 0, 5555),
(2, 1, 1, 12, 0, 2222),
(3, 1, 1, 10, 0, 1010),
(4, 1, 1, 10, 0, 9999),
(5, 1, 1, 8, 0, 1111),
(6, 1, 1, 8, 0, 3333),
(7, 1, 1, 8, 0, 4444),
(8, 1, 1, 6, 0, 8888),
(9, 1, 1, 5, 0, 6666),
(10, 1, 1, 2, 0, 7777),
(11, 1, 2, 22, 0, 5555),
(12, 1, 2, 19, 0, 1010),
(13, 1, 2, 18, 0, 2222),
(14, 1, 2, 15, 0, 9999),
(15, 1, 2, 13, 0, 6666),
(16, 1, 2, 12, 0, 3333),
(17, 1, 2, 12, 0, 4444),
(18, 1, 2, 10, 0, 1111),
(19, 1, 2, 10, 0, 7777),
(20, 1, 2, 10, 0, 8888),
(21, 1, 3, 40, 0, 5555),
(22, 1, 3, 30, 0, 2222),
(23, 1, 3, 25, 0, 7777),
(24, 1, 3, 24, 0, 4444),
(25, 1, 3, 23, 0, 1010),
(26, 1, 3, 23, 0, 6666),
(27, 1, 3, 21, 0, 9999),
(28, 1, 3, 18, 0, 1111),
(29, 1, 3, 16, 0, 3333),
(30, 1, 3, 15, 0, 8888),
(31, 2, 1, 4, 0, 1010),
(32, 2, 1, 4, 0, 1111),
(33, 2, 1, 4, 0, 2222),
(34, 2, 1, 4, 0, 3333),
(35, 2, 1, 4, 0, 4444),
(36, 2, 1, 3, 0, 5555),
(37, 2, 1, 3, 0, 6666),
(38, 2, 1, 3, 0, 7777),
(39, 2, 1, 3, 0, 8888),
(40, 2, 1, 2, 0, 9999),
(41, 2, 2, 8, 0, 8888),
(42, 2, 2, 7, 0, 1010),
(43, 2, 2, 7, 0, 3333),
(44, 2, 2, 7, 0, 4444),
(45, 2, 2, 7, 0, 6666),
(46, 2, 2, 7, 0, 7777),
(47, 2, 2, 6, 0, 1111),
(48, 2, 2, 6, 0, 2222),
(49, 2, 2, 5, 0, 5555),
(50, 2, 2, 5, 0, 9999),
(51, 2, 3, 9, 0, 7777),
(52, 2, 3, 8, 0, 1010),
(53, 2, 3, 8, 0, 1111),
(54, 2, 3, 8, 0, 2222),
(55, 2, 3, 8, 0, 3333),
(56, 2, 3, 8, 0, 4444),
(57, 2, 3, 8, 0, 6666),
(58, 2, 3, 8, 0, 8888),
(59, 2, 3, 6, 0, 5555),
(60, 2, 3, 6, 0, 9999),
(61, 3, 1, 4, 0, 4444),
(62, 3, 1, 4, 0, 5555),
(63, 3, 1, 4, 0, 7777),
(64, 3, 1, 3, 0, 3333),
(65, 3, 1, 3, 0, 6666),
(66, 3, 1, 2, 0, 1010),
(67, 3, 1, 2, 0, 1111),
(68, 3, 1, 2, 0, 2222),
(69, 3, 1, 2, 0, 8888),
(70, 3, 1, 2, 0, 9999),
(71, 3, 2, 7, 0, 4444),
(72, 3, 2, 7, 0, 7777),
(73, 3, 2, 6, 0, 3333),
(74, 3, 2, 6, 0, 5555),
(75, 3, 2, 5, 0, 6666),
(76, 3, 2, 5, 0, 8888),
(77, 3, 2, 4, 0, 2222),
(78, 3, 2, 4, 0, 9999),
(79, 3, 2, 3, 0, 1010),
(80, 3, 2, 2, 0, 1111),
(81, 3, 3, 8, 0, 3333),
(82, 3, 3, 8, 0, 7777),
(83, 3, 3, 7, 0, 4444),
(84, 3, 3, 7, 0, 5555),
(85, 3, 3, 6, 0, 2222),
(86, 3, 3, 6, 0, 6666),
(87, 3, 3, 6, 0, 8888),
(88, 3, 3, 5, 0, 9999),
(89, 3, 3, 4, 0, 1010),
(90, 3, 3, 4, 0, 1111);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `tops`
--
ALTER TABLE `tops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `tops`
--
ALTER TABLE `tops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
