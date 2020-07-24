-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2020 a las 17:00:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cubo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `app` varchar(30) NOT NULL,
  `apm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `app`, `apm`) VALUES
(1, 'Hector', 'Rodea', 'Flores'),
(2, 'Jose', 'Reyes ', 'Perez'),
(3, 'Edgar', 'Zavala', 'Garduño'),
(4, 'Abril', 'Rodea', 'Flores'),
(5, 'Maria Teresa ', 'Flores', 'Valencia'),
(6, 'Daniela', 'Valdez', 'Rodea'),
(7, 'Hector', 'Rodea', 'Serrano'),
(8, 'Gustavo', 'Velazquez', 'Jimenez'),
(9, 'Rafael', 'Martinez', 'Martinez'),
(10, 'Jorde', 'Chavez', 'Ruiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`id`, `fecha`) VALUES
(1, '2020-01-15'),
(2, '2020-02-17'),
(3, '2020-03-03'),
(4, '2020-04-26'),
(5, '2020-05-30'),
(6, '2020-06-27'),
(7, '2020-07-15'),
(8, '2020-08-21'),
(9, '2020-09-20'),
(10, '2020-10-24'),
(11, '2020-11-03'),
(12, '2020-12-14'),
(13, '2020-07-26'),
(14, '2020-11-20'),
(15, '2020-02-17'),
(16, '2020-01-23'),
(17, '2020-01-07'),
(18, '2020-01-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `cantidad`, `precio`) VALUES
(1, 'Coca Cola', 300, 15),
(2, 'Doritos', 150, 12),
(3, 'Chocolates', 100, 5),
(4, 'Mantecadas', 70, 12),
(5, 'Tortillinas', 50, 23),
(6, 'Galletas Marias', 80, 13),
(7, 'Saladitas', 50, 25),
(8, 'Corneto', 30, 27),
(9, 'Mordisko', 20, 19),
(10, 'Leche', 100, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_fecha` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `id_cliente`, `id_fecha`, `id_producto`, `cantidad`) VALUES
(1, 4, 8, 6, 174),
(2, 8, 14, 1, 184),
(3, 8, 14, 10, 186),
(4, 10, 11, 10, 161),
(5, 6, 13, 6, 101),
(6, 7, 14, 5, 71),
(7, 10, 13, 7, 83),
(8, 2, 1, 9, 68),
(9, 10, 6, 8, 5),
(10, 5, 2, 4, 28),
(11, 5, 15, 3, 66),
(12, 1, 13, 4, 18),
(13, 4, 8, 6, 135),
(14, 9, 2, 2, 34),
(15, 1, 7, 7, 139),
(16, 5, 5, 4, 110),
(17, 10, 9, 2, 55),
(18, 7, 5, 2, 148),
(19, 5, 5, 3, 35),
(20, 6, 3, 10, 4),
(21, 2, 2, 10, 89),
(22, 6, 9, 5, 142),
(23, 6, 13, 3, 17),
(24, 5, 11, 4, 75),
(25, 1, 13, 8, 66),
(26, 5, 12, 5, 96),
(27, 7, 15, 9, 47),
(28, 8, 10, 8, 27),
(29, 6, 14, 10, 143),
(30, 10, 12, 9, 55),
(31, 10, 2, 9, 19),
(32, 10, 7, 2, 22),
(33, 1, 9, 3, 99),
(34, 1, 1, 10, 84),
(35, 2, 10, 7, 181),
(36, 10, 6, 4, 177),
(37, 1, 11, 9, 41),
(38, 2, 11, 4, 90),
(39, 4, 7, 8, 43),
(40, 3, 9, 2, 189),
(41, 1, 2, 4, 91),
(42, 3, 4, 1, 75),
(43, 8, 6, 6, 162),
(44, 1, 7, 8, 158),
(45, 3, 6, 5, 52),
(46, 2, 2, 1, 59),
(47, 9, 7, 8, 138),
(48, 1, 10, 6, 143),
(49, 2, 11, 6, 85),
(50, 2, 9, 2, 113),
(51, 2, 3, 9, 128),
(52, 4, 5, 8, 128),
(53, 7, 7, 1, 49),
(54, 6, 13, 10, 125),
(55, 4, 11, 2, 96),
(56, 3, 13, 4, 40),
(57, 3, 10, 6, 9),
(58, 2, 11, 8, 133),
(59, 5, 1, 3, 112),
(60, 7, 11, 1, 100),
(61, 3, 1, 2, 150),
(62, 5, 6, 3, 115),
(63, 5, 15, 10, 3),
(64, 3, 4, 3, 35),
(65, 2, 9, 7, 73),
(66, 9, 11, 2, 110),
(67, 1, 2, 7, 123),
(68, 9, 15, 10, 139),
(69, 6, 2, 8, 120),
(70, 2, 12, 5, 36),
(71, 8, 5, 1, 68),
(72, 10, 7, 6, 170),
(73, 9, 8, 6, 180),
(74, 7, 2, 5, 147),
(75, 6, 12, 2, 97),
(76, 1, 14, 1, 99),
(77, 8, 13, 2, 88),
(78, 2, 14, 3, 36),
(79, 10, 10, 2, 179),
(80, 7, 6, 7, 162),
(81, 3, 2, 6, 77),
(82, 4, 2, 1, 86),
(83, 2, 4, 7, 14),
(84, 6, 9, 4, 38),
(85, 10, 1, 1, 166),
(86, 5, 5, 4, 97),
(87, 8, 15, 6, 14),
(88, 9, 6, 10, 46),
(89, 3, 11, 9, 62),
(90, 6, 2, 5, 132),
(91, 7, 6, 6, 94),
(92, 8, 2, 10, 72),
(93, 1, 10, 6, 10),
(94, 3, 11, 7, 92),
(95, 9, 4, 7, 43),
(96, 3, 2, 3, 73),
(97, 2, 13, 2, 42),
(98, 6, 12, 2, 118),
(99, 3, 2, 5, 69),
(100, 6, 12, 5, 8),
(101, 4, 11, 10, 131),
(102, 7, 7, 2, 63),
(103, 5, 13, 10, 7),
(104, 2, 4, 7, 89),
(105, 9, 14, 3, 56),
(106, 6, 11, 3, 75),
(107, 10, 5, 5, 183),
(108, 7, 6, 5, 149),
(109, 9, 14, 10, 109),
(110, 2, 11, 9, 26),
(111, 1, 1, 6, 189),
(112, 6, 15, 8, 37),
(113, 3, 6, 3, 133),
(114, 4, 7, 9, 87),
(115, 4, 4, 3, 34),
(116, 2, 3, 3, 110),
(117, 3, 12, 5, 70),
(118, 2, 15, 5, 116),
(119, 3, 4, 10, 170),
(120, 2, 8, 1, 14),
(121, 10, 12, 10, 74),
(122, 3, 11, 3, 197),
(123, 3, 10, 2, 169),
(124, 5, 11, 5, 95),
(125, 7, 13, 4, 101),
(126, 1, 5, 1, 69),
(127, 9, 5, 5, 140),
(128, 4, 7, 6, 136),
(129, 9, 6, 2, 70),
(130, 5, 8, 6, 115),
(131, 6, 15, 2, 166),
(132, 1, 15, 5, 7),
(133, 3, 2, 7, 155),
(134, 4, 11, 4, 125),
(135, 6, 10, 4, 25),
(136, 10, 15, 4, 78),
(137, 1, 3, 6, 143),
(138, 2, 9, 9, 122),
(139, 10, 5, 6, 131),
(140, 6, 4, 3, 148),
(141, 10, 7, 8, 144),
(142, 6, 2, 10, 81),
(143, 8, 14, 10, 180),
(144, 3, 8, 9, 28),
(145, 4, 9, 7, 77),
(146, 9, 14, 3, 136),
(147, 2, 6, 1, 150),
(148, 4, 15, 8, 85),
(149, 6, 14, 6, 8),
(150, 2, 1, 1, 20),
(151, 4, 1, 8, 35),
(152, 9, 11, 8, 21),
(153, 9, 15, 1, 84),
(154, 6, 12, 8, 75),
(155, 5, 2, 8, 5),
(156, 3, 7, 2, 37),
(157, 6, 2, 6, 22),
(158, 4, 9, 1, 8),
(159, 8, 12, 2, 128),
(160, 10, 10, 6, 71),
(161, 5, 12, 3, 96),
(162, 3, 3, 1, 139),
(163, 10, 10, 3, 67),
(164, 5, 7, 7, 85),
(165, 4, 6, 4, 198),
(166, 3, 13, 1, 155),
(167, 10, 5, 3, 106),
(168, 9, 6, 4, 157),
(169, 6, 15, 9, 119),
(170, 5, 8, 9, 84),
(171, 3, 14, 4, 20),
(172, 5, 4, 2, 115),
(173, 8, 12, 4, 61),
(174, 8, 5, 5, 84),
(175, 10, 10, 3, 81),
(176, 6, 6, 4, 68),
(177, 7, 12, 9, 42),
(178, 7, 9, 8, 178),
(179, 2, 8, 9, 133),
(180, 9, 7, 4, 88),
(181, 8, 3, 4, 42),
(182, 4, 14, 1, 155),
(183, 5, 14, 5, 37),
(184, 5, 8, 1, 185),
(185, 7, 4, 2, 60),
(186, 5, 4, 2, 106),
(187, 4, 9, 4, 27),
(188, 5, 13, 7, 25),
(189, 9, 7, 8, 81),
(190, 9, 4, 9, 4),
(191, 8, 14, 10, 156),
(192, 2, 1, 2, 22),
(193, 6, 12, 5, 52),
(194, 9, 6, 8, 174),
(195, 8, 10, 4, 104),
(196, 2, 11, 2, 199),
(197, 8, 9, 7, 111),
(198, 9, 4, 3, 186),
(199, 8, 1, 2, 154),
(200, 6, 1, 2, 87),
(201, 7, 1, 5, 78),
(202, 3, 14, 1, 172),
(203, 6, 9, 10, 40),
(204, 4, 4, 5, 103),
(205, 10, 8, 7, 153),
(206, 1, 1, 8, 12),
(207, 9, 12, 7, 37),
(208, 5, 8, 4, 75),
(209, 4, 14, 7, 154),
(210, 4, 11, 6, 132),
(211, 4, 13, 7, 44),
(212, 1, 5, 7, 24),
(213, 6, 4, 6, 132),
(214, 5, 9, 2, 85),
(215, 4, 6, 2, 185),
(216, 8, 13, 7, 35),
(217, 3, 1, 3, 129),
(218, 1, 8, 10, 17),
(219, 9, 11, 9, 147),
(220, 10, 5, 3, 58),
(221, 5, 11, 8, 103),
(222, 2, 8, 7, 44),
(223, 8, 15, 6, 108),
(224, 8, 2, 6, 110),
(225, 5, 14, 1, 11),
(226, 5, 9, 7, 150),
(227, 5, 6, 8, 42),
(228, 6, 8, 5, 110),
(229, 3, 3, 2, 149),
(230, 7, 3, 5, 133),
(231, 8, 7, 6, 179),
(232, 9, 4, 6, 89),
(233, 3, 14, 5, 17),
(234, 10, 8, 6, 72),
(235, 5, 4, 8, 164),
(236, 7, 1, 5, 33),
(237, 7, 10, 6, 73),
(238, 3, 8, 10, 144),
(239, 2, 2, 4, 82),
(240, 5, 2, 2, 8),
(241, 10, 2, 7, 41),
(242, 2, 3, 7, 88),
(243, 9, 6, 7, 93),
(244, 1, 11, 6, 145),
(245, 6, 14, 3, 34),
(246, 9, 15, 10, 132),
(247, 5, 11, 10, 190),
(248, 5, 7, 6, 153),
(249, 9, 11, 1, 148),
(250, 9, 13, 2, 16),
(251, 5, 12, 9, 185),
(252, 8, 15, 8, 126),
(253, 2, 9, 9, 1),
(254, 9, 5, 7, 53),
(255, 7, 6, 5, 43),
(256, 6, 11, 3, 75),
(257, 5, 14, 5, 159),
(258, 6, 7, 2, 49),
(259, 10, 10, 8, 195),
(260, 1, 4, 4, 139),
(261, 5, 9, 8, 76),
(262, 1, 14, 6, 107),
(263, 6, 10, 1, 83),
(264, 5, 6, 8, 135),
(265, 10, 3, 10, 81),
(266, 9, 6, 9, 20),
(267, 4, 13, 7, 81),
(268, 7, 13, 9, 106),
(269, 9, 9, 6, 115),
(270, 3, 8, 7, 69),
(271, 7, 12, 2, 59),
(272, 10, 7, 8, 39),
(273, 8, 15, 7, 63),
(274, 4, 9, 1, 111),
(275, 9, 3, 1, 101),
(276, 7, 15, 7, 120),
(277, 3, 7, 5, 18),
(278, 3, 11, 6, 115),
(279, 2, 2, 7, 12),
(280, 9, 4, 2, 8),
(281, 8, 9, 4, 197),
(282, 1, 6, 10, 100),
(283, 10, 9, 5, 86),
(284, 6, 9, 9, 32),
(285, 8, 2, 10, 200),
(286, 2, 14, 5, 107),
(287, 1, 4, 1, 101),
(288, 4, 3, 10, 103),
(289, 10, 6, 1, 86),
(290, 4, 3, 9, 121),
(291, 5, 4, 1, 34),
(292, 3, 6, 4, 102),
(293, 7, 9, 7, 138),
(294, 8, 13, 3, 128),
(295, 8, 10, 6, 118),
(296, 9, 1, 5, 125),
(297, 6, 5, 7, 35),
(298, 10, 15, 10, 39),
(299, 3, 15, 4, 5),
(300, 2, 4, 3, 81),
(301, 5, 8, 1, 159),
(302, 2, 1, 2, 105),
(303, 4, 2, 6, 64),
(304, 8, 1, 5, 13),
(305, 6, 3, 5, 174),
(306, 3, 8, 10, 141),
(307, 10, 13, 7, 51),
(308, 7, 2, 2, 72),
(309, 6, 12, 10, 16),
(310, 9, 8, 8, 16),
(311, 7, 13, 3, 148),
(312, 6, 2, 10, 66),
(313, 1, 4, 5, 52),
(314, 6, 11, 1, 30),
(315, 2, 2, 5, 113),
(316, 2, 8, 3, 161),
(317, 2, 7, 8, 13),
(318, 6, 10, 5, 190),
(319, 4, 2, 3, 145),
(320, 2, 3, 6, 162),
(321, 8, 8, 7, 189),
(322, 1, 8, 8, 56),
(323, 4, 9, 4, 41),
(324, 8, 10, 7, 42),
(325, 1, 12, 5, 59),
(326, 5, 15, 2, 179),
(327, 9, 12, 5, 191),
(328, 4, 7, 10, 12),
(329, 3, 7, 8, 146),
(330, 7, 7, 1, 100),
(331, 6, 3, 10, 37),
(332, 8, 5, 6, 164),
(333, 6, 8, 6, 4),
(334, 2, 6, 8, 174),
(335, 5, 11, 5, 147),
(336, 7, 5, 5, 192),
(337, 8, 2, 7, 2),
(338, 1, 5, 5, 67),
(339, 4, 5, 4, 30),
(340, 10, 5, 8, 123),
(341, 4, 9, 2, 101),
(342, 9, 6, 7, 48),
(343, 6, 13, 3, 127),
(344, 10, 15, 10, 198),
(345, 2, 15, 5, 4),
(346, 2, 5, 3, 159),
(347, 3, 11, 6, 3),
(348, 7, 12, 7, 15),
(349, 6, 2, 9, 91),
(350, 2, 2, 7, 132),
(351, 1, 5, 10, 88),
(352, 7, 11, 8, 113),
(353, 7, 5, 10, 183),
(354, 10, 14, 3, 124),
(355, 3, 6, 6, 14),
(356, 10, 12, 2, 152),
(357, 4, 10, 10, 92),
(358, 1, 15, 7, 121),
(359, 7, 11, 5, 93),
(360, 4, 10, 8, 45),
(361, 6, 8, 7, 70),
(362, 7, 13, 5, 79),
(363, 2, 8, 1, 181),
(364, 3, 2, 1, 52),
(365, 1, 6, 1, 158),
(366, 8, 4, 4, 171),
(367, 9, 15, 4, 147),
(368, 4, 6, 4, 14),
(369, 3, 1, 7, 168),
(370, 3, 11, 10, 67),
(371, 9, 6, 6, 104),
(372, 8, 1, 1, 64),
(373, 1, 14, 6, 57),
(374, 9, 2, 9, 108),
(375, 9, 4, 2, 63),
(376, 6, 8, 8, 176),
(377, 7, 14, 7, 35),
(378, 8, 1, 10, 94),
(379, 8, 2, 4, 44),
(380, 10, 10, 1, 84),
(381, 9, 13, 5, 4),
(382, 8, 1, 9, 44),
(383, 5, 2, 7, 91),
(384, 4, 11, 10, 92),
(385, 1, 5, 4, 148),
(386, 9, 15, 2, 183),
(387, 8, 5, 2, 151),
(388, 10, 9, 2, 44),
(389, 7, 9, 2, 80),
(390, 6, 4, 2, 87),
(391, 5, 12, 9, 165),
(392, 8, 11, 10, 172),
(393, 5, 4, 3, 88),
(394, 2, 13, 7, 111),
(395, 7, 4, 9, 181),
(396, 4, 1, 10, 147),
(397, 4, 9, 8, 81),
(398, 3, 3, 1, 76),
(399, 1, 8, 3, 188),
(400, 10, 5, 4, 139),
(401, 3, 8, 3, 170),
(402, 6, 12, 5, 165),
(403, 5, 10, 1, 82),
(404, 5, 6, 1, 83),
(405, 5, 5, 3, 12),
(406, 7, 8, 8, 140),
(407, 3, 6, 6, 90),
(408, 2, 5, 5, 68),
(409, 3, 6, 10, 42),
(410, 5, 1, 5, 14),
(411, 9, 1, 6, 21),
(412, 9, 7, 10, 190),
(413, 10, 12, 2, 173),
(414, 5, 11, 7, 113),
(415, 4, 10, 5, 64),
(416, 5, 1, 7, 81),
(417, 7, 6, 10, 66),
(418, 4, 14, 1, 113),
(419, 10, 11, 6, 44),
(420, 8, 2, 6, 172),
(421, 6, 9, 4, 110),
(422, 8, 2, 6, 43),
(423, 8, 11, 1, 105),
(424, 10, 4, 8, 11),
(425, 2, 8, 7, 96),
(426, 5, 9, 10, 137),
(427, 9, 12, 2, 163),
(428, 9, 3, 10, 37),
(429, 4, 6, 5, 80),
(430, 3, 6, 6, 67),
(431, 5, 14, 4, 182),
(432, 5, 4, 5, 79),
(433, 4, 10, 7, 99),
(434, 8, 2, 1, 65),
(435, 4, 10, 10, 1),
(436, 7, 6, 4, 110),
(437, 5, 9, 6, 6),
(438, 4, 6, 9, 120),
(439, 4, 8, 1, 88),
(440, 1, 2, 8, 141),
(441, 4, 2, 1, 134),
(442, 4, 15, 8, 81),
(443, 10, 1, 9, 18),
(444, 9, 12, 8, 45),
(445, 10, 6, 10, 163),
(446, 1, 5, 5, 2),
(447, 3, 10, 8, 188),
(448, 5, 11, 7, 46),
(449, 5, 10, 7, 183),
(450, 8, 6, 7, 30),
(451, 2, 6, 8, 77),
(452, 10, 12, 5, 4),
(453, 7, 9, 10, 24),
(454, 9, 14, 8, 36),
(455, 2, 14, 6, 142),
(456, 5, 1, 5, 77),
(457, 5, 7, 9, 126),
(458, 8, 9, 4, 19),
(459, 1, 1, 2, 84),
(460, 5, 9, 3, 163),
(461, 4, 14, 4, 149),
(462, 9, 6, 2, 79),
(463, 8, 10, 3, 194),
(464, 3, 12, 5, 159),
(465, 5, 5, 10, 10),
(466, 3, 2, 8, 21),
(467, 9, 7, 5, 80),
(468, 6, 13, 5, 149),
(469, 5, 2, 6, 58),
(470, 5, 1, 4, 15),
(471, 7, 11, 4, 199),
(472, 7, 4, 10, 161),
(473, 1, 10, 3, 100),
(474, 4, 5, 1, 183),
(475, 3, 9, 6, 69),
(476, 1, 9, 7, 188),
(477, 7, 15, 6, 133),
(478, 9, 7, 2, 11),
(479, 7, 15, 1, 153),
(480, 7, 1, 5, 171),
(481, 2, 9, 10, 66),
(482, 2, 10, 7, 22),
(483, 7, 5, 5, 190),
(484, 3, 5, 9, 73),
(485, 8, 11, 9, 121),
(486, 3, 15, 9, 87),
(487, 1, 5, 5, 145),
(488, 1, 10, 7, 142),
(489, 6, 6, 1, 152),
(490, 4, 9, 5, 189),
(491, 4, 8, 3, 147),
(492, 10, 12, 5, 94),
(493, 2, 6, 3, 173),
(494, 10, 10, 5, 70),
(495, 1, 13, 10, 105),
(496, 6, 11, 1, 81),
(497, 1, 5, 1, 22),
(498, 3, 12, 1, 150),
(499, 1, 1, 7, 191),
(500, 9, 1, 2, 182),
(501, 1, 12, 5, 107),
(502, 3, 14, 8, 136),
(503, 5, 13, 6, 161),
(504, 2, 9, 9, 156),
(505, 4, 5, 4, 18),
(506, 10, 6, 2, 133),
(507, 10, 15, 10, 55),
(508, 5, 12, 1, 182),
(509, 1, 7, 9, 64),
(510, 7, 1, 3, 172),
(511, 9, 1, 1, 158),
(512, 4, 10, 7, 95),
(513, 5, 6, 9, 113),
(514, 2, 14, 1, 110),
(515, 6, 4, 5, 99),
(516, 7, 1, 2, 127),
(517, 7, 10, 9, 143),
(518, 2, 11, 7, 93),
(519, 5, 5, 7, 71),
(520, 9, 10, 5, 197),
(521, 7, 3, 1, 162),
(522, 1, 6, 9, 197),
(523, 7, 4, 7, 198),
(524, 7, 5, 4, 122),
(525, 8, 6, 1, 150),
(526, 10, 1, 10, 6),
(527, 2, 3, 3, 8),
(528, 2, 12, 5, 106),
(529, 2, 15, 4, 197),
(530, 10, 1, 10, 65),
(531, 2, 9, 8, 67),
(532, 7, 2, 5, 7),
(533, 8, 1, 4, 174),
(534, 8, 10, 3, 73),
(535, 2, 3, 2, 32),
(536, 8, 3, 2, 94),
(537, 6, 2, 1, 182),
(538, 6, 9, 6, 117),
(539, 6, 10, 7, 120),
(540, 7, 1, 7, 170),
(541, 9, 13, 7, 33),
(542, 6, 6, 1, 83),
(543, 1, 11, 5, 103),
(544, 4, 14, 10, 6),
(545, 1, 12, 8, 55),
(546, 6, 15, 1, 59),
(547, 6, 2, 7, 193),
(548, 10, 8, 7, 136),
(549, 5, 15, 5, 83),
(550, 5, 7, 4, 80),
(551, 7, 11, 6, 161),
(552, 2, 13, 10, 84),
(553, 8, 5, 7, 86),
(554, 5, 4, 9, 152),
(555, 6, 10, 10, 159),
(556, 2, 9, 8, 191),
(557, 5, 5, 1, 102),
(558, 1, 14, 5, 140),
(559, 6, 11, 2, 126),
(560, 6, 10, 2, 89),
(561, 1, 8, 8, 12),
(562, 9, 5, 2, 56),
(563, 9, 10, 2, 179),
(564, 4, 4, 4, 116),
(565, 6, 1, 10, 2),
(566, 4, 4, 7, 179),
(567, 7, 12, 6, 37),
(568, 6, 11, 1, 36),
(569, 3, 4, 9, 171),
(570, 9, 14, 3, 96),
(571, 9, 9, 4, 18),
(572, 3, 13, 4, 27),
(573, 5, 14, 9, 124),
(574, 9, 6, 10, 113),
(575, 1, 15, 8, 22),
(576, 8, 11, 4, 86),
(577, 9, 1, 10, 87),
(578, 3, 6, 9, 111),
(579, 7, 5, 6, 114),
(580, 7, 11, 3, 59),
(581, 10, 4, 8, 180),
(582, 8, 6, 1, 154),
(583, 3, 14, 1, 91),
(584, 7, 13, 2, 62),
(585, 1, 13, 10, 169),
(586, 5, 3, 7, 140),
(587, 5, 2, 1, 96),
(588, 3, 14, 5, 184),
(589, 3, 10, 6, 40),
(590, 10, 9, 10, 160),
(591, 6, 12, 4, 29),
(592, 7, 11, 7, 147),
(593, 9, 4, 4, 161),
(594, 1, 14, 9, 120),
(595, 6, 11, 9, 43),
(596, 7, 6, 4, 61),
(597, 7, 7, 1, 136),
(598, 10, 13, 8, 48),
(599, 10, 13, 10, 191),
(600, 5, 9, 8, 38),
(601, 7, 1, 7, 24),
(602, 1, 15, 5, 103),
(603, 6, 14, 7, 181),
(604, 5, 7, 10, 81),
(605, 6, 6, 4, 177),
(606, 6, 10, 8, 80),
(607, 1, 15, 2, 174),
(608, 7, 4, 3, 11),
(609, 5, 8, 5, 53),
(610, 1, 1, 6, 13),
(611, 1, 11, 10, 104),
(612, 9, 1, 5, 121),
(613, 9, 13, 6, 165),
(614, 2, 14, 2, 121),
(615, 5, 8, 5, 26),
(616, 5, 12, 4, 10),
(617, 6, 12, 7, 156),
(618, 8, 9, 1, 74),
(619, 4, 4, 5, 114),
(620, 10, 15, 6, 29),
(621, 3, 6, 10, 131),
(622, 7, 6, 3, 85),
(623, 6, 1, 10, 82),
(624, 6, 11, 10, 125),
(625, 3, 7, 8, 7),
(626, 10, 5, 10, 161),
(627, 7, 4, 5, 51),
(628, 2, 12, 3, 48),
(629, 2, 13, 8, 15),
(630, 2, 1, 8, 186),
(631, 7, 1, 1, 3),
(632, 5, 9, 4, 49),
(633, 10, 1, 8, 59),
(634, 10, 2, 6, 140),
(635, 10, 4, 10, 188),
(636, 5, 13, 10, 177),
(637, 3, 2, 1, 22),
(638, 9, 4, 1, 103),
(639, 4, 3, 6, 102),
(640, 5, 7, 7, 157),
(641, 10, 2, 1, 77),
(642, 2, 2, 8, 18),
(643, 10, 13, 7, 21),
(644, 6, 4, 8, 116),
(645, 10, 6, 4, 63),
(646, 3, 14, 4, 165),
(647, 4, 8, 7, 190),
(648, 6, 5, 8, 107),
(649, 2, 6, 4, 169),
(650, 2, 13, 9, 71),
(651, 2, 12, 9, 97),
(652, 7, 3, 5, 173),
(653, 1, 7, 10, 183),
(654, 5, 9, 7, 116),
(655, 7, 9, 2, 25),
(656, 2, 9, 7, 34),
(657, 7, 8, 9, 19),
(658, 1, 4, 8, 129),
(659, 4, 14, 3, 174),
(660, 4, 3, 9, 45),
(661, 5, 2, 3, 65),
(662, 8, 10, 9, 126),
(663, 1, 15, 8, 129),
(664, 3, 11, 4, 72),
(665, 7, 14, 4, 152),
(666, 2, 4, 3, 139),
(667, 8, 12, 5, 131),
(668, 8, 12, 10, 75),
(669, 6, 3, 3, 105),
(670, 7, 15, 2, 103),
(671, 9, 12, 8, 51),
(672, 10, 15, 9, 83),
(673, 2, 9, 4, 103),
(674, 4, 3, 4, 133),
(675, 6, 13, 3, 67),
(676, 4, 13, 2, 193),
(677, 2, 11, 5, 177),
(678, 8, 14, 7, 12),
(679, 7, 15, 4, 110),
(680, 8, 2, 3, 45),
(681, 6, 15, 7, 27),
(682, 5, 7, 10, 3),
(683, 7, 12, 4, 198),
(684, 7, 8, 1, 53),
(685, 2, 2, 2, 85),
(686, 7, 10, 1, 127),
(687, 9, 13, 6, 152),
(688, 8, 12, 7, 49),
(689, 7, 8, 6, 170),
(690, 2, 15, 6, 185),
(691, 1, 3, 7, 20),
(692, 3, 15, 1, 56),
(693, 5, 5, 6, 29),
(694, 4, 8, 4, 17),
(695, 4, 11, 10, 89),
(696, 2, 11, 10, 159),
(697, 1, 5, 8, 65),
(698, 8, 1, 3, 139),
(699, 4, 7, 4, 49),
(700, 5, 10, 9, 143),
(701, 9, 8, 10, 89),
(702, 2, 10, 1, 113),
(703, 8, 13, 1, 81),
(704, 10, 13, 8, 44),
(705, 10, 2, 6, 11),
(706, 6, 8, 4, 58),
(707, 2, 1, 7, 90),
(708, 3, 13, 5, 106),
(709, 1, 4, 6, 98),
(710, 2, 15, 8, 41),
(711, 4, 2, 8, 67),
(712, 6, 13, 5, 187),
(713, 9, 14, 5, 56),
(714, 4, 14, 3, 55),
(715, 2, 12, 10, 23),
(716, 6, 1, 6, 183),
(717, 5, 10, 10, 4),
(718, 10, 6, 5, 86),
(719, 2, 5, 2, 109),
(720, 5, 4, 8, 138),
(721, 2, 14, 4, 37),
(722, 4, 14, 2, 74),
(723, 10, 2, 7, 83),
(724, 6, 9, 5, 100),
(725, 10, 13, 8, 129),
(726, 9, 12, 6, 17),
(727, 9, 15, 8, 45),
(728, 1, 8, 2, 64),
(729, 10, 15, 10, 142),
(730, 7, 14, 2, 91),
(731, 2, 2, 7, 136),
(732, 1, 10, 1, 157),
(733, 2, 3, 7, 14),
(734, 5, 14, 9, 15),
(735, 2, 11, 4, 2),
(736, 3, 14, 9, 79),
(737, 5, 13, 10, 148),
(738, 7, 6, 9, 95),
(739, 9, 12, 7, 128),
(740, 10, 1, 10, 132),
(741, 5, 9, 3, 8),
(742, 4, 5, 8, 2),
(743, 10, 15, 5, 147),
(744, 4, 2, 9, 130),
(745, 2, 2, 10, 77),
(746, 8, 11, 5, 128),
(747, 8, 3, 10, 197),
(748, 2, 6, 1, 65),
(749, 5, 8, 1, 92),
(750, 7, 6, 6, 116),
(751, 7, 11, 9, 112),
(752, 2, 8, 7, 32),
(753, 9, 6, 1, 157),
(754, 2, 3, 2, 126),
(755, 5, 8, 6, 11),
(756, 6, 14, 9, 86),
(757, 3, 8, 9, 25),
(758, 3, 12, 5, 43),
(759, 9, 13, 4, 6),
(760, 3, 5, 3, 26),
(761, 8, 3, 5, 128),
(762, 10, 11, 5, 189),
(763, 1, 1, 8, 183),
(764, 10, 4, 1, 183),
(765, 8, 9, 6, 138),
(766, 5, 5, 3, 104),
(767, 9, 8, 7, 52),
(768, 5, 2, 3, 104),
(769, 8, 9, 4, 161),
(770, 8, 13, 10, 200),
(771, 8, 7, 6, 4),
(772, 1, 8, 4, 184),
(773, 8, 15, 5, 52),
(774, 1, 12, 9, 135),
(775, 4, 6, 7, 16),
(776, 1, 3, 6, 115),
(777, 10, 11, 4, 30),
(778, 9, 12, 9, 108),
(779, 3, 8, 6, 127),
(780, 1, 9, 6, 194),
(781, 5, 14, 5, 107),
(782, 4, 12, 3, 94),
(783, 10, 9, 5, 100),
(784, 5, 12, 1, 12),
(785, 10, 1, 4, 100),
(786, 8, 13, 2, 17),
(787, 9, 9, 6, 120),
(788, 5, 14, 6, 187),
(789, 9, 2, 10, 39),
(790, 10, 1, 5, 169),
(791, 10, 8, 7, 73),
(792, 7, 7, 3, 46),
(793, 1, 2, 8, 55),
(794, 10, 8, 9, 175),
(795, 10, 3, 7, 90),
(796, 7, 2, 9, 180),
(797, 1, 9, 6, 104),
(798, 3, 2, 10, 183),
(799, 4, 2, 10, 83),
(800, 9, 4, 9, 63),
(801, 9, 6, 3, 141),
(802, 5, 8, 2, 73),
(803, 7, 14, 7, 86),
(804, 8, 8, 1, 139),
(805, 7, 7, 7, 178),
(806, 3, 12, 9, 61),
(807, 5, 4, 3, 187),
(808, 10, 9, 5, 193),
(809, 3, 12, 1, 75),
(810, 7, 13, 5, 149),
(811, 9, 13, 1, 130),
(812, 3, 10, 5, 113),
(813, 5, 8, 4, 137),
(814, 10, 2, 5, 127),
(815, 7, 8, 9, 69),
(816, 5, 10, 7, 188),
(817, 3, 9, 7, 16),
(818, 10, 7, 6, 109),
(819, 4, 8, 6, 66),
(820, 10, 5, 7, 78),
(821, 9, 10, 8, 45),
(822, 4, 10, 8, 73),
(823, 5, 3, 10, 171),
(824, 6, 8, 1, 100),
(825, 6, 11, 7, 124),
(826, 5, 10, 4, 99),
(827, 9, 6, 5, 79),
(828, 9, 5, 7, 159),
(829, 4, 5, 8, 84),
(830, 9, 8, 7, 50),
(831, 9, 12, 1, 169),
(832, 3, 12, 4, 54),
(833, 4, 14, 6, 23),
(834, 2, 12, 1, 91),
(835, 10, 3, 2, 101),
(836, 6, 4, 6, 22),
(837, 4, 2, 3, 140),
(838, 5, 5, 7, 185),
(839, 1, 4, 9, 33),
(840, 9, 3, 1, 129),
(841, 1, 8, 6, 38),
(842, 3, 1, 6, 188),
(843, 4, 5, 2, 111),
(844, 10, 13, 9, 126),
(845, 6, 6, 6, 181),
(846, 10, 15, 4, 5),
(847, 8, 3, 10, 106),
(848, 7, 7, 5, 162),
(849, 9, 13, 8, 81),
(850, 3, 12, 2, 37),
(851, 1, 13, 2, 26),
(852, 3, 4, 7, 89),
(853, 7, 6, 6, 66),
(854, 8, 9, 8, 106),
(855, 1, 7, 3, 74),
(856, 7, 2, 6, 190),
(857, 6, 13, 4, 16),
(858, 3, 11, 2, 199),
(859, 4, 4, 6, 146),
(860, 6, 8, 4, 3),
(861, 7, 5, 10, 55),
(862, 10, 7, 9, 18),
(863, 4, 8, 9, 79),
(864, 10, 7, 2, 100),
(865, 8, 15, 6, 135),
(866, 8, 5, 4, 48),
(867, 1, 7, 8, 80),
(868, 4, 1, 10, 103),
(869, 2, 8, 5, 29),
(870, 2, 11, 1, 54),
(871, 6, 1, 2, 102),
(872, 5, 2, 7, 28),
(873, 1, 15, 4, 186),
(874, 3, 11, 6, 107),
(875, 7, 2, 5, 38),
(876, 1, 14, 2, 89),
(877, 9, 13, 8, 135),
(878, 5, 2, 3, 67),
(879, 3, 5, 10, 174),
(880, 6, 4, 1, 28),
(881, 6, 15, 7, 36),
(882, 3, 6, 7, 27),
(883, 1, 7, 6, 111),
(884, 1, 11, 3, 87),
(885, 7, 12, 5, 75),
(886, 9, 4, 9, 135),
(887, 9, 6, 1, 193),
(888, 2, 15, 10, 57),
(889, 9, 15, 6, 31),
(890, 2, 4, 9, 34),
(891, 7, 3, 10, 144),
(892, 1, 10, 10, 48),
(893, 10, 5, 8, 159),
(894, 6, 11, 6, 134),
(895, 5, 3, 7, 54),
(896, 6, 8, 5, 56),
(897, 3, 3, 1, 62),
(898, 8, 9, 10, 118),
(899, 8, 9, 8, 143),
(900, 1, 5, 6, 83),
(901, 2, 11, 8, 136),
(902, 5, 13, 4, 98),
(903, 4, 1, 10, 81),
(904, 4, 4, 1, 61),
(905, 7, 10, 6, 32),
(906, 10, 6, 6, 41),
(907, 9, 12, 6, 163),
(908, 3, 6, 4, 125),
(909, 5, 15, 7, 142),
(910, 8, 10, 4, 192),
(911, 5, 2, 9, 21),
(912, 5, 15, 3, 10),
(913, 5, 3, 3, 188),
(914, 1, 11, 3, 174),
(915, 5, 3, 10, 190),
(916, 2, 3, 10, 104),
(917, 7, 8, 9, 39),
(918, 9, 13, 1, 151),
(919, 2, 8, 5, 191),
(920, 9, 8, 2, 44),
(921, 1, 4, 8, 107),
(922, 9, 13, 9, 87),
(923, 1, 7, 3, 29),
(924, 9, 6, 1, 117),
(925, 7, 2, 1, 1),
(926, 10, 6, 8, 84),
(927, 6, 9, 4, 13),
(928, 9, 7, 1, 122),
(929, 1, 12, 10, 32),
(930, 10, 5, 7, 196),
(931, 2, 15, 9, 26),
(932, 5, 8, 8, 143),
(933, 9, 3, 10, 80),
(934, 8, 13, 1, 63),
(935, 10, 14, 7, 42),
(936, 4, 1, 7, 14),
(937, 1, 4, 2, 109),
(938, 8, 6, 1, 160),
(939, 5, 2, 10, 22),
(940, 10, 4, 1, 198),
(941, 1, 14, 9, 63),
(942, 1, 9, 7, 68),
(943, 1, 3, 10, 88),
(944, 5, 2, 4, 44),
(945, 3, 8, 6, 55),
(946, 5, 4, 3, 189),
(947, 6, 5, 1, 106),
(948, 4, 9, 9, 79),
(949, 7, 3, 4, 15),
(950, 10, 10, 4, 152),
(951, 9, 3, 6, 75),
(952, 9, 5, 2, 11),
(953, 8, 1, 9, 146),
(954, 6, 12, 9, 161),
(955, 5, 12, 3, 161),
(956, 4, 5, 6, 110),
(957, 4, 5, 7, 77),
(958, 5, 2, 10, 198),
(959, 5, 9, 7, 76),
(960, 1, 1, 5, 65),
(961, 9, 4, 3, 171),
(962, 5, 14, 6, 131),
(963, 8, 10, 9, 58),
(964, 9, 5, 7, 77),
(965, 3, 8, 5, 159),
(966, 1, 9, 10, 85),
(967, 4, 15, 10, 60),
(968, 4, 10, 2, 179),
(969, 4, 8, 10, 88),
(970, 5, 4, 8, 82),
(971, 9, 13, 4, 132),
(972, 1, 15, 10, 92),
(973, 10, 11, 1, 187),
(974, 1, 3, 5, 120),
(975, 6, 15, 9, 163),
(976, 9, 5, 6, 174),
(977, 3, 4, 3, 100),
(978, 2, 13, 6, 91),
(979, 7, 14, 7, 73),
(980, 2, 2, 10, 80),
(981, 4, 10, 8, 70),
(982, 7, 4, 7, 173),
(983, 3, 15, 9, 87),
(984, 4, 12, 6, 161),
(985, 6, 1, 5, 16),
(986, 9, 11, 9, 46),
(987, 7, 14, 7, 93),
(988, 2, 9, 8, 161),
(989, 5, 3, 4, 1),
(990, 8, 1, 4, 1),
(991, 5, 3, 7, 56),
(992, 3, 4, 2, 198),
(993, 1, 11, 1, 131),
(994, 3, 3, 4, 74),
(995, 1, 9, 5, 130),
(996, 6, 5, 10, 23),
(997, 3, 8, 3, 32),
(998, 1, 6, 5, 158),
(999, 10, 6, 8, 25),
(1000, 2, 5, 2, 5),
(1001, 2, 1, 5, 78),
(1002, 7, 7, 1, 5),
(1003, 1, 11, 7, 146),
(1004, 5, 8, 7, 16),
(1005, 2, 9, 8, 27),
(1006, 8, 1, 6, 54),
(1007, 6, 1, 6, 48),
(1008, 1, 8, 7, 62),
(1009, 7, 14, 5, 1),
(1010, 6, 7, 10, 166),
(1011, 4, 7, 1, 114),
(1012, 1, 6, 9, 176),
(1013, 2, 7, 4, 102),
(1014, 5, 12, 1, 181),
(1015, 1, 3, 7, 155),
(1016, 3, 6, 5, 43),
(1017, 4, 14, 9, 28),
(1018, 3, 11, 3, 91),
(1019, 8, 3, 6, 154),
(1020, 4, 11, 5, 31),
(1021, 6, 5, 10, 40),
(1022, 1, 3, 5, 66),
(1023, 4, 11, 4, 155),
(1024, 4, 15, 2, 52),
(1025, 1, 14, 2, 194),
(1026, 5, 3, 2, 160),
(1027, 7, 12, 1, 124),
(1028, 5, 13, 1, 60),
(1029, 8, 3, 1, 154),
(1030, 1, 7, 3, 167),
(1031, 7, 10, 3, 42),
(1032, 7, 14, 9, 20),
(1033, 1, 1, 7, 200),
(1034, 3, 8, 8, 199),
(1035, 5, 10, 10, 152),
(1036, 3, 10, 3, 44),
(1037, 4, 12, 1, 173),
(1038, 3, 14, 1, 6),
(1039, 10, 1, 7, 120),
(1040, 1, 13, 4, 189),
(1041, 1, 11, 2, 190),
(1042, 1, 7, 8, 143),
(1043, 10, 9, 1, 28),
(1044, 8, 4, 3, 99),
(1045, 9, 7, 5, 179),
(1046, 8, 12, 9, 117),
(1047, 5, 9, 2, 138),
(1048, 5, 13, 1, 102),
(1049, 4, 9, 3, 169),
(1050, 6, 9, 5, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `fecha`
--
ALTER TABLE `fecha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1051;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
