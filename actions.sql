-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: sept. 17, 2021 la 07:09 PM
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
-- Structură tabel pentru tabel `actions`
--

CREATE TABLE `actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 = vanzare, 2 = vizita, 3 = like',
  `value` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `time` datetime NOT NULL,
  `prod` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `actions`
--

INSERT INTO `actions` (`id`, `type`, `value`, `time`, `prod`) VALUES
(26, 1, 4, '2021-01-17 17:45:27', 1111),
(27, 2, 1, '2021-01-17 17:45:27', 1111),
(28, 3, 1, '2021-01-17 17:45:27', 1111),
(29, 2, 1, '2021-09-17 17:45:27', 1111),
(30, 2, 1, '2021-09-17 17:45:27', 1111),
(31, 3, 1, '2021-09-17 17:45:27', 1111),
(32, 1, 1, '2021-09-07 17:45:27', 1111),
(33, 1, 4, '2021-09-17 17:45:27', 1111),
(34, 2, 1, '2021-09-07 17:45:27', 1111),
(35, 1, 4, '2021-01-17 17:45:27', 1111),
(36, 2, 1, '2021-01-17 17:45:27', 1111),
(37, 3, 1, '2021-01-17 17:45:27', 1111),
(38, 1, 1, '2021-09-17 18:46:35', 9999),
(39, 1, 1, '2021-09-17 18:46:35', 9999),
(40, 1, 4, '2021-09-17 18:46:35', 9999),
(41, 2, 1, '2021-09-17 18:46:35', 9999),
(42, 3, 1, '2021-09-17 18:46:35', 9999),
(43, 2, 1, '2021-09-17 18:46:35', 9999),
(44, 3, 1, '2021-09-17 18:46:35', 9999),
(45, 1, 2, '2021-09-17 18:46:35', 9999),
(46, 1, 1, '2021-01-17 18:46:35', 9999),
(47, 1, 2, '2021-01-17 18:46:35', 9999),
(48, 2, 1, '2021-01-17 18:46:35', 9999),
(49, 3, 1, '2021-01-17 18:46:35', 9999),
(50, 1, 5, '2021-09-10 18:46:35', 9999),
(51, 2, 1, '2021-09-10 18:46:35', 9999),
(52, 3, 1, '2021-09-10 18:46:35', 9999),
(53, 2, 1, '2021-09-10 18:46:35', 9999),
(54, 3, 1, '2021-09-10 18:46:35', 9999),
(55, 1, 2, '2021-09-17 18:46:35', 9999),
(56, 2, 1, '2021-09-10 18:46:35', 9999),
(57, 1, 3, '2021-01-17 18:46:35', 9999),
(58, 1, 3, '2021-09-17 18:51:55', 2222),
(59, 1, 2, '2021-09-17 18:51:55', 2222),
(60, 2, 1, '2021-09-17 18:51:55', 2222),
(61, 3, 1, '2021-09-17 18:51:55', 2222),
(62, 1, 3, '2021-09-10 18:51:55', 2222),
(63, 2, 1, '2021-09-10 18:51:55', 2222),
(64, 3, 1, '2021-09-10 18:51:55', 2222),
(65, 1, 6, '2021-01-17 18:51:55', 2222),
(66, 2, 1, '2021-01-17 18:51:55', 2222),
(67, 3, 1, '2021-01-17 18:51:55', 2222),
(68, 2, 1, '2021-09-17 18:51:55', 2222),
(69, 1, 3, '2021-09-17 18:51:55', 2222),
(70, 1, 2, '2021-09-17 18:51:55', 2222),
(71, 2, 1, '2021-09-17 18:51:55', 2222),
(72, 3, 1, '2021-09-17 18:51:55', 2222),
(73, 1, 3, '2021-09-10 18:51:55', 2222),
(74, 2, 1, '2021-09-10 18:51:55', 2222),
(75, 3, 1, '2021-09-10 18:51:55', 2222),
(76, 1, 6, '2021-01-17 18:51:55', 2222),
(77, 2, 1, '2021-01-17 18:51:55', 2222),
(78, 3, 1, '2021-01-17 18:51:55', 2222),
(79, 2, 1, '2021-09-17 18:51:55', 2222),
(80, 1, 2, '2021-09-17 18:54:15', 5555),
(81, 1, 3, '2021-09-17 18:54:15', 5555),
(82, 2, 1, '2021-09-17 18:54:15', 5555),
(83, 3, 1, '2021-09-17 18:54:15', 5555),
(84, 2, 1, '2021-09-17 18:54:15', 5555),
(85, 3, 1, '2021-09-17 18:54:15', 5555),
(86, 1, 1, '2021-01-17 18:54:15', 5555),
(87, 1, 7, '2021-01-17 18:54:15', 5555),
(88, 2, 1, '2021-01-17 18:54:15', 5555),
(89, 3, 1, '2021-01-17 18:54:15', 5555),
(90, 1, 4, '2021-09-10 18:54:15', 5555),
(91, 2, 1, '2021-09-10 18:54:15', 5555),
(92, 3, 1, '2021-09-10 18:54:15', 5555),
(93, 1, 1, '2021-09-17 18:54:15', 5555),
(94, 2, 1, '2021-09-10 18:54:15', 5555),
(95, 3, 1, '2021-09-10 18:54:15', 5555),
(96, 1, 2, '2021-09-17 18:54:15', 5555),
(97, 1, 2, '2021-01-17 18:54:15', 5555),
(98, 2, 1, '2021-09-11 18:54:15', 5555),
(99, 3, 1, '2021-09-11 18:54:15', 5555),
(100, 1, 2, '2021-09-17 18:54:15', 5555),
(101, 1, 3, '2021-09-17 18:54:15', 3333),
(102, 2, 1, '2021-09-17 18:54:15', 3333),
(103, 3, 1, '2021-09-17 18:54:15', 3333),
(104, 2, 1, '2021-09-17 18:54:15', 3333),
(105, 3, 1, '2021-09-17 18:54:15', 5555),
(106, 1, 1, '2021-01-17 18:54:15', 5555),
(107, 1, 7, '2021-01-17 18:54:15', 5555),
(108, 2, 1, '2021-01-17 18:54:15', 3333),
(109, 3, 1, '2021-01-17 18:54:15', 3333),
(110, 1, 4, '2021-09-10 18:54:15', 3333),
(111, 2, 1, '2021-09-10 18:54:15', 3333),
(112, 3, 1, '2021-09-10 18:54:15', 3333),
(113, 1, 1, '2021-09-17 18:54:15', 3333),
(114, 2, 1, '2021-09-10 18:54:15', 3333),
(115, 3, 1, '2021-09-10 18:54:15', 3333),
(116, 1, 2, '2021-09-17 18:54:15', 3333),
(117, 1, 2, '2021-01-17 18:54:15', 3333),
(118, 2, 1, '2021-09-11 18:54:15', 3333),
(119, 3, 1, '2021-09-11 18:54:15', 3333),
(120, 2, 1, '2021-09-10 18:54:15', 3333),
(121, 3, 1, '2021-09-10 18:54:15', 3333),
(122, 1, 2, '2021-09-17 18:54:15', 3333),
(123, 1, 2, '2021-01-17 18:54:15', 3333),
(124, 2, 1, '2021-09-11 18:54:15', 3333),
(125, 3, 1, '2021-09-11 18:54:15', 3333),
(126, 1, 2, '2021-09-17 18:54:15', 5555),
(127, 1, 3, '2021-09-17 18:54:15', 4444),
(128, 2, 1, '2021-09-17 18:54:15', 4444),
(129, 3, 1, '2021-09-17 18:54:15', 4444),
(130, 2, 1, '2021-09-17 18:54:15', 4444),
(131, 3, 1, '2021-09-17 18:54:15', 4444),
(132, 1, 1, '2021-01-17 18:54:15', 4444),
(133, 1, 7, '2021-01-17 18:54:15', 4444),
(134, 2, 1, '2021-01-17 18:54:15', 4444),
(135, 3, 1, '2021-01-17 18:54:15', 3333),
(136, 1, 4, '2021-09-10 18:54:15', 4444),
(137, 2, 1, '2021-09-10 18:54:15', 4444),
(138, 3, 1, '2021-09-10 18:54:15', 4444),
(139, 1, 1, '2021-09-17 18:54:15', 4444),
(140, 2, 1, '2021-09-10 18:54:15', 4444),
(141, 3, 1, '2021-09-10 18:54:15', 4444),
(142, 1, 2, '2021-09-17 18:54:15', 4444),
(143, 1, 2, '2021-01-17 18:54:15', 4444),
(144, 2, 1, '2021-09-11 18:54:15', 4444),
(145, 3, 1, '2021-09-11 18:54:15', 4444),
(146, 2, 1, '2021-09-10 18:54:15', 4444),
(147, 3, 1, '2021-09-10 18:54:15', 4444),
(148, 1, 2, '2021-09-17 18:54:15', 4444),
(149, 1, 2, '2021-01-17 18:54:15', 4444),
(150, 2, 1, '2021-09-11 18:54:15', 4444),
(151, 3, 1, '2021-09-11 18:54:15', 4444),
(152, 1, 2, '2021-09-17 18:54:15', 5555),
(153, 1, 3, '2021-09-17 18:54:15', 6666),
(154, 2, 1, '2021-09-17 18:54:15', 6666),
(155, 3, 1, '2021-09-17 18:54:15', 6666),
(156, 2, 1, '2021-09-17 18:54:15', 6666),
(157, 3, 1, '2021-09-17 18:54:15', 6666),
(158, 1, 1, '2021-01-17 18:54:15', 6666),
(159, 1, 7, '2021-01-17 18:54:15', 6666),
(160, 2, 1, '2021-01-17 18:54:15', 6666),
(161, 3, 1, '2021-01-17 18:54:15', 6666),
(162, 1, 4, '2021-09-10 18:54:15', 6666),
(163, 2, 1, '2021-09-10 18:54:15', 6666),
(164, 2, 1, '2021-09-10 18:54:15', 6666),
(165, 3, 1, '2021-09-10 18:54:15', 6666),
(166, 1, 2, '2021-09-17 18:54:15', 6666),
(167, 1, 2, '2021-01-17 18:54:15', 6666),
(168, 2, 1, '2021-09-11 18:54:15', 6666),
(169, 3, 1, '2021-09-11 18:54:15', 6666),
(170, 2, 1, '2021-09-10 18:54:15', 6666),
(171, 3, 1, '2021-09-10 18:54:15', 6666),
(172, 1, 2, '2021-09-17 18:54:15', 5555),
(173, 1, 3, '2021-09-17 18:54:15', 8888),
(174, 2, 1, '2021-09-17 18:54:15', 7777),
(175, 3, 1, '2021-09-17 18:54:15', 8888),
(176, 2, 1, '2021-09-17 18:54:15', 7777),
(177, 3, 1, '2021-09-17 18:54:15', 7777),
(178, 1, 1, '2021-01-17 18:54:15', 7777),
(179, 1, 7, '2021-01-17 18:54:15', 7777),
(180, 2, 1, '2021-01-17 18:54:15', 7777),
(181, 3, 1, '2021-01-17 18:54:15', 7777),
(182, 1, 4, '2021-09-10 18:54:15', 7777),
(183, 2, 1, '2021-09-10 18:54:15', 7777),
(184, 2, 1, '2021-09-10 18:54:15', 8888),
(185, 3, 1, '2021-09-10 18:54:15', 8888),
(186, 1, 4, '2021-09-10 18:54:15', 7777),
(187, 2, 1, '2021-09-10 18:54:15', 7777),
(188, 2, 1, '2021-09-10 18:54:15', 8888),
(189, 3, 1, '2021-09-10 18:54:15', 7777),
(190, 1, 2, '2021-09-17 18:54:15', 7777),
(191, 1, 2, '2021-01-17 18:54:15', 8888),
(192, 2, 1, '2021-09-11 18:54:15', 7777),
(193, 3, 1, '2021-09-11 18:54:15', 7777),
(194, 2, 1, '2021-09-10 18:54:15', 7777),
(195, 3, 1, '2021-09-10 18:54:15', 7777),
(196, 1, 2, '2021-09-17 18:54:15', 5555),
(197, 1, 3, '2021-09-17 18:54:15', 8888),
(198, 2, 1, '2021-09-17 18:54:15', 8888),
(199, 3, 1, '2021-09-17 18:54:15', 8888),
(200, 2, 1, '2021-09-17 18:54:15', 8888),
(201, 3, 1, '2021-09-17 18:54:15', 7777),
(202, 1, 1, '2021-01-17 18:54:15', 8888),
(203, 1, 7, '2021-01-17 18:54:15', 7777),
(204, 2, 1, '2021-01-17 18:54:15', 7777),
(205, 3, 1, '2021-01-17 18:54:15', 8888),
(206, 1, 4, '2021-09-10 18:54:15', 8888),
(207, 2, 1, '2021-09-10 18:54:15', 7777),
(208, 2, 1, '2021-09-10 18:54:15', 8888),
(209, 3, 1, '2021-09-10 18:54:15', 8888),
(210, 1, 4, '2021-09-10 18:54:15', 6666),
(211, 2, 1, '2021-09-10 18:54:15', 6666),
(212, 2, 1, '2021-09-10 18:54:15', 8888),
(213, 3, 1, '2021-09-10 18:54:15', 8888),
(214, 1, 2, '2021-09-17 18:54:15', 2222),
(215, 1, 2, '2021-01-17 18:54:15', 8888),
(216, 2, 1, '2021-09-11 18:54:15', 8888),
(217, 3, 1, '2021-09-11 18:54:15', 7777),
(218, 2, 1, '2021-09-10 18:54:15', 8888),
(219, 3, 1, '2021-09-10 18:54:15', 7777),
(220, 1, 1, '2021-09-17 19:05:06', 1111),
(221, 1, 1, '2021-09-17 19:05:06', 2222),
(222, 1, 1, '2021-09-17 19:05:06', 3333),
(223, 1, 1, '2021-09-17 19:05:06', 4444),
(224, 1, 1, '2021-09-17 19:05:06', 1010),
(225, 1, 1, '2021-09-17 19:05:06', 5555),
(226, 1, 1, '2021-09-17 19:05:06', 6666),
(227, 1, 1, '2021-09-17 19:05:06', 7777),
(228, 1, 1, '2021-09-17 19:05:06', 8888),
(229, 1, 1, '2021-09-17 19:05:06', 9999),
(230, 1, 1, '2021-09-10 19:05:06', 1111),
(231, 1, 1, '2021-09-10 19:05:06', 2222),
(232, 1, 1, '2021-09-10 19:05:06', 3333),
(233, 1, 1, '2021-09-10 19:05:06', 4444),
(234, 1, 1, '2021-09-10 19:05:06', 1010),
(235, 1, 1, '2021-09-10 19:05:06', 5555),
(236, 1, 1, '2021-09-10 19:05:06', 6666),
(237, 1, 1, '2021-09-10 19:05:06', 7777),
(238, 1, 1, '2021-09-10 19:05:06', 8888),
(239, 1, 1, '2021-09-10 19:05:06', 9999),
(240, 1, 1, '2021-09-10 19:05:06', 1111),
(241, 1, 1, '2021-09-10 19:05:06', 2222),
(242, 1, 1, '2021-09-10 19:05:06', 3333),
(243, 1, 1, '2021-09-10 19:05:06', 4444),
(244, 1, 1, '2021-09-10 19:05:06', 1010),
(245, 1, 1, '2021-09-10 19:05:06', 5555),
(246, 1, 1, '2021-09-10 19:05:06', 6666),
(247, 1, 1, '2021-09-10 19:05:06', 7777),
(248, 1, 1, '2021-09-10 19:05:06', 8888),
(249, 1, 1, '2021-09-10 19:05:06', 9999),
(250, 1, 1, '2021-09-10 19:05:06', 1111),
(251, 1, 1, '2021-09-10 19:05:06', 2222),
(252, 1, 1, '2021-09-10 19:05:06', 3333),
(253, 1, 1, '2021-09-10 19:05:06', 4444),
(254, 1, 1, '2021-09-10 19:05:06', 1010),
(255, 1, 1, '2021-09-10 19:05:06', 5555),
(256, 1, 1, '2021-09-10 19:05:06', 6666),
(257, 1, 1, '2021-09-10 19:05:06', 7777),
(258, 1, 1, '2021-09-10 19:05:06', 8888),
(259, 1, 1, '2021-09-10 19:05:06', 9999),
(260, 1, 1, '2021-09-10 19:05:06', 1111),
(261, 1, 1, '2021-09-10 19:05:06', 2222),
(262, 1, 1, '2021-09-10 19:05:06', 3333),
(263, 1, 1, '2021-09-10 19:05:06', 4444),
(264, 1, 1, '2021-09-10 19:05:06', 1010),
(265, 1, 1, '2021-09-10 19:05:06', 5555),
(266, 1, 1, '2021-09-10 19:05:06', 6666),
(267, 1, 1, '2021-09-10 19:05:06', 7777),
(268, 1, 1, '2021-09-10 19:05:06', 8888),
(269, 1, 1, '2021-09-10 19:05:06', 9999);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;