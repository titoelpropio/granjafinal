-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-05-2017 a las 13:00:51
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `granjon3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimento`
--

CREATE TABLE `alimento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tipo_gallina` tinyint(4) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alimento`
--

INSERT INTO `alimento` (`id`, `nombre`, `tipo`, `tipo_gallina`, `estado`, `deleted_at`) VALUES
(1, 'BALANCEADO', 'PRE', 0, 1, NULL),
(2, 'BALANCEADO', 'J1', 0, 1, NULL),
(3, 'BALANCEADO', 'J2', 0, 1, NULL),
(4, 'BALANCEADO', 'J3', 2, 1, NULL),
(5, 'BALANCEADO', 'G4', 1, 1, NULL),
(6, 'BALANCEADO', 'J2', 1, 1, '2017-05-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `cantidad_caja` int(11) DEFAULT NULL,
  `cantidad_maple` int(11) DEFAULT NULL,
  `cantidad_huevo` int(11) DEFAULT NULL,
  `id_tipo_caja` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `cantidad_caja`, `cantidad_maple`, `cantidad_huevo`, `id_tipo_caja`, `fecha`, `deleted_at`) VALUES
(1, 0, 0, 0, 1, '2017-02-07 14:13:33', NULL),
(2, 0, 0, 0, 2, '2017-02-07 14:16:29', NULL),
(3, 0, 0, 0, 3, '2017-02-07 14:18:06', NULL),
(4, 0, 0, 0, 4, '2017-02-07 14:18:12', NULL),
(5, 0, 0, 0, 5, '2017-02-07 14:18:19', NULL),
(6, 0, 0, 0, 6, '2017-02-07 14:18:22', NULL),
(7, 4, 40, 800, 1, '2017-02-05 14:21:11', NULL),
(8, 17, 170, 5100, 2, '2017-02-05 14:21:16', NULL),
(9, 10, 120, 3600, 3, '2017-02-05 14:21:23', NULL),
(10, 8, 96, 2880, 4, '2017-02-05 14:21:27', NULL),
(11, 3, 36, 1080, 5, '2017-02-05 14:21:31', NULL),
(12, 1, 12, 360, 6, '2017-02-05 14:21:38', NULL),
(13, 4, 40, 800, 1, '2017-02-06 14:32:27', NULL),
(14, 17, 170, 5100, 2, '2017-02-06 14:32:31', NULL),
(15, 11, 132, 3960, 3, '2017-02-06 14:32:38', NULL),
(16, 5, 60, 1800, 4, '2017-02-06 14:32:41', NULL),
(17, 3, 36, 1080, 5, '2017-02-06 14:32:45', NULL),
(18, 2, 20, 400, 1, '2017-02-08 20:49:10', NULL),
(19, 13, 130, 3900, 2, '2017-02-08 20:53:25', NULL),
(20, 8, 96, 2880, 3, '2017-02-08 20:53:40', NULL),
(21, 8, 96, 2880, 4, '2017-02-08 20:53:47', NULL),
(22, 4, 48, 1440, 5, '2017-02-08 20:53:55', NULL),
(23, 2, 20, 400, 1, '2017-02-09 20:13:04', NULL),
(24, 12, 120, 3600, 2, '2017-02-09 20:13:20', NULL),
(25, 7, 84, 2520, 3, '2017-02-09 20:13:27', NULL),
(26, 9, 108, 3240, 4, '2017-02-09 20:13:32', NULL),
(27, 4, 48, 1440, 5, '2017-02-09 20:13:36', NULL),
(28, 1, 12, 360, 6, '2017-02-09 20:13:41', NULL),
(29, 3, 30, 600, 1, '2017-02-10 19:17:48', NULL),
(30, 14, 140, 4200, 2, '2017-02-10 19:18:26', NULL),
(31, 7, 84, 2520, 3, '2017-02-10 19:18:50', NULL),
(32, 10, 120, 3600, 4, '2017-02-10 19:19:00', NULL),
(33, 4, 48, 1440, 5, '2017-02-10 19:19:16', NULL),
(34, 2, 20, 400, 1, '2017-02-11 19:01:08', NULL),
(35, 13, 130, 3900, 2, '2017-02-11 19:01:26', NULL),
(36, 6, 72, 2160, 3, '2017-02-11 19:01:54', NULL),
(37, 9, 108, 3240, 4, '2017-02-11 19:02:05', NULL),
(38, 3, 36, 1080, 5, '2017-02-11 19:02:29', NULL),
(39, 2, 20, 400, 1, '2017-02-12 15:42:52', NULL),
(40, 12, 120, 3600, 2, '2017-02-12 15:43:07', NULL),
(41, 6, 72, 2160, 3, '2017-02-12 15:43:17', NULL),
(42, 8, 96, 2880, 4, '2017-02-12 15:43:25', NULL),
(43, 3, 36, 1080, 5, '2017-02-12 15:43:39', NULL),
(44, 2, 20, 400, 1, '2017-02-13 19:07:33', NULL),
(45, 15, 150, 4500, 2, '2017-02-13 19:07:46', NULL),
(46, 7, 84, 2520, 3, '2017-02-13 19:08:03', NULL),
(47, 11, 132, 3960, 4, '2017-02-13 19:08:14', NULL),
(48, 4, 48, 1440, 5, '2017-02-13 19:08:22', NULL),
(49, 1, 12, 360, 6, '2017-02-13 19:08:32', NULL),
(50, 3, 30, 600, 1, '2017-02-14 18:42:27', NULL),
(51, 13, 130, 3900, 2, '2017-02-14 18:42:42', NULL),
(52, 6, 72, 2160, 3, '2017-02-14 18:42:49', NULL),
(53, 10, 120, 3600, 4, '2017-02-14 18:42:56', NULL),
(54, 3, 36, 1080, 5, '2017-02-14 18:43:04', NULL),
(55, 2, 20, 400, 1, '2017-02-15 19:18:55', NULL),
(56, 13, 130, 3900, 2, '2017-02-15 19:19:41', NULL),
(57, 4, 48, 1440, 3, '2017-02-15 19:20:07', NULL),
(58, 11, 132, 3960, 4, '2017-02-15 19:20:27', NULL),
(59, 3, 36, 1080, 5, '2017-02-15 19:21:04', NULL),
(60, 3, 30, 600, 1, '2017-02-16 21:03:55', NULL),
(61, 11, 110, 3300, 2, '2017-02-16 04:00:00', NULL),
(62, 9, 108, 3240, 3, '2017-02-16 21:04:30', NULL),
(63, 9, 108, 3240, 4, '2017-02-16 21:04:59', NULL),
(64, 4, 48, 1440, 5, '2017-02-16 21:05:12', NULL),
(65, 1, 12, 360, 6, '2017-02-16 21:05:18', NULL),
(66, 2, 20, 400, 1, '2017-02-17 18:35:03', NULL),
(67, 10, 100, 3000, 2, '2017-02-17 04:00:00', NULL),
(68, 9, 108, 3240, 3, '2017-02-17 18:35:33', NULL),
(69, 8, 96, 2880, 4, '2017-02-17 18:35:43', NULL),
(70, 3, 36, 1080, 5, '2017-02-17 18:35:50', NULL),
(71, 3, 30, 600, 1, '2017-02-18 18:40:42', NULL),
(72, 11, 110, 3300, 2, '2017-02-18 04:00:00', NULL),
(73, 9, 108, 3240, 3, '2017-02-18 18:41:15', NULL),
(74, 9, 108, 3240, 4, '2017-02-18 18:41:27', NULL),
(75, 4, 48, 1440, 5, '2017-02-18 18:41:37', NULL),
(76, 2, 20, 400, 1, '2017-02-19 15:47:16', NULL),
(77, 10, 100, 3000, 2, '2017-02-19 04:00:00', NULL),
(78, 9, 108, 3240, 3, '2017-02-19 15:47:38', NULL),
(79, 8, 96, 2880, 4, '2017-02-19 15:47:52', NULL),
(80, 4, 48, 1440, 5, '2017-02-19 15:47:59', NULL),
(81, 1, 12, 360, 6, '2017-02-19 15:48:07', NULL),
(82, 3, 30, 600, 1, '2017-02-20 19:20:09', NULL),
(83, 12, 120, 3600, 2, '2017-02-20 04:00:00', NULL),
(84, 10, 120, 3600, 3, '2017-02-20 19:20:42', NULL),
(85, 8, 96, 2880, 4, '2017-02-20 19:20:54', NULL),
(86, 3, 36, 1080, 5, '2017-02-20 19:21:01', NULL),
(87, 2, 20, 400, 1, '2017-02-21 19:07:15', NULL),
(88, 10, 100, 3000, 2, '2017-02-21 04:00:00', NULL),
(89, 9, 108, 3240, 3, '2017-02-21 19:07:27', NULL),
(90, 9, 108, 3240, 4, '2017-02-21 19:07:36', NULL),
(91, 4, 48, 1440, 5, '2017-02-21 19:07:44', NULL),
(92, 2, 20, 400, 1, '2017-02-22 18:54:38', NULL),
(93, 9, 90, 2700, 2, '2017-02-22 04:00:00', NULL),
(94, 10, 120, 3600, 3, '2017-02-22 18:54:59', NULL),
(95, 9, 108, 3240, 4, '2017-02-22 18:55:07', NULL),
(96, 4, 48, 1440, 5, '2017-02-22 18:55:14', NULL),
(97, 1, 12, 360, 6, '2017-02-22 18:55:21', NULL),
(98, 2, 20, 400, 1, '2017-02-23 21:26:39', NULL),
(99, 9, 90, 2700, 2, '2017-02-23 21:26:45', NULL),
(100, 9, 108, 3240, 3, '2017-02-23 21:26:51', NULL),
(101, 9, 108, 3240, 4, '2017-02-23 21:26:57', NULL),
(102, 5, 60, 1800, 5, '2017-02-23 21:28:51', NULL),
(103, 2, 20, 400, 1, '2017-02-24 19:07:34', NULL),
(104, 9, 90, 2700, 2, '2017-02-24 19:07:52', NULL),
(105, 8, 96, 2880, 3, '2017-02-24 19:08:04', NULL),
(106, 9, 108, 3240, 4, '2017-02-24 19:08:14', NULL),
(107, 4, 48, 1440, 5, '2017-02-24 19:08:22', NULL),
(108, 1, 12, 360, 6, '2017-02-24 19:08:28', NULL),
(109, 2, 20, 400, 1, '2017-02-25 19:01:11', NULL),
(110, 9, 90, 2700, 2, '2017-02-25 19:01:21', NULL),
(111, 9, 108, 3240, 3, '2017-02-25 19:01:34', NULL),
(112, 9, 108, 3240, 4, '2017-02-25 19:01:45', NULL),
(113, 4, 48, 1440, 5, '2017-02-25 19:02:05', NULL),
(114, 3, 30, 600, 1, '2017-02-26 15:54:10', NULL),
(115, 10, 100, 3000, 2, '2017-02-26 15:54:21', NULL),
(116, 8, 96, 2880, 3, '2017-02-26 15:54:31', NULL),
(117, 7, 84, 2520, 4, '2017-02-26 15:54:40', NULL),
(118, 4, 48, 1440, 5, '2017-02-26 15:54:52', NULL),
(119, 1, 12, 360, 6, '2017-02-26 15:55:17', NULL),
(120, 2, 20, 400, 1, '2017-02-27 15:52:24', NULL),
(121, 10, 100, 3000, 2, '2017-02-27 15:52:53', NULL),
(122, 9, 108, 3240, 3, '2017-02-27 15:53:11', NULL),
(123, 8, 96, 2880, 4, '2017-02-27 15:53:35', NULL),
(124, 3, 36, 1080, 5, '2017-02-27 15:54:00', NULL),
(125, 3, 30, 600, 1, '2017-02-28 15:49:36', NULL),
(126, 10, 100, 3000, 2, '2017-02-28 15:49:42', NULL),
(127, 9, 108, 3240, 4, '2017-02-28 15:51:29', NULL),
(128, 9, 108, 3240, 3, '2017-02-28 15:51:44', NULL),
(129, 3, 36, 1080, 5, '2017-02-28 15:53:24', NULL),
(130, 3, 30, 600, 1, '2017-03-01 19:32:16', NULL),
(131, 12, 120, 3600, 2, '2017-03-01 19:32:26', NULL),
(132, 10, 120, 3600, 3, '2017-03-01 19:32:52', NULL),
(133, 8, 96, 2880, 4, '2017-03-01 19:32:59', NULL),
(134, 4, 48, 1440, 5, '2017-03-01 19:33:05', NULL),
(135, 1, 12, 360, 6, '2017-03-01 19:33:11', NULL),
(136, 2, 20, 400, 1, '2017-03-02 19:15:03', NULL),
(137, 11, 110, 3300, 2, '2017-03-02 19:15:12', NULL),
(138, 9, 108, 3240, 3, '2017-03-02 19:15:43', NULL),
(139, 8, 96, 2880, 4, '2017-03-02 19:16:30', NULL),
(140, 3, 36, 1080, 5, '2017-03-02 19:16:47', NULL),
(141, 2, 20, 400, 1, '2017-03-03 18:57:51', NULL),
(142, 9, 90, 2700, 2, '2017-03-03 18:58:01', NULL),
(143, 9, 108, 3240, 3, '2017-03-03 18:58:19', NULL),
(144, 9, 108, 3240, 4, '2017-03-03 18:58:29', NULL),
(145, 5, 60, 1800, 5, '2017-03-03 18:58:43', NULL),
(146, 1, 12, 360, 6, '2017-03-03 18:58:51', NULL),
(147, 2, 20, 400, 1, '2017-03-04 19:01:52', NULL),
(148, 10, 100, 3000, 2, '2017-03-04 19:02:05', NULL),
(149, 9, 108, 3240, 3, '2017-03-04 19:02:17', NULL),
(150, 8, 96, 2880, 4, '2017-03-04 19:02:38', NULL),
(151, 4, 48, 1440, 5, '2017-03-04 19:02:49', NULL),
(152, 1, 12, 360, 6, '2017-03-04 19:02:57', NULL),
(153, 2, 20, 400, 1, '2017-03-05 15:47:06', NULL),
(154, 9, 90, 2700, 2, '2017-03-05 15:47:21', NULL),
(155, 8, 96, 2880, 3, '2017-03-05 15:47:37', NULL),
(156, 8, 96, 2880, 4, '2017-03-05 15:47:47', NULL),
(157, 3, 36, 1080, 5, '2017-03-05 15:47:59', NULL),
(158, 3, 30, 600, 1, '2017-03-06 19:23:54', NULL),
(159, 11, 110, 3300, 2, '2017-03-06 19:24:11', NULL),
(160, 10, 120, 3600, 3, '2017-03-06 19:24:24', NULL),
(161, 9, 108, 3240, 4, '2017-03-06 19:24:34', NULL),
(162, 4, 48, 1440, 5, '2017-03-06 19:24:45', NULL),
(163, 1, 12, 360, 6, '2017-03-06 19:24:52', NULL),
(164, 2, 20, 400, 1, '2017-03-07 19:19:05', NULL),
(165, 11, 110, 3300, 2, '2017-03-07 19:19:28', NULL),
(166, 9, 108, 3240, 3, '2017-03-07 19:19:34', NULL),
(167, 8, 96, 2880, 4, '2017-03-07 19:19:50', NULL),
(168, 4, 48, 1440, 5, '2017-03-07 19:20:01', NULL),
(169, 1, 12, 360, 6, '2017-03-07 19:20:08', NULL),
(170, 2, 20, 400, 1, '2017-03-08 19:50:27', NULL),
(171, 10, 100, 3000, 2, '2017-03-08 19:50:34', NULL),
(172, 9, 108, 3240, 3, '2017-03-08 19:50:41', NULL),
(173, 8, 96, 2880, 4, '2017-03-08 19:50:53', NULL),
(174, 4, 48, 1440, 5, '2017-03-08 19:51:02', NULL),
(175, 1, 12, 360, 6, '2017-03-08 19:51:10', NULL),
(176, 3, 30, 600, 1, '2017-03-09 18:59:47', NULL),
(177, 10, 100, 3000, 2, '2017-03-09 19:00:05', NULL),
(178, 9, 108, 3240, 3, '2017-03-09 19:00:21', NULL),
(179, 9, 108, 3240, 4, '2017-03-09 19:00:32', NULL),
(180, 4, 48, 1440, 5, '2017-03-09 19:00:41', NULL),
(181, 2, 20, 400, 1, '2017-03-10 19:15:34', NULL),
(182, 11, 110, 3300, 2, '2017-03-10 19:15:41', NULL),
(183, 9, 108, 3240, 3, '2017-03-10 19:15:47', NULL),
(184, 8, 96, 2880, 4, '2017-03-10 19:15:52', NULL),
(185, 3, 36, 1080, 5, '2017-03-10 19:15:58', NULL),
(186, 1, 12, 360, 6, '2017-03-10 19:16:03', NULL),
(187, 3, 30, 600, 1, '2017-03-11 18:57:27', NULL),
(188, 11, 110, 3300, 2, '2017-03-11 18:57:32', NULL),
(189, 9, 108, 3240, 3, '2017-03-11 18:57:42', NULL),
(190, 8, 96, 2880, 4, '2017-03-11 18:57:50', NULL),
(191, 4, 48, 1440, 5, '2017-03-11 18:57:55', NULL),
(192, 1, 12, 360, 6, '2017-03-11 18:57:59', NULL),
(193, 2, 20, 400, 1, '2017-03-12 15:39:12', NULL),
(194, 10, 100, 3000, 2, '2017-03-12 15:39:16', NULL),
(195, 8, 96, 2880, 3, '2017-03-12 15:39:21', NULL),
(196, 8, 96, 2880, 4, '2017-03-12 15:39:26', NULL),
(197, 3, 36, 1080, 5, '2017-03-12 15:39:30', NULL),
(198, 3, 30, 600, 1, '2017-03-13 19:31:54', NULL),
(199, 10, 100, 3000, 2, '2017-03-13 19:32:57', NULL),
(200, 9, 108, 3240, 3, '2017-03-13 19:33:10', NULL),
(201, 9, 108, 3240, 4, '2017-03-13 19:33:17', NULL),
(202, 4, 48, 1440, 5, '2017-03-13 19:33:29', NULL),
(203, 2, 24, 720, 6, '2017-03-13 19:33:36', NULL),
(204, 2, 20, 400, 1, '2017-03-14 19:11:04', NULL),
(205, 11, 110, 3300, 2, '2017-03-14 19:11:16', NULL),
(206, 9, 108, 3240, 3, '2017-03-14 19:11:24', NULL),
(207, 8, 96, 2880, 4, '2017-03-14 19:11:51', NULL),
(208, 4, 48, 1440, 5, '2017-03-14 19:12:00', NULL),
(209, 2, 24, 720, 6, '2017-03-14 19:12:07', NULL),
(210, 3, 30, 600, 1, '2017-03-15 19:06:39', NULL),
(211, 10, 100, 3000, 2, '2017-03-15 19:06:50', NULL),
(212, 9, 108, 3240, 3, '2017-03-15 19:06:59', NULL),
(213, 8, 96, 2880, 4, '2017-03-15 19:07:07', NULL),
(214, 4, 48, 1440, 5, '2017-03-15 19:07:15', NULL),
(215, 1, 12, 360, 6, '2017-03-15 19:07:21', NULL),
(216, 2, 20, 400, 1, '2017-03-16 19:11:25', NULL),
(217, 11, 110, 3300, 2, '2017-03-16 19:11:54', NULL),
(218, 8, 96, 2880, 3, '2017-03-16 19:12:12', NULL),
(219, 9, 108, 3240, 4, '2017-03-16 19:12:19', NULL),
(220, 4, 48, 1440, 5, '2017-03-16 19:12:25', NULL),
(221, 1, 12, 360, 6, '2017-03-16 19:12:31', NULL),
(222, 3, 30, 600, 1, '2017-03-17 19:09:12', NULL),
(223, 11, 110, 3300, 2, '2017-03-17 19:09:19', NULL),
(224, 9, 108, 3240, 3, '2017-03-17 19:09:27', NULL),
(225, 8, 96, 2880, 4, '2017-03-17 19:09:34', NULL),
(226, 4, 48, 1440, 5, '2017-03-17 19:09:40', NULL),
(227, 1, 12, 360, 6, '2017-03-17 19:09:44', NULL),
(228, 2, 20, 400, 1, '2017-03-18 20:01:05', NULL),
(229, 10, 100, 3000, 2, '2017-03-18 20:01:28', NULL),
(230, 9, 108, 3240, 3, '2017-03-18 20:01:41', NULL),
(231, 8, 96, 2880, 4, '2017-03-18 20:01:52', NULL),
(232, 4, 48, 1440, 5, '2017-03-18 20:02:04', NULL),
(233, 2, 24, 720, 6, '2017-03-18 20:02:11', NULL),
(234, 10, 100, 3000, 2, '2017-03-19 15:44:37', NULL),
(235, 3, 30, 600, 1, '2017-03-19 15:44:45', NULL),
(236, 8, 96, 2880, 3, '2017-03-19 15:44:50', NULL),
(237, 8, 96, 2880, 4, '2017-03-19 15:44:55', NULL),
(238, 3, 36, 1080, 5, '2017-03-19 15:45:00', NULL),
(239, 2, 20, 400, 1, '2017-03-20 19:43:02', NULL),
(240, 11, 110, 3300, 2, '2017-03-20 19:43:09', NULL),
(241, 9, 108, 3240, 3, '2017-03-20 19:43:14', NULL),
(242, 8, 96, 2880, 4, '2017-03-20 19:43:22', NULL),
(243, 6, 72, 2160, 5, '2017-03-20 19:43:26', NULL),
(244, 2, 24, 720, 6, '2017-03-20 19:43:37', NULL),
(245, 3, 30, 600, 1, '2017-03-21 19:07:47', NULL),
(246, 11, 110, 3300, 2, '2017-03-21 19:07:58', NULL),
(247, 9, 108, 3240, 3, '2017-03-21 19:08:06', NULL),
(248, 9, 108, 3240, 4, '2017-03-21 19:08:17', NULL),
(249, 4, 48, 1440, 5, '2017-03-21 19:08:26', NULL),
(250, 1, 12, 360, 6, '2017-03-21 19:08:32', NULL),
(251, 2, 20, 400, 1, '2017-03-22 19:10:13', NULL),
(252, 10, 100, 3000, 2, '2017-03-22 19:10:27', NULL),
(253, 9, 108, 3240, 3, '2017-03-22 19:10:35', NULL),
(254, 8, 96, 2880, 4, '2017-03-22 19:10:41', NULL),
(255, 5, 60, 1800, 5, '2017-03-22 19:10:51', NULL),
(256, 2, 24, 720, 6, '2017-03-22 19:10:57', NULL),
(257, 3, 30, 600, 1, '2017-03-23 19:28:58', NULL),
(258, 10, 100, 3000, 2, '2017-03-23 19:29:06', NULL),
(259, 9, 108, 3240, 3, '2017-03-23 19:29:11', NULL),
(260, 9, 108, 3240, 4, '2017-03-23 19:29:16', NULL),
(261, 6, 72, 2160, 5, '2017-03-23 19:29:26', NULL),
(262, 1, 12, 360, 6, '2017-03-23 19:29:34', NULL),
(263, 2, 20, 400, 1, '2017-03-24 19:30:13', NULL),
(264, 10, 100, 3000, 2, '2017-03-24 19:30:21', NULL),
(265, 9, 108, 3240, 3, '2017-03-24 19:30:25', NULL),
(266, 8, 96, 2880, 4, '2017-03-24 19:30:31', NULL),
(267, 5, 60, 1800, 5, '2017-03-24 19:30:36', NULL),
(268, 1, 12, 360, 6, '2017-03-24 19:30:42', NULL),
(269, 2, 20, 400, 1, '2017-03-25 19:08:31', NULL),
(270, 11, 110, 3300, 2, '2017-03-25 19:08:41', NULL),
(271, 9, 108, 3240, 3, '2017-03-25 19:08:46', NULL),
(272, 9, 108, 3240, 4, '2017-03-25 19:08:50', NULL),
(273, 5, 60, 1800, 5, '2017-03-25 19:08:55', NULL),
(274, 1, 12, 360, 6, '2017-03-25 19:08:59', NULL),
(275, 2, 20, 400, 1, '2017-03-26 15:41:11', NULL),
(276, 9, 90, 2700, 2, '2017-03-26 15:41:15', NULL),
(277, 8, 96, 2880, 3, '2017-03-26 15:41:21', NULL),
(278, 7, 84, 2520, 4, '2017-03-26 15:41:27', NULL),
(279, 4, 48, 1440, 5, '2017-03-26 15:41:32', NULL),
(280, 1, 12, 360, 6, '2017-03-26 15:41:36', NULL),
(281, 3, 30, 600, 1, '2017-03-27 19:33:43', NULL),
(282, 12, 120, 3600, 2, '2017-03-27 19:33:52', NULL),
(283, 10, 120, 3600, 3, '2017-03-27 19:34:02', NULL),
(284, 11, 132, 3960, 4, '2017-03-27 19:34:11', NULL),
(285, 5, 60, 1800, 5, '2017-03-27 19:34:18', NULL),
(286, 1, 12, 360, 6, '2017-03-27 19:34:24', NULL),
(287, 3, 30, 600, 1, '2017-03-28 18:41:59', NULL),
(288, 11, 110, 3300, 2, '2017-03-28 18:42:04', NULL),
(289, 10, 120, 3600, 3, '2017-03-28 18:42:10', NULL),
(290, 9, 108, 3240, 4, '2017-03-28 18:42:16', NULL),
(291, 4, 48, 1440, 5, '2017-03-28 18:42:21', NULL),
(292, 1, 12, 360, 6, '2017-03-28 18:42:27', NULL),
(293, 2, 20, 400, 1, '2017-03-29 19:16:07', NULL),
(294, 11, 110, 3300, 2, '2017-03-29 19:16:12', NULL),
(295, 9, 108, 3240, 3, '2017-03-29 19:16:20', NULL),
(296, 9, 108, 3240, 4, '2017-03-29 19:16:26', NULL),
(297, 5, 60, 1800, 5, '2017-03-29 19:16:32', NULL),
(298, 1, 12, 360, 6, '2017-03-29 19:16:36', NULL),
(299, 3, 30, 600, 1, '2017-03-30 19:13:16', NULL),
(300, 11, 110, 3300, 2, '2017-03-30 19:13:29', NULL),
(301, 9, 108, 3240, 3, '2017-03-30 19:13:35', NULL),
(302, 9, 108, 3240, 4, '2017-03-30 19:13:40', NULL),
(303, 5, 60, 1800, 5, '2017-03-30 19:13:45', NULL),
(304, 1, 12, 360, 6, '2017-03-30 19:13:50', NULL),
(305, 2, 20, 400, 1, '2017-03-31 19:13:19', NULL),
(306, 11, 110, 3300, 2, '2017-03-31 19:13:29', NULL),
(307, 9, 108, 3240, 3, '2017-03-31 19:13:39', NULL),
(308, 8, 96, 2880, 4, '2017-03-31 19:13:46', NULL),
(309, 4, 48, 1440, 5, '2017-03-31 19:13:53', NULL),
(310, 1, 12, 360, 6, '2017-03-31 19:14:00', NULL),
(311, 3, 30, 600, 1, '2017-04-01 19:36:33', NULL),
(312, 11, 110, 3300, 2, '2017-04-01 19:36:53', NULL),
(313, 10, 120, 3600, 3, '2017-04-01 19:37:07', NULL),
(314, 10, 120, 3600, 4, '2017-04-01 19:37:35', NULL),
(315, 4, 48, 1440, 5, '2017-04-01 19:37:51', NULL),
(316, 1, 12, 360, 6, '2017-04-01 19:37:59', NULL),
(317, 3, 30, 600, 1, '2017-04-02 15:41:10', NULL),
(318, 11, 110, 3300, 2, '2017-04-02 15:41:15', NULL),
(319, 8, 96, 2880, 3, '2017-04-02 15:41:19', NULL),
(320, 7, 84, 2520, 4, '2017-04-02 15:41:24', NULL),
(321, 4, 48, 1440, 5, '2017-04-02 15:41:29', NULL),
(322, 3, 30, 600, 1, '2017-04-03 19:10:23', NULL),
(323, 11, 110, 3300, 2, '2017-04-03 19:10:29', NULL),
(324, 10, 120, 3600, 3, '2017-04-03 19:10:35', NULL),
(325, 10, 120, 3600, 4, '2017-04-03 19:10:40', NULL),
(326, 5, 60, 1800, 5, '2017-04-03 19:10:44', NULL),
(327, 1, 12, 360, 6, '2017-04-03 19:10:48', NULL),
(328, 3, 30, 600, 1, '2017-04-04 19:08:20', NULL),
(329, 11, 110, 3300, 2, '2017-04-04 19:08:48', NULL),
(330, 9, 108, 3240, 3, '2017-04-04 19:09:09', NULL),
(331, 10, 120, 3600, 4, '2017-04-04 19:09:15', NULL),
(332, 4, 48, 1440, 5, '2017-04-04 19:09:22', NULL),
(333, 1, 12, 360, 6, '2017-04-04 19:09:26', NULL),
(334, 2, 20, 400, 1, '2017-04-05 19:00:03', NULL),
(335, 12, 120, 3600, 2, '2017-04-05 19:00:19', NULL),
(336, 9, 108, 3240, 3, '2017-04-05 19:00:25', NULL),
(337, 9, 108, 3240, 4, '2017-04-05 19:00:45', NULL),
(338, 4, 48, 1440, 5, '2017-04-05 19:00:51', NULL),
(339, 3, 30, 600, 1, '2017-04-06 19:19:39', NULL),
(340, 11, 110, 3300, 2, '2017-04-06 19:19:43', NULL),
(341, 9, 108, 3240, 3, '2017-04-06 19:19:48', NULL),
(342, 9, 108, 3240, 4, '2017-04-06 19:19:55', NULL),
(343, 4, 48, 1440, 5, '2017-04-06 19:20:00', NULL),
(344, 1, 12, 360, 6, '2017-04-06 19:20:05', NULL),
(345, 3, 30, 600, 1, '2017-04-07 19:31:45', NULL),
(346, 12, 120, 3600, 2, '2017-04-07 19:31:54', NULL),
(347, 9, 108, 3240, 3, '2017-04-07 19:32:02', NULL),
(348, 8, 96, 2880, 4, '2017-04-07 19:32:43', NULL),
(349, 4, 48, 1440, 5, '2017-04-07 19:32:48', NULL),
(350, 2, 20, 400, 1, '2017-04-08 19:23:30', NULL),
(351, 11, 110, 3300, 2, '2017-04-08 19:23:35', NULL),
(352, 10, 120, 3600, 3, '2017-04-08 19:23:40', NULL),
(353, 9, 108, 3240, 4, '2017-04-08 19:23:45', NULL),
(354, 3, 36, 1080, 5, '2017-04-08 19:24:21', NULL),
(355, 1, 12, 360, 6, '2017-04-08 19:24:26', NULL),
(356, 3, 30, 600, 1, '2017-04-09 15:33:00', NULL),
(357, 11, 110, 3300, 2, '2017-04-09 15:33:07', NULL),
(358, 8, 96, 2880, 3, '2017-04-09 15:33:14', NULL),
(359, 7, 84, 2520, 4, '2017-04-09 15:33:19', NULL),
(360, 3, 36, 1080, 5, '2017-04-09 15:33:24', NULL),
(361, 3, 30, 600, 1, '2017-04-10 20:16:31', NULL),
(362, 12, 120, 3600, 2, '2017-04-10 20:16:36', NULL),
(363, 10, 120, 3600, 3, '2017-04-10 20:16:40', NULL),
(364, 11, 132, 3960, 4, '2017-04-10 20:16:44', NULL),
(365, 5, 60, 1800, 5, '2017-04-10 20:16:48', NULL),
(366, 1, 12, 360, 6, '2017-04-10 20:16:52', NULL),
(367, 3, 30, 600, 1, '2017-04-11 19:14:23', NULL),
(368, 12, 120, 3600, 2, '2017-04-11 19:14:42', NULL),
(369, 10, 120, 3600, 3, '2017-04-11 19:14:55', NULL),
(370, 8, 96, 2880, 4, '2017-04-11 19:15:11', NULL),
(371, 3, 36, 1080, 5, '2017-04-11 19:15:25', NULL);

--
-- Disparadores `caja`
--
DELIMITER $$
CREATE TRIGGER `actualizar_caja_deposito` AFTER UPDATE ON `caja` FOR EACH ROW BEGIN
DECLARE cajas integer;
DECLARE maples integer;
DECLARE huevos integer;
SET cajas = NEW.cantidad_caja - OLD.cantidad_caja;
SET maples = NEW.cantidad_maple - OLD.cantidad_maple;
SET huevos = NEW.cantidad_huevo - OLD.cantidad_huevo;

       UPDATE caja_deposito SET caja_deposito.cantidad_caja = caja_deposito.cantidad_caja + cajas
       WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja; 
       UPDATE caja_deposito SET caja_deposito.cantidad_maple = caja_deposito.cantidad_maple + maples
       WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja;  
       UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad - huevos;       
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `registrar_caja_deposito` AFTER INSERT ON `caja` FOR EACH ROW BEGIN

IF EXISTS(SELECT * from caja_deposito WHERE id_tipo_caja=NEW.id_tipo_caja )THEN 
       UPDATE caja_deposito SET caja_deposito.cantidad_caja = caja_deposito.cantidad_caja + NEW.cantidad_caja
       WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja; 
       UPDATE caja_deposito SET caja_deposito.cantidad_maple = caja_deposito.cantidad_maple + NEW.cantidad_maple
       WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja;  
       UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad - NEW.cantidad_huevo;
ELSE
 INSERT INTO caja_deposito SET caja_deposito.cantidad_caja=NEW.cantidad_caja, caja_deposito.cantidad_maple=NEW.cantidad_maple, caja_deposito.id_tipo_caja=NEW.id_tipo_caja;
       UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad - NEW.cantidad_huevo;
END IF; 

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_deposito`
--

CREATE TABLE `caja_deposito` (
  `id` int(11) NOT NULL,
  `cantidad_caja` int(11) DEFAULT NULL,
  `cantidad_maple` int(11) NOT NULL,
  `id_tipo_caja` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caja_deposito`
--

INSERT INTO `caja_deposito` (`id`, `cantidad_caja`, `cantidad_maple`, `id_tipo_caja`, `deleted_at`) VALUES
(1, 6, 60, 1, NULL),
(2, 24, 240, 2, NULL),
(3, 20, 240, 3, NULL),
(4, 19, 228, 4, NULL),
(5, 8, 96, 5, NULL),
(6, 1, 12, 6, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantidad_maple`
--

CREATE TABLE `cantidad_maple` (
  `id` int(11) NOT NULL,
  `cantidad_maple` int(11) DEFAULT NULL,
  `id_tipo_caja` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `tipo`, `deleted_at`) VALUES
(1, 'SUELDO', 0, NULL),
(2, 'VENTA DE GALLINAS', 1, NULL),
(3, 'VENTA DE GALLINAZA', 1, NULL),
(4, 'COMBUSTIBLES', 0, NULL),
(5, 'COMPREA DE VACUNA', 0, NULL),
(6, 'COMPRA DE HERRAMIENTAS', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `precio_compra` decimal(10,2) DEFAULT NULL,
  `cantidad_total` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_silo` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `precio_compra`, `cantidad_total`, `fecha`, `id_silo`, `deleted_at`) VALUES
(26, '3935.00', '2000.00', '2017-03-25 18:04:25', 3, NULL),
(27, '4340.00', '2000.00', '2017-03-25 18:09:11', 4, NULL),
(28, '4310.00', '2000.00', '2017-03-25 18:14:25', 5, NULL),
(29, '12930.00', '6000.00', '2017-03-27 17:58:25', 5, NULL),
(30, '12930.00', '6000.00', '2017-03-31 18:02:14', 5, NULL),
(31, '4340.00', '2000.00', '2017-04-04 22:40:32', 2, NULL),
(32, '4340.00', '2000.00', '2017-04-04 22:40:59', 4, NULL),
(33, '4310.00', '2000.00', '2017-04-04 22:41:16', 5, NULL),
(34, '8620.00', '4000.00', '2017-04-06 16:07:30', 5, NULL),
(35, '3935.00', '2000.00', '2017-04-06 16:08:00', 3, NULL),
(36, '12930.00', '6000.00', '2017-04-08 18:05:23', 5, NULL),
(37, '12930.00', '6000.00', '2017-04-12 13:38:17', 5, NULL),
(38, '0.00', '4801.40', '2017-05-18 18:33:06', 3, NULL);

--
-- Disparadores `compra`
--
DELIMITER $$
CREATE TRIGGER `actualizar_silo_compra` AFTER INSERT ON `compra` FOR EACH ROW UPDATE silo 
SET silo.cantidad=silo.cantidad+(NEW.cantidad_total) 
WHERE silo.id=new.id_silo
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `anular_compra` AFTER UPDATE ON `compra` FOR EACH ROW BEGIN 
	UPDATE silo SET silo.cantidad=silo.cantidad - NEW.cantidad_total
    WHERE silo.id=NEW.id_silo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumo`
--

CREATE TABLE `consumo` (
  `id` int(11) NOT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_silo` int(11) NOT NULL,
  `id_fase_galpon` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Disparadores `consumo`
--
DELIMITER $$
CREATE TRIGGER `actualizar_consumo_grano` AFTER UPDATE ON `consumo` FOR EACH ROW BEGIN
    DECLARE cantidad_grano integer;
    SET cantidad_grano =  NEW.cantidad - OLD.cantidad;
    UPDATE silo SET silo.cantidad = silo.cantidad - cantidad_grano
    WHERE silo.id = NEW.id_silo;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `descontar_granos` AFTER INSERT ON `consumo` FOR EACH ROW UPDATE silo 
SET silo.cantidad=silo.cantidad-(NEW.cantidad) 
WHERE silo.id=new.id_silo
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumo_emergente`
--

CREATE TABLE `consumo_emergente` (
  `id` int(11) NOT NULL,
  `id_edad` int(11) DEFAULT NULL,
  `id_vacuna` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumo_vacuna`
--

CREATE TABLE `consumo_vacuna` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `id_control_vacuna` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_alimento_galpon`
--

CREATE TABLE `control_alimento_galpon` (
  `id` int(11) NOT NULL,
  `id_edad` int(11) DEFAULT NULL,
  `id_control_alimento` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `control_alimento_galpon`
--

INSERT INTO `control_alimento_galpon` (`id`, `id_edad`, `id_control_alimento`, `fecha`, `deleted_at`) VALUES
(8, 21, 38, '2017-05-21 21:24:54', NULL),
(9, 22, 45, '2017-05-21 21:25:42', NULL),
(10, 23, 45, '2017-05-21 22:05:36', NULL);

--
-- Disparadores `control_alimento_galpon`
--
DELIMITER $$
CREATE TRIGGER `actualizar_control` BEFORE INSERT ON `control_alimento_galpon` FOR EACH ROW update grupo_control_alimento
set estado=0
where grupo_control_alimento.id=new.id_control_alimento
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_vacuna`
--

CREATE TABLE `control_vacuna` (
  `id` int(11) NOT NULL,
  `id_edad` int(11) DEFAULT NULL,
  `id_vacuna` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `control_vacuna`
--

INSERT INTO `control_vacuna` (`id`, `id_edad`, `id_vacuna`, `estado`, `deleted_at`) VALUES
(1, 5, 2, 1, NULL),
(2, 5, 3, 1, NULL),
(3, 5, 4, 1, NULL),
(4, 5, 5, 1, NULL),
(5, 5, 6, 1, NULL),
(6, 5, 7, 1, NULL),
(7, 5, 8, 1, NULL),
(8, 5, 9, 1, NULL),
(9, 5, 10, 1, NULL),
(10, 5, 11, 1, NULL),
(11, 5, 12, 1, NULL),
(12, 5, 13, 1, NULL),
(13, 5, 14, 1, NULL),
(14, 5, 15, 1, NULL),
(15, 5, 16, 1, NULL),
(16, 5, 17, 1, NULL),
(17, 5, 18, 1, NULL),
(18, 5, 19, 1, NULL),
(19, 5, 20, 1, NULL),
(20, 5, 21, 1, NULL),
(21, 5, 22, 1, NULL),
(22, 5, 23, 1, NULL),
(23, 5, 24, 1, NULL),
(24, 5, 25, 1, NULL),
(25, 5, 26, 1, NULL),
(26, 5, 27, 1, NULL),
(27, 5, 28, 1, NULL),
(28, 5, 29, 1, NULL),
(29, 5, 30, 1, NULL),
(30, 5, 31, 1, NULL),
(31, 5, 32, 1, NULL),
(32, 5, 33, 1, NULL),
(33, 5, 34, 1, NULL),
(34, 5, 35, 1, NULL),
(35, 5, 36, 1, NULL),
(36, 5, 37, 1, NULL),
(37, 5, 38, 1, NULL),
(38, 5, 39, 1, NULL),
(39, 5, 40, 1, NULL),
(40, 5, 41, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `id_tipo_caja` int(11) DEFAULT NULL,
  `id_venta_caja` int(11) DEFAULT NULL,
  `cantidad_caja` int(11) DEFAULT NULL,
  `subtotal_precio` decimal(10,2) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `id_tipo_caja`, `id_venta_caja`, `cantidad_caja`, `subtotal_precio`, `deleted_at`) VALUES
(1, 1, 1, 8, '689.60', NULL),
(2, 2, 1, 34, '2788.00', NULL),
(3, 3, 1, 21, '3016.44', NULL),
(4, 4, 1, 13, '1708.20', NULL),
(5, 5, 1, 6, '756.00', NULL),
(6, 6, 1, 1, '108.00', NULL),
(7, 2, 2, 2, '164.00', NULL),
(8, 1, 3, 4, '344.80', NULL),
(9, 2, 3, 25, '2050.00', NULL),
(10, 3, 3, 15, '2154.60', NULL),
(11, 4, 3, 17, '2233.80', NULL),
(12, 5, 3, 8, '1008.00', NULL),
(13, 6, 3, 1, '108.00', NULL),
(14, 1, 4, 7, '603.40', NULL),
(15, 2, 5, 39, '3198.00', NULL),
(16, 3, 5, 19, '2729.16', NULL),
(17, 4, 5, 27, '3547.80', NULL),
(18, 5, 5, 10, '1260.00', NULL),
(19, 1, 6, 5, '431.00', NULL),
(20, 2, 6, 28, '2296.00', NULL),
(21, 4, 6, 21, '2759.40', NULL),
(22, 5, 6, 7, '882.00', NULL),
(23, 6, 6, 1, '108.00', NULL),
(24, 1, 7, 8, '689.60', NULL),
(25, 2, 7, 34, '4182.00', NULL),
(26, 3, 7, 21, '3016.44', NULL),
(27, 5, 7, 6, '756.00', NULL),
(28, 4, 7, 13, '1708.20', NULL),
(29, 6, 7, 1, '108.00', NULL),
(30, 1, 8, 4, '344.80', NULL),
(31, 2, 8, 25, '3075.00', NULL),
(32, 3, 8, 15, '2154.60', NULL),
(33, 4, 8, 17, '2233.80', NULL),
(34, 5, 8, 8, '1008.00', NULL),
(35, 6, 8, 1, '108.00', NULL),
(36, 2, 9, 39, '4797.00', NULL),
(37, 3, 9, 19, '2729.16', NULL),
(38, 4, 9, 27, '3547.80', NULL),
(39, 5, 9, 10, '1260.00', NULL),
(40, 1, 10, 7, '603.40', NULL),
(41, 1, 11, 5, '431.00', NULL),
(42, 2, 11, 28, '3444.00', NULL),
(43, 4, 11, 21, '2759.40', NULL),
(44, 5, 11, 7, '882.00', NULL),
(45, 6, 11, 1, '108.00', NULL),
(46, 3, 12, 13, '1867.32', NULL),
(47, 1, 13, 5, '431.00', NULL),
(48, 2, 13, 24, '2952.00', NULL),
(49, 3, 13, 14, '2010.96', NULL),
(50, 4, 13, 20, '2628.00', NULL),
(51, 5, 13, 7, '882.00', NULL),
(52, 6, 13, 1, '108.00', NULL),
(53, 1, 14, 7, '603.40', NULL),
(54, 2, 14, 31, '3813.00', NULL),
(55, 3, 14, 27, '3878.28', NULL),
(56, 4, 14, 25, '3285.00', NULL),
(57, 5, 14, 11, '1386.00', NULL),
(58, 6, 14, 1, '108.00', NULL),
(59, 1, 15, 5, '431.00', NULL),
(60, 2, 15, 22, '2706.00', NULL),
(61, 3, 15, 19, '2729.16', NULL),
(62, 4, 15, 17, '2233.80', NULL),
(63, 5, 15, 7, '882.00', NULL),
(64, 1, 16, 4, '344.80', NULL),
(65, 2, 16, 18, '2214.00', NULL),
(66, 3, 16, 18, '2585.52', NULL),
(67, 4, 16, 18, '2365.20', NULL),
(68, 5, 16, 9, '1134.00', NULL),
(69, 6, 16, 1, '108.00', NULL),
(70, 1, 17, 7, '603.40', NULL),
(71, 2, 17, 28, '3444.00', NULL),
(72, 3, 17, 25, '3591.00', NULL),
(73, 4, 17, 25, '3285.00', NULL),
(74, 5, 17, 12, '1512.00', NULL),
(75, 6, 17, 2, '216.00', NULL),
(76, 1, 18, 5, '431.00', NULL),
(77, 2, 18, 20, '2460.00', NULL),
(78, 3, 18, 18, '2585.52', NULL),
(79, 4, 18, 17, '2233.80', NULL),
(80, 5, 18, 6, '756.00', NULL),
(81, 1, 19, 5, '431.00', NULL),
(82, 2, 19, 23, '2829.00', NULL),
(83, 3, 19, 19, '2729.16', NULL),
(84, 4, 19, 16, '2102.40', NULL),
(85, 5, 19, 7, '882.00', NULL),
(86, 6, 19, 1, '108.00', NULL),
(87, 1, 20, 6, '517.20', NULL),
(88, 2, 20, 28, '3444.00', NULL),
(89, 3, 20, 26, '3734.64', NULL),
(90, 4, 20, 25, '3285.00', NULL),
(91, 5, 20, 12, '1512.00', NULL),
(92, 6, 20, 2, '216.00', NULL),
(93, 1, 21, 5, '431.00', NULL),
(94, 2, 21, 22, '2706.00', NULL),
(95, 3, 21, 19, '2729.16', NULL),
(96, 4, 21, 17, '2233.80', NULL),
(97, 5, 21, 8, '1008.00', NULL),
(98, 6, 21, 2, '216.00', NULL),
(99, 1, 22, 5, '431.00', NULL),
(100, 2, 22, 20, '2460.00', NULL),
(101, 3, 22, 18, '2585.52', NULL),
(102, 4, 22, 17, '2233.80', NULL),
(103, 5, 22, 8, '1008.00', NULL),
(104, 6, 22, 1, '108.00', NULL),
(105, 1, 23, 7, '603.40', NULL),
(106, 2, 23, 32, '3936.00', NULL),
(107, 3, 23, 26, '3734.64', NULL),
(108, 4, 23, 24, '3153.60', NULL),
(109, 5, 23, 10, '1260.00', NULL),
(110, 6, 23, 2, '216.00', NULL),
(111, 1, 24, 5, '431.00', NULL),
(112, 2, 24, 21, '2583.00', NULL),
(113, 3, 24, 18, '2585.52', NULL),
(114, 4, 24, 17, '2233.80', NULL),
(115, 5, 24, 8, '1008.00', NULL),
(116, 6, 24, 4, '432.00', NULL),
(117, 1, 25, 5, '431.00', NULL),
(118, 2, 25, 21, '2583.00', NULL),
(119, 3, 25, 17, '2441.88', NULL),
(120, 4, 25, 17, '2233.80', NULL),
(121, 5, 25, 8, '1008.00', NULL),
(122, 6, 25, 2, '216.00', NULL),
(123, 1, 26, 8, '689.60', NULL),
(124, 2, 26, 31, '3813.00', NULL),
(125, 3, 26, 26, '3734.64', NULL),
(126, 4, 26, 24, '3153.60', NULL),
(127, 5, 26, 11, '1386.00', NULL),
(128, 6, 26, 3, '324.00', NULL),
(129, 1, 27, 5, '431.00', NULL),
(130, 2, 27, 22, '2706.00', NULL),
(131, 3, 27, 18, '2585.52', NULL),
(132, 4, 27, 17, '2233.80', NULL),
(133, 5, 27, 10, '1260.00', NULL),
(134, 6, 27, 3, '324.00', NULL),
(135, 1, 28, 5, '431.00', NULL),
(136, 2, 28, 20, '2460.00', NULL),
(137, 3, 28, 18, '2585.52', NULL),
(138, 4, 28, 17, '2233.80', NULL),
(139, 5, 28, 11, '1386.00', NULL),
(140, 6, 28, 3, '324.00', NULL),
(141, 1, 29, 6, '517.20', NULL),
(142, 2, 29, 30, '3690.00', NULL),
(143, 3, 29, 26, '3734.64', NULL),
(144, 4, 29, 24, '3153.60', NULL),
(145, 5, 29, 14, '1764.00', NULL),
(146, 6, 29, 3, '324.00', NULL),
(147, 1, 30, 6, '517.20', NULL),
(148, 2, 30, 23, '2829.00', NULL),
(149, 3, 30, 20, '2872.80', NULL),
(150, 4, 30, 20, '2628.00', NULL),
(151, 5, 30, 9, '1134.00', NULL),
(152, 6, 30, 2, '216.00', NULL),
(153, 1, 31, 5, '431.00', NULL),
(154, 2, 31, 22, '2706.00', NULL),
(155, 3, 31, 18, '2585.52', NULL),
(156, 4, 31, 18, '2365.20', NULL),
(157, 5, 31, 10, '1260.00', NULL),
(158, 6, 31, 2, '216.00', NULL),
(159, 1, 32, 8, '689.60', NULL),
(160, 2, 32, 33, '4059.00', NULL),
(161, 3, 32, 27, '3878.28', NULL),
(162, 4, 32, 25, '3285.00', NULL),
(163, 5, 32, 12, '1512.00', NULL),
(164, 6, 32, 2, '216.00', NULL),
(165, 1, 33, 6, '517.20', NULL),
(166, 2, 33, 22, '2706.00', NULL),
(167, 3, 33, 19, '2729.16', NULL),
(168, 4, 33, 20, '2628.00', NULL),
(169, 5, 33, 9, '1134.00', NULL),
(170, 6, 33, 2, '216.00', NULL),
(171, 1, 34, 5, '431.00', NULL),
(172, 2, 34, 23, '2829.00', NULL),
(173, 3, 34, 18, '2585.52', NULL),
(174, 4, 34, 18, '2365.20', NULL),
(175, 5, 34, 8, '1008.00', NULL),
(176, 6, 34, 1, '108.00', NULL),
(177, 1, 35, 8, '689.60', NULL),
(178, 2, 35, 34, '4182.00', NULL),
(179, 3, 35, 27, '3878.28', NULL),
(180, 4, 35, 24, '3153.60', NULL),
(181, 5, 35, 10, '1260.00', NULL),
(182, 6, 35, 1, '108.00', NULL);

--
-- Disparadores `detalle_venta`
--
DELIMITER $$
CREATE TRIGGER `actualizar_cajas` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
    DECLARE cantidad_maples integer;
    SELECT tipo_caja.cantidad_maple INTO cantidad_maples FROM tipo_caja,maple WHERE tipo_caja.id_maple=maple.id and tipo_caja.id=NEW.id_tipo_caja;
	UPDATE caja_deposito SET caja_deposito.cantidad_caja = caja_deposito.cantidad_caja - NEW.cantidad_caja
    WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja;
   	UPDATE caja_deposito SET caja_deposito.cantidad_maple = caja_deposito.cantidad_maple - (NEW.cantidad_caja * cantidad_maples)
    WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `anular_venta` AFTER UPDATE ON `detalle_venta` FOR EACH ROW BEGIN
    DECLARE cantidad_maples integer;
    SELECT tipo_caja.cantidad_maple INTO cantidad_maples FROM tipo_caja,maple WHERE tipo_caja.id_maple=maple.id and tipo_caja.id=NEW.id_tipo_caja;
	UPDATE caja_deposito SET caja_deposito.cantidad_caja = caja_deposito.cantidad_caja + NEW.cantidad_caja
    WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja;
   	UPDATE caja_deposito SET caja_deposito.cantidad_maple = caja_deposito.cantidad_maple + (NEW.cantidad_caja * cantidad_maples)
    WHERE caja_deposito.id_tipo_caja = NEW.id_tipo_caja;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_huevo`
--

CREATE TABLE `detalle_venta_huevo` (
  `id` int(11) NOT NULL,
  `id_venta_huevo` int(11) DEFAULT NULL,
  `id_tipo_huevo` int(11) DEFAULT NULL,
  `cantidad_maple` int(11) DEFAULT NULL,
  `cantidad_huevo` int(11) NOT NULL,
  `subtotal_precio` decimal(10,2) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_venta_huevo`
--

INSERT INTO `detalle_venta_huevo` (`id`, `id_venta_huevo`, `id_tipo_huevo`, `cantidad_maple`, `cantidad_huevo`, `subtotal_precio`, `deleted_at`) VALUES
(1, 1, 2, 5, 150, '45.00', NULL),
(2, 2, 2, 38, 1140, '342.00', NULL),
(3, 2, 3, 29, 870, '200.10', NULL),
(4, 2, 1, 1, 15, '13.95', NULL),
(5, 3, 2, 49, 1470, '441.00', NULL),
(6, 3, 3, 23, 690, '158.70', NULL),
(7, 3, 1, 1, 15, '13.95', NULL),
(8, 4, 2, 41, 1230, '369.00', NULL),
(9, 4, 3, 34, 1020, '234.60', NULL),
(10, 4, 1, 2, 30, '27.90', NULL),
(11, 5, 1, 1, 15, '13.95', NULL),
(12, 5, 2, 37, 1110, '333.00', NULL),
(13, 5, 3, 22, 660, '151.80', NULL),
(14, 5, 5, 3, 90, '11.70', NULL),
(15, 6, 1, 3, 45, '21.02', NULL),
(16, 7, 2, 49, 1470, '441.00', NULL),
(17, 7, 3, 36, 1080, '248.40', NULL),
(18, 7, 1, 4, 60, '28.02', NULL),
(19, 8, 2, 46, 1380, '414.00', NULL),
(20, 8, 3, 25, 750, '172.50', NULL),
(21, 8, 1, 2, 30, '14.01', NULL),
(22, 8, 5, 2, 60, '7.80', NULL),
(23, 9, 5, 2, 60, '7.80', NULL),
(24, 10, 2, 57, 1710, '513.00', NULL),
(25, 10, 3, 38, 1140, '262.20', NULL),
(26, 10, 1, 4, 60, '28.02', NULL),
(27, 11, 2, 45, 1350, '405.00', NULL),
(28, 11, 3, 28, 840, '193.20', NULL),
(29, 11, 1, 2, 30, '14.01', NULL),
(30, 12, 2, 62, 1860, '558.00', NULL),
(31, 12, 3, 37, 1110, '255.30', NULL),
(32, 12, 1, 3, 45, '21.02', NULL),
(33, 12, 5, 3, 90, '11.70', NULL),
(34, 13, 2, 53, 1590, '477.00', NULL),
(35, 13, 3, 34, 1020, '234.60', NULL),
(36, 13, 1, 3, 45, '21.02', NULL),
(37, 13, 5, 2, 60, '7.80', NULL),
(38, 14, 2, 84, 2520, '756.00', NULL),
(39, 14, 3, 32, 960, '220.80', NULL),
(40, 14, 1, 6, 90, '42.03', NULL),
(41, 14, 5, 3, 90, '11.70', NULL),
(42, 15, 2, 47, 1410, '423.00', NULL),
(43, 15, 3, 29, 870, '200.10', NULL),
(44, 15, 1, 3, 45, '21.02', NULL),
(45, 15, 5, 3, 90, '11.70', NULL),
(46, 16, 2, 52, 1560, '468.00', NULL),
(47, 16, 3, 34, 1020, '234.60', NULL),
(48, 16, 1, 4, 60, '28.02', NULL),
(49, 16, 5, 3, 90, '11.70', NULL),
(50, 17, 2, 36, 1080, '324.00', NULL),
(51, 17, 3, 24, 720, '165.60', NULL),
(52, 17, 1, 2, 30, '14.01', NULL),
(53, 17, 5, 3, 90, '11.70', NULL),
(54, 18, 2, 48, 1440, '432.00', NULL),
(55, 18, 3, 24, 720, '165.60', NULL),
(56, 18, 1, 3, 45, '21.02', NULL),
(57, 18, 5, 2, 60, '7.80', NULL),
(58, 19, 2, 50, 1500, '450.00', NULL),
(59, 19, 3, 24, 720, '165.60', NULL),
(60, 19, 1, 3, 45, '21.02', NULL),
(61, 19, 5, 1, 30, '3.90', NULL),
(62, 20, 2, 70, 2100, '630.00', NULL),
(63, 20, 3, 26, 780, '179.40', NULL),
(64, 20, 1, 4, 60, '28.02', NULL),
(65, 20, 5, 1, 30, '3.90', NULL),
(66, 21, 2, 1, 30, '9.00', NULL);

--
-- Disparadores `detalle_venta_huevo`
--
DELIMITER $$
CREATE TRIGGER `actualizar_maples` AFTER INSERT ON `detalle_venta_huevo` FOR EACH ROW BEGIN
	UPDATE huevo_deposito SET huevo_deposito.cantidad_maple = huevo_deposito.cantidad_maple - NEW.cantidad_maple
    WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo;
	UPDATE huevo_deposito SET huevo_deposito.cantidad_huevo = huevo_deposito.cantidad_huevo - NEW.cantidad_huevo
    WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `anular_venta_huevo` AFTER UPDATE ON `detalle_venta_huevo` FOR EACH ROW BEGIN
	UPDATE huevo_deposito SET huevo_deposito.cantidad_maple = huevo_deposito.cantidad_maple + NEW.cantidad_maple
    WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo;
	UPDATE huevo_deposito SET huevo_deposito.cantidad_huevo = huevo_deposito.cantidad_huevo + NEW.cantidad_huevo
    WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad`
--

CREATE TABLE `edad` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_descarte` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `id_galpon` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `edad`
--

INSERT INTO `edad` (`id`, `fecha_inicio`, `fecha_descarte`, `estado`, `id_galpon`, `deleted_at`) VALUES
(1, '2015-08-31', '2017-05-21', 0, 48, NULL),
(2, '2016-10-10', '2017-05-22', 0, 55, NULL),
(3, '2015-11-16', '2017-05-21', 0, 49, NULL),
(4, '2016-06-02', '2017-05-21', 0, 49, NULL),
(5, '2016-08-11', '2017-05-21', 0, 51, NULL),
(6, '2016-03-31', NULL, 1, 54, NULL),
(7, '2016-01-21', '2017-05-21', 0, 53, NULL),
(8, '2015-06-25', '2017-05-21', 0, 54, NULL),
(9, '2016-12-22', NULL, 1, 54, NULL),
(10, '2017-03-06', '2017-05-21', 0, 48, NULL),
(14, '2017-05-21', '2017-05-21', 0, 48, NULL),
(15, '2017-05-21', '2017-05-21', 0, 50, NULL),
(16, '2017-05-21', NULL, 1, 48, NULL),
(17, '2017-05-21', '2017-05-21', 0, 48, NULL),
(18, '2017-05-21', '2017-05-21', 0, 50, NULL),
(19, '2017-05-21', NULL, 1, 49, NULL),
(20, '2017-05-21', NULL, 1, 50, NULL),
(21, '2017-05-21', NULL, 1, 48, NULL),
(22, '2017-05-21', NULL, 1, 51, NULL),
(23, '2017-05-21', NULL, 1, 53, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egreso_varios`
--

CREATE TABLE `egreso_varios` (
  `id` int(11) NOT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `egreso_varios`
--

INSERT INTO `egreso_varios` (`id`, `detalle`, `precio`, `id_categoria`, `fecha`, `deleted_at`) VALUES
(1, 'PAMFILO', '4250.00', 1, '2017-01-01', NULL),
(2, 'VEHICULO MITSUBISHI', '1800.00', 4, '2017-01-01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fases`
--

CREATE TABLE `fases` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fases`
--

INSERT INTO `fases` (`id`, `numero`, `nombre`, `deleted_at`) VALUES
(1, 1, 'FASE 1', NULL),
(2, 2, 'FASE 2', NULL),
(3, 3, 'FASE 3', NULL),
(4, 4, 'PONEDORA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fases_galpon`
--

CREATE TABLE `fases_galpon` (
  `id` int(11) NOT NULL,
  `id_edad` int(11) DEFAULT NULL,
  `id_fase` int(11) DEFAULT NULL,
  `cantidad_inicial` int(11) DEFAULT NULL,
  `cantidad_actual` int(11) DEFAULT NULL,
  `total_muerta` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fases_galpon`
--

INSERT INTO `fases_galpon` (`id`, `id_edad`, `id_fase`, `cantidad_inicial`, `cantidad_actual`, `total_muerta`, `fecha_inicio`, `fecha_fin`, `deleted_at`) VALUES
(1, 1, 4, 2055, 1888, 166, '2015-08-31', '2017-05-21', NULL),
(2, 2, 3, 2030, 2028, 2, '2016-10-10', '2017-02-07', NULL),
(3, 3, 4, 2024, 1820, 187, '2015-11-16', '2017-05-21', NULL),
(4, 4, 4, 2038, 1948, 252, '2016-06-02', '2017-05-21', NULL),
(5, 5, 4, 2020, 1904, 196, '2016-08-11', '2017-05-21', NULL),
(6, 6, 4, 2062, 1891, 177, '2016-03-31', NULL, NULL),
(7, 7, 4, 2060, 1888, 168, '2016-01-21', '2017-05-21', NULL),
(8, 8, 4, 2394, 2186, 582, '2015-06-25', '2017-05-21', NULL),
(9, 9, 2, 2350, 2298, 52, '2016-12-22', '2017-03-06', NULL),
(10, 2, 4, 2028, 2087, 90, '2016-10-10', '2017-05-22', NULL),
(11, 9, 3, 2333, 2314, 19, '2017-03-06', NULL, NULL),
(12, 10, 1, 2060, 2050, 10, '2017-03-06', '2017-04-10', NULL),
(13, 10, 2, 2064, 2062, 2, '2017-04-10', '2017-05-21', NULL),
(17, 14, 4, 10, 10, 0, '2017-05-21', '2017-05-21', NULL),
(18, 15, 4, 10, 10, 0, '2017-05-21', '2017-05-21', NULL),
(19, 16, 1, 25, 30, 0, '2017-05-21', NULL, NULL),
(20, 17, 4, 10, 10, 0, '2017-05-21', '2017-05-21', NULL),
(21, 18, 4, 10, 10, 0, '2017-05-21', '2017-05-21', NULL),
(22, 19, 4, 10, 10, 0, '2017-05-21', NULL, NULL),
(23, 20, 4, 10, 10, 10, '2017-05-21', NULL, NULL),
(24, 21, 4, 5, 10, 0, '2017-05-21', NULL, NULL),
(25, 22, 4, 0, 10, 0, '2017-05-21', NULL, NULL),
(26, 23, 4, 10, 10, 0, '2017-05-21', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galpon`
--

CREATE TABLE `galpon` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `capacidad_total` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galpon`
--

INSERT INTO `galpon` (`id`, `numero`, `capacidad_total`, `deleted_at`) VALUES
(48, 1, 2032, NULL),
(49, 2, 2016, NULL),
(50, 3, 2032, NULL),
(51, 4, 2030, NULL),
(52, 5, 2048, NULL),
(53, 6, 2036, NULL),
(54, 7, 2392, NULL),
(55, 8, 2290, NULL),
(56, 9, 2000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_control_alimento`
--

CREATE TABLE `grupo_control_alimento` (
  `id` int(11) NOT NULL,
  `nro_grupo` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(4) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_control_alimento`
--

INSERT INTO `grupo_control_alimento` (`id`, `nro_grupo`, `fecha`, `estado`, `deleted_at`) VALUES
(38, 1, '2017-05-18 14:13:21', 1, NULL),
(39, 2, '2017-05-18 18:31:47', 1, NULL),
(40, 3, '2017-05-18 19:02:01', 1, NULL),
(44, 4, '2017-05-19 01:07:01', 1, NULL),
(45, 5, '2017-05-19 14:14:35', 0, NULL),
(54, 5, '2017-05-19 15:50:23', 1, NULL),
(55, 6, '2017-05-19 15:57:20', 1, NULL),
(60, 7, '2017-05-21 18:45:30', 1, NULL),
(61, 8, '2017-05-21 18:46:51', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_edad`
--

CREATE TABLE `grupo_edad` (
  `id` int(11) NOT NULL,
  `edad_min` int(11) DEFAULT NULL,
  `edad_max` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `id_alimento` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_edad`
--

INSERT INTO `grupo_edad` (`id`, `edad_min`, `edad_max`, `estado`, `id_alimento`, `deleted_at`) VALUES
(25, 2, 12, 1, 2, NULL),
(26, 15, 17, 1, 3, NULL),
(27, 20, 25, 1, 1, NULL),
(28, 26, 30, 1, 4, NULL),
(29, 16, 17, 1, 3, NULL),
(30, 21, 25, 1, 1, NULL),
(31, 14, 17, 1, 3, NULL),
(32, 19, 25, 1, 2, NULL),
(33, 26, 28, 1, 2, NULL),
(34, 26, 27, 1, 3, NULL),
(41, 26, 30, 1, 3, NULL),
(42, 26, 35, 1, 4, NULL),
(43, 31, 40, 1, 4, NULL),
(44, 36, 50, 1, 3, NULL),
(45, 0, 5, 1, 1, NULL),
(46, 14, 17, 1, 2, NULL),
(47, 19, 25, 1, 6, NULL),
(48, 26, 30, 1, 5, NULL),
(49, 31, 35, 1, 4, NULL),
(50, 6, 13, 1, 2, NULL),
(51, 0, 5, 1, 1, NULL),
(52, 14, 17, 1, 2, NULL),
(53, 19, 25, 1, 6, NULL),
(54, 26, 30, 1, 5, NULL),
(55, 31, 35, 1, 4, NULL),
(56, 45, 150, 1, 5, NULL),
(57, 0, 5, 1, 1, NULL),
(58, 14, 17, 1, 2, NULL),
(59, 19, 25, 1, 6, NULL),
(60, 26, 30, 1, 5, NULL),
(61, 31, 35, 1, 4, NULL),
(62, 45, 150, 1, 5, NULL),
(63, 0, 5, 1, 1, NULL),
(64, 14, 17, 1, 2, NULL),
(65, 19, 25, 1, 6, NULL),
(66, 26, 30, 1, 5, NULL),
(67, 31, 35, 1, 4, NULL),
(68, 45, 150, 1, 5, NULL),
(85, 2, 12, 1, 2, NULL),
(86, 15, 17, 1, 3, NULL),
(87, 20, 25, 1, 1, NULL),
(88, 26, 30, 1, 4, NULL),
(89, 2, 12, 1, 2, NULL),
(90, 15, 17, 1, 3, NULL),
(91, 20, 25, 1, 1, NULL),
(92, 26, 30, 1, 4, NULL),
(93, 31, 35, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_edad_temp`
--

CREATE TABLE `grupo_edad_temp` (
  `id` int(11) NOT NULL,
  `id_edad` int(11) DEFAULT NULL,
  `id_temp` int(11) DEFAULT NULL,
  `id_control` int(11) DEFAULT NULL,
  `cantidad` decimal(4,4) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_edad_temp`
--

INSERT INTO `grupo_edad_temp` (`id`, `id_edad`, `id_temp`, `id_control`, `cantidad`, `estado`, `deleted_at`) VALUES
(169, 25, 64, 38, '0.0150', 1, NULL),
(170, 25, 65, 38, '0.0133', 1, NULL),
(171, 25, 66, 38, '0.4640', 1, NULL),
(172, 25, 67, 38, '0.4163', 1, NULL),
(173, 25, 68, 38, '0.7640', 1, NULL),
(174, 25, 69, 38, '0.0467', 1, NULL),
(175, 25, 70, 38, '0.0417', 1, NULL),
(176, 26, 64, 38, '0.0168', 1, NULL),
(177, 26, 65, 38, '0.2130', 1, NULL),
(178, 26, 66, 38, '0.1347', 1, NULL),
(179, 26, 67, 38, '0.1674', 1, NULL),
(180, 26, 68, 38, '0.0379', 1, NULL),
(181, 26, 69, 38, '0.0364', 1, NULL),
(182, 26, 70, 38, '0.2167', 1, NULL),
(183, 27, 64, 38, '0.1746', 1, NULL),
(184, 27, 65, 38, '0.1673', 1, NULL),
(185, 27, 66, 38, '0.1647', 1, NULL),
(186, 27, 67, 38, '0.2165', 1, NULL),
(187, 27, 68, 38, '0.1367', 1, NULL),
(188, 27, 69, 38, '0.2167', 1, NULL),
(189, 27, 70, 38, '0.1367', 1, NULL),
(190, 28, 64, 38, '0.2167', 1, NULL),
(191, 28, 65, 38, '0.2169', 1, NULL),
(192, 28, 66, 38, '0.1394', 1, NULL),
(193, 28, 67, 38, '0.2169', 1, NULL),
(194, 28, 68, 38, '0.2060', 1, NULL),
(195, 28, 69, 38, '0.1369', 1, NULL),
(196, 28, 70, 38, '0.0387', 1, NULL),
(197, 29, 71, 39, '0.0150', 1, NULL),
(198, 29, 72, 39, '0.1560', 1, NULL),
(199, 29, 73, 39, '0.1540', 1, NULL),
(200, 30, 71, 39, '0.7500', 1, NULL),
(201, 30, 72, 39, '0.7890', 1, NULL),
(202, 30, 73, 39, '0.4760', 1, NULL),
(203, 31, 74, 40, '0.0155', 1, NULL),
(204, 31, 75, 40, '0.0817', 1, NULL),
(205, 31, 76, 40, '0.0171', 1, NULL),
(206, 32, 74, 40, '0.0141', 1, NULL),
(207, 32, 75, 40, '0.0171', 1, NULL),
(208, 32, 76, 40, '0.0442', 1, NULL),
(212, 41, 71, 39, '0.0320', 1, NULL),
(213, 41, 72, 39, '0.0450', 1, NULL),
(214, 41, 73, 39, '0.0560', 1, NULL),
(215, 42, 74, 40, '0.0160', 1, NULL),
(216, 42, 75, 40, '0.0270', 1, NULL),
(217, 42, 76, 40, '0.0350', 1, NULL),
(218, 43, 71, 39, '0.0116', 1, NULL),
(219, 43, 72, 39, '0.0154', 1, NULL),
(220, 43, 73, 39, '0.0167', 1, NULL),
(221, 44, 74, 40, '0.0200', 1, NULL),
(222, 44, 75, 40, '0.0300', 1, NULL),
(223, 44, 76, 40, '0.0400', 1, NULL),
(224, 31, 77, 40, '0.0150', 1, NULL),
(225, 32, 77, 40, '0.0160', 1, NULL),
(226, 42, 77, 40, '0.0170', 1, NULL),
(227, 44, 77, 40, '0.0180', 1, NULL),
(228, 31, 78, 40, '0.1000', 1, NULL),
(229, 32, 78, 40, '0.2000', 1, NULL),
(230, 42, 78, 40, '0.3000', 1, NULL),
(231, 44, 78, 40, '0.4000', 1, NULL),
(232, 45, 79, 44, '0.1000', 1, NULL),
(233, 45, 80, 44, '0.0200', 1, NULL),
(234, 45, 81, 44, '0.0300', 1, NULL),
(235, 46, 79, 44, '0.0400', 1, NULL),
(236, 46, 80, 44, '0.0500', 1, NULL),
(237, 46, 81, 44, '0.0600', 1, NULL),
(238, 47, 79, 44, '0.0700', 1, NULL),
(239, 47, 80, 44, '0.0800', 1, NULL),
(240, 47, 81, 44, '0.0900', 1, NULL),
(241, 48, 79, 44, '0.0100', 1, NULL),
(242, 48, 80, 44, '0.0111', 1, NULL),
(243, 48, 81, 44, '0.0120', 1, NULL),
(244, 49, 79, 44, '0.0130', 1, NULL),
(245, 49, 80, 44, '0.0140', 1, NULL),
(246, 49, 81, 44, '0.0150', 1, NULL),
(247, 45, 82, 44, '0.1450', 1, NULL),
(248, 46, 82, 44, '0.1350', 1, NULL),
(249, 47, 82, 44, '0.0135', 1, NULL),
(250, 48, 82, 44, '0.0860', 1, NULL),
(251, 49, 82, 44, '0.0968', 1, NULL),
(252, 50, 82, 44, '0.0350', 1, NULL),
(253, 50, 79, 44, '0.0150', 1, NULL),
(254, 50, 80, 44, '0.0169', 1, NULL),
(255, 50, 81, 44, '0.0350', 1, NULL),
(256, 51, 83, 45, '0.0210', 1, NULL),
(257, 51, 84, 45, '0.0153', 1, NULL),
(258, 51, 85, 45, '0.1100', 1, NULL),
(259, 52, 83, 45, '0.1230', 1, NULL),
(260, 52, 84, 45, '0.1570', 1, NULL),
(261, 52, 85, 45, '0.1370', 1, NULL),
(262, 53, 83, 45, '0.3450', 1, NULL),
(263, 53, 84, 45, '0.0147', 1, NULL),
(264, 53, 85, 45, '0.1240', 1, NULL),
(265, 54, 83, 45, '0.0123', 1, NULL),
(266, 54, 84, 45, '0.1250', 1, NULL),
(267, 54, 85, 45, '0.0134', 1, NULL),
(268, 55, 83, 45, '0.0123', 1, NULL),
(269, 55, 84, 45, '0.0157', 1, NULL),
(270, 55, 85, 45, '0.1015', 1, NULL),
(271, 56, 83, 45, '0.0134', 1, NULL),
(272, 56, 84, 45, '0.1015', 1, NULL),
(273, 56, 85, 45, '0.0134', 1, NULL),
(274, 57, 86, 54, '0.0167', 1, NULL),
(275, 57, 87, 54, '0.0369', 1, NULL),
(276, 57, 88, 54, '0.0147', 1, NULL),
(277, 58, 86, 54, '0.0369', 1, NULL),
(278, 58, 87, 54, '0.0136', 1, NULL),
(279, 58, 88, 54, '0.0147', 1, NULL),
(280, 59, 86, 54, '0.0369', 1, NULL),
(281, 59, 87, 54, '0.0147', 1, NULL),
(282, 59, 88, 54, '0.0159', 1, NULL),
(283, 60, 86, 54, '0.0369', 1, NULL),
(284, 60, 87, 54, '0.0135', 1, NULL),
(285, 60, 88, 54, '0.0369', 1, NULL),
(286, 61, 86, 54, '0.0147', 1, NULL),
(287, 61, 87, 54, '0.0336', 1, NULL),
(288, 61, 88, 54, '0.0147', 1, NULL),
(289, 62, 86, 54, '0.0369', 1, NULL),
(290, 62, 87, 54, '0.0147', 1, NULL),
(291, 62, 88, 54, '0.0146', 1, NULL),
(292, 63, 89, 55, '0.0150', 1, NULL),
(293, 63, 90, 55, '0.0230', 1, NULL),
(294, 63, 91, 55, '0.0360', 1, NULL),
(295, 64, 89, 55, '0.0147', 1, NULL),
(296, 64, 90, 55, '0.0144', 1, NULL),
(297, 64, 91, 55, '0.0153', 1, NULL),
(298, 65, 89, 55, '0.0136', 1, NULL),
(299, 65, 90, 55, '0.0167', 1, NULL),
(300, 65, 91, 55, '0.0369', 1, NULL),
(301, 66, 89, 55, '0.0147', 1, NULL),
(302, 66, 90, 55, '0.0147', 1, NULL),
(303, 66, 91, 55, '0.1531', 1, NULL),
(304, 67, 89, 55, '0.0137', 1, NULL),
(305, 67, 90, 55, '0.0169', 1, NULL),
(306, 67, 91, 55, '0.0135', 1, NULL),
(307, 68, 89, 55, '0.0369', 1, NULL),
(308, 68, 90, 55, '0.0147', 1, NULL),
(309, 68, 91, 55, '0.0153', 1, NULL),
(312, 85, 113, 60, '0.0150', 1, NULL),
(313, 85, 114, 60, '0.0168', 1, NULL),
(314, 85, 115, 60, '0.1746', 1, NULL),
(315, 85, 116, 60, '0.2167', 1, NULL),
(316, 85, 117, 60, '0.0133', 1, NULL),
(317, 85, 118, 60, '0.2130', 1, NULL),
(318, 85, 119, 60, '0.1673', 1, NULL),
(319, 86, 113, 60, '0.2169', 1, NULL),
(320, 86, 114, 60, '0.4640', 1, NULL),
(321, 86, 115, 60, '0.1347', 1, NULL),
(322, 86, 116, 60, '0.1647', 1, NULL),
(323, 86, 117, 60, '0.1394', 1, NULL),
(324, 86, 118, 60, '0.4163', 1, NULL),
(325, 86, 119, 60, '0.1674', 1, NULL),
(326, 87, 113, 60, '0.2165', 1, NULL),
(327, 87, 114, 60, '0.2169', 1, NULL),
(328, 87, 115, 60, '0.7640', 1, NULL),
(329, 87, 116, 60, '0.0379', 1, NULL),
(330, 87, 117, 60, '0.1367', 1, NULL),
(331, 87, 118, 60, '0.2060', 1, NULL),
(332, 87, 119, 60, '0.0467', 1, NULL),
(333, 88, 113, 60, '0.0364', 1, NULL),
(334, 88, 114, 60, '0.2167', 1, NULL),
(335, 88, 115, 60, '0.1369', 1, NULL),
(336, 88, 116, 60, '0.0417', 1, NULL),
(337, 88, 117, 60, '0.2167', 1, NULL),
(338, 88, 118, 60, '0.1367', 1, NULL),
(339, 88, 119, 60, '0.0387', 1, NULL),
(340, 89, 120, 61, '0.0150', 1, NULL),
(341, 89, 121, 61, '0.0168', 1, NULL),
(342, 89, 122, 61, '0.1746', 1, NULL),
(343, 89, 123, 61, '0.2167', 1, NULL),
(344, 89, 124, 61, '0.0133', 1, NULL),
(345, 89, 125, 61, '0.2130', 1, NULL),
(346, 89, 126, 61, '0.1673', 1, NULL),
(347, 90, 120, 61, '0.2169', 1, NULL),
(348, 90, 121, 61, '0.4640', 1, NULL),
(349, 90, 122, 61, '0.1347', 1, NULL),
(350, 90, 123, 61, '0.1647', 1, NULL),
(351, 90, 124, 61, '0.1394', 1, NULL),
(352, 90, 125, 61, '0.4163', 1, NULL),
(353, 90, 126, 61, '0.1674', 1, NULL),
(354, 91, 120, 61, '0.2165', 1, NULL),
(355, 91, 121, 61, '0.2169', 1, NULL),
(356, 91, 122, 61, '0.7640', 1, NULL),
(357, 91, 123, 61, '0.0379', 1, NULL),
(358, 91, 124, 61, '0.1367', 1, NULL),
(359, 91, 125, 61, '0.2060', 1, NULL),
(360, 91, 126, 61, '0.0467', 1, NULL),
(361, 92, 120, 61, '0.0364', 1, NULL),
(362, 92, 121, 61, '0.2167', 1, NULL),
(363, 92, 122, 61, '0.1369', 1, NULL),
(364, 92, 123, 61, '0.0417', 1, NULL),
(365, 92, 124, 61, '0.2167', 1, NULL),
(366, 92, 125, 61, '0.1367', 1, NULL),
(367, 92, 126, 61, '0.0387', 1, NULL),
(368, 93, 120, 61, '0.0014', 1, NULL),
(369, 93, 121, 61, '0.0314', 1, NULL),
(370, 93, 122, 61, '0.0136', 1, NULL),
(371, 93, 123, 61, '0.0134', 1, NULL),
(372, 93, 124, 61, '0.0385', 1, NULL),
(373, 93, 125, 61, '0.0314', 1, NULL),
(374, 93, 126, 61, '0.0135', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_temperatura`
--

CREATE TABLE `grupo_temperatura` (
  `id` int(11) NOT NULL,
  `temp_min` int(11) DEFAULT NULL,
  `temp_max` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_temperatura`
--

INSERT INTO `grupo_temperatura` (`id`, `temp_min`, `temp_max`, `estado`, `deleted_at`) VALUES
(64, 10, 15, 1, NULL),
(65, 16, 18, 1, NULL),
(66, 19, 25, 1, NULL),
(67, 26, 28, 1, NULL),
(68, 29, 30, 1, NULL),
(69, 31, 34, 1, NULL),
(70, 35, 37, 1, NULL),
(71, 9, 15, 1, NULL),
(72, 26, 28, 1, NULL),
(73, 29, 35, 1, NULL),
(74, 9, 15, 1, NULL),
(75, 19, 25, 1, NULL),
(76, 29, 30, 1, NULL),
(77, 31, 40, 1, NULL),
(78, 41, 49, 1, NULL),
(79, 9, 15, 1, NULL),
(80, 19, 25, 1, NULL),
(81, 29, 30, 1, NULL),
(82, 0, 8, 1, NULL),
(83, 9, 15, 1, NULL),
(84, 19, 25, 1, NULL),
(85, 29, 30, 1, NULL),
(86, 9, 15, 1, NULL),
(87, 19, 25, 1, NULL),
(88, 29, 30, 1, NULL),
(89, 9, 15, 1, NULL),
(90, 19, 25, 1, NULL),
(91, 29, 30, 1, NULL),
(113, 10, 15, 1, NULL),
(114, 16, 18, 1, NULL),
(115, 19, 25, 1, NULL),
(116, 26, 28, 1, NULL),
(117, 29, 30, 1, NULL),
(118, 31, 34, 1, NULL),
(119, 35, 37, 1, NULL),
(120, 10, 15, 1, NULL),
(121, 16, 18, 1, NULL),
(122, 19, 25, 1, NULL),
(123, 26, 28, 1, NULL),
(124, 29, 30, 1, NULL),
(125, 31, 34, 1, NULL),
(126, 35, 37, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huevo`
--

CREATE TABLE `huevo` (
  `id` int(11) NOT NULL,
  `cantidad_maple` int(11) DEFAULT NULL,
  `cantidad_huevo` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_tipo_huevo` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `huevo`
--

INSERT INTO `huevo` (`id`, `cantidad_maple`, `cantidad_huevo`, `fecha`, `id_tipo_huevo`, `deleted_at`) VALUES
(1, 20, 600, '2017-02-05 14:30:23', 2, NULL),
(2, 8, 240, '2017-02-05 14:31:17', 3, NULL),
(3, 17, 510, '2017-02-06 14:33:38', 2, NULL),
(4, 10, 300, '2017-02-06 14:33:57', 3, NULL),
(5, 13, 390, '2017-02-08 20:58:40', 2, NULL),
(6, 2, 30, '2017-02-08 20:58:09', 1, NULL),
(7, 8, 240, '2017-02-08 20:58:46', 3, NULL),
(8, 1, 15, '2017-02-09 20:16:18', 1, NULL),
(9, 11, 330, '2017-02-09 20:16:33', 2, NULL),
(10, 7, 210, '2017-02-09 20:16:46', 3, NULL),
(11, 9, 270, '2017-02-10 19:23:11', 2, NULL),
(12, 7, 210, '2017-02-10 19:23:37', 3, NULL),
(13, 7, 210, '2017-02-11 19:05:16', 3, NULL),
(14, 11, 330, '2017-02-11 19:06:24', 2, NULL),
(15, 1, 15, '2017-02-11 19:08:05', 1, NULL),
(16, 7, 210, '2017-02-12 15:44:29', 3, NULL),
(17, 12, 360, '2017-02-12 15:44:42', 2, NULL),
(18, 16, 480, '2017-02-13 19:09:40', 2, NULL),
(19, 8, 240, '2017-02-13 19:09:52', 3, NULL),
(20, 1, 15, '2017-02-13 19:12:02', 1, NULL),
(21, 14, 420, '2017-02-14 18:39:58', 2, NULL),
(22, 8, 240, '2017-02-14 18:41:45', 3, NULL),
(23, 5, 150, '2017-02-15 19:21:55', 3, NULL),
(24, 18, 540, '2017-02-15 19:22:35', 2, NULL),
(25, 1, 15, '2017-02-15 19:25:04', 1, NULL),
(26, 10, 300, '2017-02-16 21:10:16', 2, NULL),
(27, 10, 300, '2017-02-16 21:10:24', 3, NULL),
(28, 13, 390, '2017-02-17 18:36:24', 2, NULL),
(29, 7, 210, '2017-02-17 18:36:37', 3, NULL),
(30, 1, 15, '2017-02-18 18:44:29', 1, NULL),
(31, 13, 390, '2017-02-18 18:44:45', 2, NULL),
(32, 8, 240, '2017-02-18 18:44:53', 3, NULL),
(33, 14, 420, '2017-02-19 15:48:35', 2, NULL),
(34, 7, 210, '2017-02-19 15:49:17', 3, NULL),
(35, 16, 480, '2017-02-20 19:22:08', 2, NULL),
(36, 8, 240, '2017-02-20 19:22:15', 3, NULL),
(37, 17, 510, '2017-02-21 19:08:00', 2, NULL),
(38, 8, 240, '2017-02-21 19:08:14', 3, NULL),
(39, 14, 420, '2017-02-22 18:59:07', 2, NULL),
(40, 7, 210, '2017-02-22 18:59:15', 3, NULL),
(41, 1, 15, '2017-02-22 19:00:23', 1, NULL),
(42, 15, 450, '2017-02-23 21:31:22', 2, NULL),
(43, 7, 210, '2017-02-23 21:31:32', 3, NULL),
(44, 3, 90, '2017-02-23 23:49:46', 5, NULL),
(45, 18, 540, '2017-02-24 19:10:10', 2, NULL),
(46, 8, 240, '2017-02-24 19:10:18', 3, NULL),
(47, 1, 15, '2017-02-24 19:11:26', 1, NULL),
(48, 14, 420, '2017-02-25 19:11:48', 2, NULL),
(49, 7, 210, '2017-02-25 19:12:00', 3, NULL),
(50, 1, 15, '2017-02-25 19:12:40', 1, NULL),
(51, 11, 330, '2017-02-26 15:55:51', 2, NULL),
(52, 11, 330, '2017-02-26 16:16:02', 3, NULL),
(53, 2, 30, '2017-02-26 15:57:02', 1, NULL),
(54, 15, 450, '2017-02-27 16:03:42', 2, NULL),
(55, 6, 180, '2017-02-27 16:03:50', 3, NULL),
(56, 17, 510, '2017-02-28 15:53:44', 2, NULL),
(57, 9, 270, '2017-02-28 15:54:03', 3, NULL),
(58, 1, 15, '2017-02-28 15:54:13', 1, NULL),
(59, 20, 600, '2017-03-01 19:33:30', 2, NULL),
(60, 10, 300, '2017-03-01 19:33:47', 3, NULL),
(61, 1, 15, '2017-03-01 19:33:58', 1, NULL),
(62, 2, 60, '2017-03-02 17:55:23', 5, NULL),
(63, 16, 480, '2017-03-02 19:26:39', 2, NULL),
(64, 9, 270, '2017-03-02 19:26:47', 3, NULL),
(65, 1, 15, '2017-03-02 19:26:57', 1, NULL),
(66, 16, 480, '2017-03-03 19:00:08', 2, NULL),
(67, 10, 300, '2017-03-03 19:00:40', 3, NULL),
(68, 1, 15, '2017-03-03 19:00:56', 1, NULL),
(69, 19, 570, '2017-03-04 19:03:33', 2, NULL),
(70, 8, 240, '2017-03-04 19:04:22', 3, NULL),
(71, 1, 15, '2017-03-04 19:05:23', 1, NULL),
(72, 1, 15, '2017-03-05 15:48:33', 1, NULL),
(73, 16, 480, '2017-03-05 15:49:16', 2, NULL),
(74, 7, 210, '2017-03-05 15:49:25', 3, NULL),
(75, 17, 510, '2017-03-06 19:25:35', 2, NULL),
(76, 10, 300, '2017-03-06 19:25:45', 3, NULL),
(77, 2, 60, '2017-03-07 01:49:20', 5, NULL),
(78, 19, 570, '2017-03-07 19:25:44', 2, NULL),
(79, 6, 180, '2017-03-07 19:25:58', 3, NULL),
(80, 20, 600, '2017-03-08 19:52:02', 2, NULL),
(81, 8, 240, '2017-03-08 19:52:23', 3, NULL),
(82, 1, 15, '2017-03-08 20:03:05', 1, NULL),
(83, 15, 450, '2017-03-09 19:01:11', 2, NULL),
(84, 9, 270, '2017-03-09 19:01:21', 3, NULL),
(85, 19, 570, '2017-03-10 19:16:14', 2, NULL),
(86, 9, 270, '2017-03-10 19:16:21', 3, NULL),
(87, 1, 15, '2017-03-10 19:16:31', 1, NULL),
(88, 9, 270, '2017-03-11 19:01:43', 3, NULL),
(89, 1, 15, '2017-03-11 19:03:32', 1, NULL),
(90, 1, 15, '2017-03-12 15:43:50', 1, NULL),
(91, 7, 210, '2017-03-12 15:43:59', 3, NULL),
(92, 2, 60, '2017-03-12 15:44:53', 2, NULL),
(93, 12, 360, '2017-03-13 19:34:16', 3, NULL),
(94, 3, 90, '2017-03-13 16:13:00', 5, NULL),
(95, 1, 15, '2017-03-13 19:34:56', 1, NULL),
(96, 20, 600, '2017-03-14 19:28:11', 2, NULL),
(97, 10, 300, '2017-03-14 19:18:18', 3, NULL),
(98, 2, 30, '2017-03-14 19:26:37', 1, NULL),
(99, 29, 870, '2017-03-15 19:18:48', 2, NULL),
(100, 26, 780, '2017-03-15 19:15:59', 3, NULL),
(101, 1, 15, '2017-03-15 19:21:51', 1, NULL),
(102, 2, 60, '2017-03-16 16:00:04', 5, NULL),
(103, 13, 390, '2017-03-16 19:15:06', 2, NULL),
(104, 10, 300, '2017-03-16 19:15:37', 3, NULL),
(105, 21, 630, '2017-03-17 19:09:52', 2, NULL),
(106, 9, 270, '2017-03-17 19:10:16', 3, NULL),
(107, 2, 30, '2017-03-17 19:10:32', 1, NULL),
(108, 24, 720, '2017-03-18 20:02:21', 2, NULL),
(109, 8, 240, '2017-03-18 20:02:29', 3, NULL),
(110, 1, 15, '2017-03-18 20:02:45', 1, NULL),
(111, 5, 150, '2017-03-19 15:45:37', 3, NULL),
(112, 2, 30, '2017-03-19 15:46:11', 1, NULL),
(113, 24, 720, '2017-03-19 15:48:51', 2, NULL),
(114, 3, 90, '2017-03-20 18:08:03', 5, NULL),
(115, 18, 540, '2017-03-20 19:31:27', 2, NULL),
(116, 11, 330, '2017-03-20 19:31:54', 3, NULL),
(117, 1, 15, '2017-03-20 19:32:08', 1, NULL),
(118, 17, 510, '2017-03-21 19:09:48', 2, NULL),
(119, 10, 300, '2017-03-21 19:10:04', 3, NULL),
(120, 1, 15, '2017-03-21 19:10:13', 1, NULL),
(121, 16, 480, '2017-03-22 19:11:29', 2, NULL),
(122, 9, 270, '2017-03-22 19:11:43', 3, NULL),
(123, 1, 15, '2017-03-22 19:11:57', 1, NULL),
(124, 17, 510, '2017-03-23 19:29:49', 2, NULL),
(125, 9, 270, '2017-03-23 19:30:27', 3, NULL),
(126, 3, 90, '2017-03-23 18:04:18', 5, NULL),
(127, 1, 15, '2017-03-23 19:30:53', 1, NULL),
(128, 17, 510, '2017-03-24 19:29:35', 2, NULL),
(129, 9, 270, '2017-03-24 19:30:02', 3, NULL),
(130, 1, 15, '2017-03-24 19:31:10', 1, NULL),
(131, 14, 420, '2017-03-25 19:09:24', 2, NULL),
(132, 7, 210, '2017-03-25 19:09:59', 3, NULL),
(133, 1, 15, '2017-03-25 19:10:39', 1, NULL),
(134, 15, 450, '2017-03-26 15:41:50', 2, NULL),
(135, 8, 240, '2017-03-26 15:42:12', 3, NULL),
(136, 1, 15, '2017-03-26 15:42:45', 1, NULL),
(137, 3, 90, '2017-03-27 18:01:27', 5, NULL),
(138, 9, 270, '2017-03-27 19:33:10', 3, NULL),
(139, 16, 480, '2017-03-28 18:42:59', 2, NULL),
(140, 8, 240, '2017-03-28 18:43:05', 3, NULL),
(141, 2, 30, '2017-03-28 18:43:13', 1, NULL),
(142, 12, 360, '2017-03-29 19:15:53', 2, NULL),
(143, 8, 240, '2017-03-29 19:16:01', 3, NULL),
(144, 3, 90, '2017-03-30 18:00:31', 5, NULL),
(145, 3, 90, '2017-03-30 19:11:59', 2, NULL),
(146, 6, 180, '2017-03-30 19:12:28', 3, NULL),
(147, 16, 480, '2017-03-31 19:14:33', 2, NULL),
(148, 6, 180, '2017-03-31 19:14:42', 3, NULL),
(149, 1, 15, '2017-03-31 19:14:51', 1, NULL),
(150, 13, 390, '2017-04-01 21:51:18', 2, NULL),
(151, 6, 180, '2017-04-01 21:51:27', 3, NULL),
(152, 1, 15, '2017-04-01 21:51:42', 1, NULL),
(153, 13, 390, '2017-04-02 16:03:16', 2, NULL),
(154, 5, 150, '2017-04-02 16:03:22', 3, NULL),
(155, 1, 15, '2017-04-02 16:03:31', 1, NULL),
(156, 2, 60, '2017-04-03 18:07:44', 5, NULL),
(157, 11, 330, '2017-04-03 19:11:18', 2, NULL),
(158, 9, 270, '2017-04-03 19:11:32', 3, NULL),
(159, 1, 15, '2017-04-03 19:11:40', 1, NULL),
(160, 14, 420, '2017-04-04 19:13:11', 2, NULL),
(161, 7, 210, '2017-04-04 19:13:17', 3, NULL),
(162, 17, 510, '2017-04-05 19:03:11', 2, NULL),
(163, 8, 240, '2017-04-05 19:03:27', 3, NULL),
(164, 1, 15, '2017-04-05 19:03:45', 1, NULL),
(165, 1, 15, '2017-04-06 13:32:25', 1, NULL),
(166, 1, 30, '2017-04-06 15:59:21', 5, NULL),
(167, 18, 540, '2017-04-06 19:20:23', 2, NULL),
(168, 7, 210, '2017-04-06 19:20:31', 3, NULL),
(169, 17, 510, '2017-04-07 19:31:16', 2, NULL),
(170, 7, 210, '2017-04-07 19:31:22', 3, NULL),
(171, 2, 30, '2017-04-07 19:31:35', 1, NULL),
(172, 7, 210, '2017-04-08 19:24:39', 3, NULL),
(173, 21, 630, '2017-04-08 20:49:31', 2, NULL),
(174, 1, 15, '2017-04-08 20:49:39', 1, NULL),
(175, 14, 420, '2017-04-09 15:33:52', 2, NULL),
(176, 5, 150, '2017-04-09 15:34:01', 3, NULL),
(177, 1, 15, '2017-04-09 15:34:09', 1, NULL),
(178, 1, 30, '2017-04-10 18:02:22', 5, NULL),
(179, 15, 450, '2017-04-10 20:13:31', 2, NULL),
(180, 8, 240, '2017-04-10 20:16:22', 3, NULL),
(181, 22, 660, '2017-04-11 19:00:15', 2, NULL),
(182, 3, 45, '2017-04-11 19:00:33', 1, NULL),
(183, 4, 120, '2017-04-11 19:00:51', 3, NULL);

--
-- Disparadores `huevo`
--
DELIMITER $$
CREATE TRIGGER `actualizar_huevo_deposito` AFTER UPDATE ON `huevo` FOR EACH ROW BEGIN
DECLARE maples integer;
DECLARE huevos integer;
SET maples = NEW.cantidad_maple - OLD.cantidad_maple;
SET huevos = NEW.cantidad_huevo - OLD.cantidad_huevo;

       UPDATE huevo_deposito SET huevo_deposito.cantidad_maple = huevo_deposito.cantidad_maple + maples
       WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo; 
       UPDATE huevo_deposito SET huevo_deposito.cantidad_huevo = huevo_deposito.cantidad_huevo + huevos
       WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo;  
       UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad - huevos;       
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `registrar_huevo_deposito` AFTER INSERT ON `huevo` FOR EACH ROW BEGIN
IF EXISTS(SELECT * from huevo_deposito WHERE id_tipo_huevo=NEW.id_tipo_huevo )THEN 
 UPDATE huevo_deposito SET huevo_deposito.cantidad_maple = huevo_deposito.cantidad_maple + NEW.cantidad_maple
 WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo; 
 
 UPDATE huevo_deposito SET huevo_deposito.cantidad_huevo = huevo_deposito.cantidad_huevo + NEW.cantidad_huevo
 WHERE huevo_deposito.id_tipo_huevo = NEW.id_tipo_huevo;  
 UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad - NEW.cantidad_huevo;
ELSE
 INSERT INTO huevo_deposito SET huevo_deposito.cantidad_maple=NEW.cantidad_maple, huevo_deposito.cantidad_huevo=NEW.cantidad_huevo, huevo_deposito.id_tipo_huevo=NEW.id_tipo_huevo;
 UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad - NEW.cantidad_huevo;
END IF; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huevo_acumulado`
--

CREATE TABLE `huevo_acumulado` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `huevo_acumulado`
--

INSERT INTO `huevo_acumulado` (`id`, `cantidad`, `deleted_at`) VALUES
(1, 9067, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huevo_deposito`
--

CREATE TABLE `huevo_deposito` (
  `id` int(11) NOT NULL,
  `cantidad_maple` int(11) NOT NULL,
  `cantidad_huevo` int(11) DEFAULT NULL,
  `id_tipo_huevo` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `huevo_deposito`
--

INSERT INTO `huevo_deposito` (`id`, `cantidad_maple`, `cantidad_huevo`, `id_tipo_huevo`, `deleted_at`) VALUES
(1, 36, 1080, 2, NULL),
(2, 12, 360, 3, NULL),
(3, 3, 45, 1, NULL),
(4, 0, 0, 5, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_varios`
--

CREATE TABLE `ingreso_varios` (
  `id` int(11) NOT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maple`
--

CREATE TABLE `maple` (
  `id` int(11) NOT NULL,
  `tamano` varchar(15) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maple`
--

INSERT INTO `maple` (`id`, `tamano`, `cantidad`, `deleted_at`) VALUES
(1, 'GRANDE', 20, NULL),
(2, 'COMUN', 30, NULL),
(3, 'XX GRANDE', 15, NULL),
(4, 'chorreado', 30, '2017-02-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postergar_vacuna`
--

CREATE TABLE `postergar_vacuna` (
  `id` int(11) NOT NULL,
  `id_control_vacuna` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `postergar_vacuna`
--

INSERT INTO `postergar_vacuna` (`id`, `id_control_vacuna`, `estado`, `fecha`, `deleted_at`) VALUES
(1, 36, 1, '2017-04-12 13:49:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postura_huevo`
--

CREATE TABLE `postura_huevo` (
  `id` int(11) NOT NULL,
  `celda1` int(11) DEFAULT NULL,
  `celda2` int(11) DEFAULT NULL,
  `celda3` int(11) DEFAULT NULL,
  `celda4` int(11) DEFAULT NULL,
  `postura_p` int(11) DEFAULT NULL,
  `cantidad_total` int(11) DEFAULT NULL,
  `cantidad_muertas` int(11) NOT NULL,
  `id_fases_galpon` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postura_huevo`
--

INSERT INTO `postura_huevo` (`id`, `celda1`, `celda2`, `celda3`, `celda4`, `postura_p`, `cantidad_total`, `cantidad_muertas`, `id_fases_galpon`, `fecha`, `deleted_at`) VALUES
(1, 852, 755, 0, 0, 84, 1607, 0, 1, '2017-02-08 15:07:35', NULL),
(2, 880, 745, 0, 0, 87, 1625, 0, 3, '2017-02-08 15:07:50', NULL),
(3, 955, 810, 0, 0, 96, 1765, 0, 4, '2017-02-08 15:08:07', NULL),
(4, 1305, 540, 0, 0, 98, 1845, 0, 5, '2017-02-08 15:08:26', NULL),
(5, 1052, 570, 0, 0, 84, 1622, 0, 6, '2017-02-08 15:08:42', NULL),
(6, 1360, 377, 0, 0, 90, 1737, 0, 7, '2017-02-08 15:09:12', NULL),
(7, 1635, 263, 0, 0, 98, 1898, 0, 8, '2017-02-08 15:09:23', NULL),
(8, 935, 752, 0, 0, 88, 1687, 0, 1, '2017-02-09 11:55:42', NULL),
(9, 927, 718, 0, 0, 88, 1645, 0, 3, '2017-02-09 12:18:13', NULL),
(10, 1045, 750, 0, 0, 97, 1795, 0, 4, '2017-02-09 12:36:12', NULL),
(11, 1403, 431, 0, 0, 98, 1834, 0, 5, '2017-02-09 12:59:36', NULL),
(12, 1210, 526, 0, 0, 90, 1736, 0, 6, '2017-02-09 13:21:48', NULL),
(13, 1432, 315, 0, 0, 91, 1747, 0, 7, '2017-02-09 13:48:35', NULL),
(14, 1620, 250, 0, 0, 97, 1870, 0, 8, '2017-02-09 14:16:00', NULL),
(15, 942, 728, 0, 0, 87, 1670, 0, 1, '2017-02-10 12:02:58', NULL),
(16, 937, 668, 0, 0, 87, 1605, 0, 3, '2017-02-10 12:23:00', NULL),
(17, 1015, 786, 0, 0, 90, 1801, 0, 4, '2017-02-10 12:41:46', NULL),
(18, 1381, 480, 0, 0, 95, 1861, 3, 5, '2017-02-10 13:04:29', NULL),
(19, 1232, 510, 0, 0, 90, 1742, 0, 6, '2017-02-10 13:26:29', NULL),
(20, 1452, 302, 0, 0, 91, 1754, 0, 7, '2017-02-10 13:50:38', NULL),
(21, 1656, 220, 0, 0, 81, 1876, 2, 8, '2017-02-10 14:18:47', NULL),
(22, 892, 748, 0, 0, 85, 1640, 0, 1, '2017-02-11 11:52:46', NULL),
(23, 900, 688, 0, 0, 86, 1588, 0, 3, '2017-02-11 12:11:40', NULL),
(24, 920, 835, 0, 0, 88, 1755, 2, 4, '2017-02-11 12:29:03', NULL),
(25, 1268, 538, 0, 0, 92, 1806, 0, 5, '2017-02-11 12:49:25', NULL),
(26, 1080, 608, 0, 0, 88, 1688, 1, 6, '2017-02-11 13:09:42', NULL),
(27, 1328, 386, 0, 0, 89, 1714, 1, 7, '2017-02-11 13:35:05', NULL),
(28, 1612, 265, 0, 0, 81, 1877, 4, 8, '2017-02-11 14:03:03', NULL),
(29, 942, 746, 0, 0, 88, 1688, 0, 1, '2017-02-12 11:50:33', NULL),
(30, 920, 718, 0, 0, 88, 1638, 1, 3, '2017-02-12 12:10:20', NULL),
(31, 918, 838, 0, 0, 88, 1756, 0, 4, '2017-02-12 12:23:17', NULL),
(32, 1308, 542, 0, 0, 95, 1850, 2, 5, '2017-02-12 12:45:10', NULL),
(33, 1135, 628, 0, 0, 92, 1763, 1, 6, '2017-02-12 13:08:06', NULL),
(34, 1375, 370, 0, 0, 91, 1745, 0, 7, '2017-02-12 13:35:39', NULL),
(35, 1635, 252, 0, 0, 82, 1887, 1, 8, '2017-02-12 14:00:02', NULL),
(36, 920, 730, 0, 0, 86, 1650, 0, 1, '2017-02-13 11:51:05', NULL),
(37, 962, 678, 0, 0, 89, 1640, 0, 3, '2017-02-13 12:12:28', NULL),
(38, 1033, 770, 0, 0, 90, 1803, 0, 4, '2017-02-13 12:31:52', NULL),
(39, 1411, 420, 0, 0, 94, 1831, 2, 5, '2017-02-13 12:55:56', NULL),
(40, 1170, 528, 0, 0, 88, 1698, 1, 6, '2017-02-13 13:17:20', NULL),
(41, 1408, 302, 0, 0, 89, 1710, 1, 7, '2017-02-13 13:42:28', NULL),
(42, 1645, 210, 0, 0, 80, 1855, 1, 8, '2017-02-13 14:10:52', NULL),
(43, 940, 712, 0, 0, 86, 1652, 0, 1, '2017-02-14 11:52:36', NULL),
(44, 925, 693, 0, 0, 87, 1618, 0, 3, '2017-02-14 12:12:55', NULL),
(45, 994, 808, 0, 0, 90, 1802, 0, 4, '2017-02-14 12:30:31', NULL),
(46, 1375, 458, 0, 0, 94, 1833, 0, 5, '2017-02-14 12:53:35', NULL),
(47, 1178, 526, 0, 0, 89, 1704, 2, 6, '2017-02-14 13:15:09', NULL),
(48, 1420, 325, 0, 0, 91, 1745, 0, 7, '2017-02-14 13:41:15', NULL),
(49, 1660, 230, 0, 0, 82, 1890, 5, 8, '2017-02-14 14:08:30', NULL),
(50, 930, 740, 0, 0, 87, 1670, 1, 1, '2017-02-15 11:57:11', NULL),
(51, 936, 702, 0, 0, 88, 1638, 0, 3, '2017-02-15 12:18:23', NULL),
(52, 962, 802, 0, 0, 88, 1764, 1, 4, '2017-02-15 12:35:05', NULL),
(53, 1326, 488, 0, 0, 93, 1814, 0, 5, '2017-02-15 12:58:19', NULL),
(54, 1192, 543, 0, 0, 90, 1735, 1, 6, '2017-02-15 13:19:34', NULL),
(55, 1428, 325, 0, 0, 91, 1753, 0, 7, '2017-02-15 13:44:38', NULL),
(56, 1658, 240, 0, 0, 82, 1898, 0, 8, '2017-02-15 14:12:32', NULL),
(57, 902, 772, 0, 0, 87, 1674, 2, 1, '2017-02-16 11:52:39', NULL),
(58, 935, 738, 0, 0, 90, 1673, 1, 3, '2017-02-16 12:14:45', NULL),
(59, 992, 795, 0, 0, 89, 1787, 2, 4, '2017-02-16 12:35:16', NULL),
(60, 1325, 480, 0, 0, 92, 1805, 0, 5, '2017-02-16 14:24:03', NULL),
(61, 1140, 641, 0, 0, 93, 1781, 1, 6, '2017-02-16 14:24:11', NULL),
(62, 1432, 330, 0, 0, 92, 1762, 1, 7, '2017-02-16 14:24:24', NULL),
(63, 1625, 236, 0, 0, 81, 1861, 3, 8, '2017-02-16 14:24:34', NULL),
(64, 920, 752, 0, 0, 87, 1672, 0, 1, '2017-02-17 11:55:55', NULL),
(65, 922, 690, 0, 0, 87, 1612, 0, 3, '2017-02-17 12:17:25', NULL),
(66, 968, 791, 0, 0, 88, 1759, 0, 4, '2017-02-17 12:37:56', NULL),
(67, 1325, 476, 0, 0, 92, 1801, 2, 5, '2017-02-17 13:01:27', NULL),
(68, 1205, 502, 0, 0, 89, 1707, 1, 6, '2017-02-17 13:51:44', NULL),
(69, 1445, 290, 0, 0, 91, 1735, 1, 7, '2017-02-17 13:51:51', NULL),
(70, 1645, 220, 0, 0, 81, 1865, 1, 8, '2017-02-17 14:18:25', NULL),
(71, 920, 702, 0, 0, 85, 1622, 1, 1, '2017-02-18 11:55:12', NULL),
(72, 956, 696, 0, 0, 89, 1652, 1, 3, '2017-02-18 12:16:10', NULL),
(73, 1031, 755, 0, 0, 89, 1786, 1, 4, '2017-02-18 12:36:20', NULL),
(74, 1317, 488, 0, 0, 92, 1805, 0, 5, '2017-02-18 13:00:32', NULL),
(75, 1218, 506, 0, 0, 90, 1724, 0, 6, '2017-02-18 13:21:33', NULL),
(76, 1475, 281, 0, 0, 92, 1756, 1, 7, '2017-02-18 13:48:24', NULL),
(77, 1620, 230, 0, 0, 81, 1850, 1, 8, '2017-02-18 14:16:53', NULL),
(78, 995, 698, 0, 0, 88, 1693, 0, 1, '2017-02-19 11:56:51', NULL),
(79, 966, 675, 0, 0, 89, 1641, 0, 3, '2017-02-19 12:17:17', NULL),
(80, 1090, 750, 0, 0, 92, 1840, 0, 4, '2017-02-19 12:37:42', NULL),
(81, 1330, 455, 0, 0, 91, 1785, 0, 5, '2017-02-19 13:00:47', NULL),
(82, 1220, 523, 0, 0, 91, 1743, 0, 6, '2017-02-19 13:23:11', NULL),
(83, 1518, 265, 0, 0, 93, 1783, 0, 7, '2017-02-19 13:50:38', NULL),
(84, 1625, 212, 0, 0, 80, 1837, 1, 8, '2017-02-19 14:09:56', NULL),
(85, 0, 0, 0, 0, 0, 0, 2, 2, '2017-02-19 14:10:07', NULL),
(86, 965, 661, 0, 0, 85, 1626, 0, 1, '2017-02-20 11:51:51', NULL),
(87, 965, 643, 0, 0, 87, 1608, 0, 3, '2017-02-20 12:10:00', NULL),
(88, 1068, 693, 0, 0, 88, 1761, 0, 4, '2017-02-20 12:27:25', NULL),
(89, 1335, 455, 0, 0, 92, 1790, 1, 5, '2017-02-20 12:49:22', NULL),
(90, 1195, 491, 0, 0, 88, 1686, 0, 6, '2017-02-20 13:09:56', NULL),
(91, 1428, 285, 0, 0, 89, 1713, 0, 7, '2017-02-20 13:35:11', NULL),
(92, 1616, 208, 0, 0, 80, 1824, 4, 8, '2017-02-20 14:02:38', NULL),
(93, 1000, 696, 0, 0, 88, 1696, 0, 1, '2017-02-21 11:56:07', NULL),
(94, 1057, 640, 0, 0, 92, 1697, 1, 3, '2017-02-21 12:16:19', NULL),
(95, 1125, 697, 0, 0, 91, 1822, 3, 4, '2017-02-21 12:36:26', NULL),
(96, 1417, 400, 0, 0, 93, 1817, 0, 5, '2017-02-21 12:59:00', NULL),
(97, 1311, 457, 0, 0, 92, 1768, 0, 6, '2017-02-21 13:23:01', NULL),
(98, 1512, 240, 0, 0, 91, 1752, 0, 7, '2017-02-21 13:50:58', NULL),
(99, 1680, 180, 0, 0, 81, 1860, 1, 8, '2017-02-21 14:19:39', NULL),
(100, 893, 725, 0, 0, 84, 1618, 0, 1, '2017-02-22 11:53:46', NULL),
(101, 898, 710, 0, 0, 87, 1608, 0, 3, '2017-02-22 12:12:14', NULL),
(102, 1002, 772, 0, 0, 89, 1774, 1, 4, '2017-02-22 12:30:52', NULL),
(103, 1325, 460, 0, 0, 92, 1785, 0, 5, '2017-02-22 12:53:25', NULL),
(104, 1165, 520, 0, 0, 88, 1685, 1, 6, '2017-02-22 13:15:57', NULL),
(105, 1436, 257, 0, 0, 88, 1693, 0, 7, '2017-02-22 13:42:21', NULL),
(106, 1603, 190, 0, 0, 78, 1793, 1, 8, '2017-02-22 14:09:09', NULL),
(107, 918, 702, 0, 0, 84, 1620, 0, 1, '2017-02-23 11:52:19', NULL),
(108, 926, 677, 0, 0, 87, 1603, 0, 3, '2017-02-23 12:14:45', NULL),
(109, 1062, 731, 0, 0, 90, 1793, 1, 4, '2017-02-23 12:34:42', NULL),
(110, 1410, 408, 0, 0, 93, 1818, 1, 5, '2017-02-23 12:57:59', NULL),
(111, 1266, 490, 0, 0, 91, 1756, 0, 6, '2017-02-23 13:21:03', NULL),
(112, 1520, 235, 0, 0, 92, 1755, 1, 7, '2017-02-23 13:48:16', NULL),
(113, 1661, 172, 0, 0, 80, 1833, 0, 8, '2017-02-23 14:18:32', NULL),
(114, 955, 693, 0, 0, 86, 1648, 0, 1, '2017-02-24 12:02:57', NULL),
(115, 1000, 647, 0, 0, 89, 1647, 1, 3, '2017-02-24 12:21:47', NULL),
(116, 1104, 673, 0, 0, 89, 1777, 0, 4, '2017-02-24 12:40:03', NULL),
(117, 1390, 411, 0, 0, 92, 1801, 0, 5, '2017-02-24 13:04:49', NULL),
(118, 1262, 482, 0, 0, 91, 1744, 0, 6, '2017-02-24 13:27:01', NULL),
(119, 1502, 210, 0, 0, 89, 1712, 0, 7, '2017-02-24 13:54:46', NULL),
(120, 1606, 205, 0, 0, 79, 1811, 0, 8, '2017-02-24 14:22:20', NULL),
(121, 0, 0, 0, 0, 0, 0, 1, 9, '2017-02-24 15:46:12', NULL),
(122, 126, 0, 0, 0, 5, 126, 3, 10, '2017-02-24 15:48:31', NULL),
(123, 812, 765, 0, 0, 82, 1577, 1, 1, '2017-02-25 11:51:51', NULL),
(124, 824, 715, 0, 0, 83, 1539, 0, 3, '2017-02-25 12:12:35', NULL),
(125, 946, 763, 0, 0, 86, 1709, 2, 4, '2017-02-25 12:30:42', NULL),
(126, 1201, 511, 0, 0, 88, 1712, 0, 5, '2017-02-25 12:53:14', NULL),
(127, 1016, 607, 0, 0, 85, 1623, 0, 6, '2017-02-25 13:12:29', NULL),
(128, 1386, 313, 0, 0, 89, 1699, 0, 7, '2017-02-25 13:36:35', NULL),
(129, 1502, 255, 0, 0, 77, 1757, 4, 8, '2017-02-25 14:03:41', NULL),
(130, 44, 0, 0, 0, 2, 44, 0, 10, '2017-02-25 15:36:15', NULL),
(131, 853, 788, 0, 0, 86, 1641, 0, 1, '2017-02-26 11:51:50', NULL),
(132, 940, 705, 0, 0, 89, 1645, 0, 3, '2017-02-26 12:14:13', NULL),
(133, 1018, 760, 0, 0, 89, 1778, 1, 4, '2017-02-26 12:34:16', NULL),
(134, 1277, 512, 0, 0, 92, 1789, 0, 5, '2017-02-26 12:59:06', NULL),
(135, 1155, 585, 0, 0, 91, 1740, 2, 6, '2017-02-26 13:24:31', NULL),
(136, 1440, 275, 0, 0, 90, 1715, 0, 7, '2017-02-26 13:52:24', NULL),
(137, 1612, 218, 0, 0, 80, 1830, 2, 8, '2017-02-26 13:53:05', NULL),
(138, 58, 0, 0, 0, 2, 58, 1, 10, '2017-02-26 13:53:14', NULL),
(139, 832, 777, 0, 0, 84, 1609, 0, 1, '2017-02-27 11:47:23', NULL),
(140, 832, 721, 0, 0, 84, 1553, 0, 3, '2017-02-27 12:09:22', NULL),
(141, 1023, 750, 0, 0, 89, 1773, 0, 4, '2017-02-27 12:29:28', NULL),
(142, 1288, 500, 0, 0, 92, 1788, 0, 5, '2017-02-27 12:53:08', NULL),
(143, 1071, 600, 0, 0, 87, 1671, 1, 6, '2017-02-27 13:15:31', NULL),
(144, 1400, 288, 0, 0, 88, 1688, 0, 7, '2017-02-27 13:45:03', NULL),
(145, 79, 0, 0, 0, 3, 79, 2, 10, '2017-02-27 13:49:04', NULL),
(146, 1621, 200, 0, 0, 80, 1821, 0, 8, '2017-02-27 14:16:08', NULL),
(147, 856, 751, 0, 0, 84, 1607, 1, 1, '2017-02-28 11:49:55', NULL),
(148, 801, 638, 0, 0, 78, 1439, 0, 3, '2017-02-28 12:09:55', NULL),
(149, 1022, 735, 0, 0, 88, 1757, 0, 4, '2017-02-28 12:31:13', NULL),
(150, 1238, 566, 0, 0, 93, 1804, 2, 5, '2017-02-28 12:55:12', NULL),
(151, 1105, 608, 0, 0, 89, 1713, 1, 6, '2017-02-28 13:21:20', NULL),
(152, 1382, 320, 0, 0, 89, 1702, 0, 7, '2017-02-28 13:48:26', NULL),
(153, 108, 0, 0, 0, 4, 108, 2, 10, '2017-02-28 13:49:55', NULL),
(154, 1594, 202, 0, 0, 79, 1796, 0, 8, '2017-02-28 14:15:59', NULL),
(155, 905, 680, 0, 0, 83, 1585, 0, 1, '2017-03-01 11:55:17', NULL),
(156, 1008, 545, 0, 0, 84, 1553, 1, 3, '2017-03-01 12:16:03', NULL),
(157, 1040, 748, 0, 0, 90, 1788, 0, 4, '2017-03-01 12:33:54', NULL),
(158, 1246, 540, 0, 0, 92, 1786, 0, 5, '2017-03-01 12:56:31', NULL),
(159, 1052, 544, 0, 0, 83, 1596, 2, 6, '2017-03-01 13:17:17', NULL),
(160, 1356, 322, 0, 0, 88, 1678, 1, 7, '2017-03-01 13:42:13', NULL),
(161, 1620, 215, 0, 0, 81, 1835, 5, 8, '2017-03-01 14:11:52', NULL),
(162, 112, 0, 0, 0, 5, 112, 5, 10, '2017-03-01 15:36:13', NULL),
(163, 942, 715, 0, 0, 87, 1657, 1, 1, '2017-03-02 11:52:41', NULL),
(164, 952, 620, 0, 0, 85, 1572, 0, 3, '2017-03-02 12:13:17', NULL),
(165, 984, 780, 0, 0, 89, 1764, 2, 4, '2017-03-02 12:30:53', NULL),
(166, 1226, 557, 0, 0, 92, 1783, 1, 5, '2017-03-02 12:54:36', NULL),
(167, 1213, 520, 0, 0, 91, 1733, 0, 6, '2017-03-02 13:18:20', NULL),
(168, 1397, 308, 0, 0, 89, 1705, 0, 7, '2017-03-02 13:43:18', NULL),
(169, 1565, 264, 0, 0, 80, 1829, 4, 8, '2017-03-02 14:09:59', NULL),
(170, 152, 0, 0, 0, 6, 152, 1, 10, '2017-03-02 15:39:19', NULL),
(171, 868, 741, 0, 0, 84, 1609, 2, 1, '2017-03-03 11:51:57', NULL),
(172, 920, 670, 0, 0, 86, 1590, 0, 3, '2017-03-03 12:13:36', NULL),
(173, 980, 750, 0, 0, 87, 1730, 1, 4, '2017-03-03 12:33:49', NULL),
(174, 1212, 582, 0, 0, 92, 1794, 1, 5, '2017-03-03 12:55:02', NULL),
(175, 1158, 542, 0, 0, 89, 1700, 0, 6, '2017-03-03 13:15:31', NULL),
(176, 1404, 310, 0, 0, 90, 1714, 0, 7, '2017-03-03 13:43:22', NULL),
(177, 1506, 287, 0, 0, 79, 1793, 1, 8, '2017-03-03 14:12:10', NULL),
(178, 180, 0, 0, 0, 8, 180, 2, 10, '2017-03-03 15:46:43', NULL),
(179, 873, 750, 0, 0, 85, 1623, 0, 1, '2017-03-04 11:51:53', NULL),
(180, 866, 726, 0, 0, 86, 1592, 0, 3, '2017-03-04 12:12:35', NULL),
(181, 1024, 752, 0, 0, 89, 1776, 1, 4, '2017-03-04 12:33:32', NULL),
(182, 1231, 556, 0, 0, 92, 1787, 1, 5, '2017-03-04 12:55:24', NULL),
(183, 1184, 548, 0, 0, 91, 1732, 0, 6, '2017-03-04 13:49:45', NULL),
(184, 1423, 301, 0, 0, 90, 1724, 1, 7, '2017-03-04 13:49:56', NULL),
(185, 1513, 210, 0, 0, 76, 1723, 2, 8, '2017-03-04 14:16:30', NULL),
(186, 195, 0, 0, 0, 9, 195, 1, 10, '2017-03-04 15:44:53', NULL),
(187, 883, 738, 0, 0, 85, 1621, 0, 1, '2017-03-05 11:49:32', NULL),
(188, 880, 673, 0, 0, 84, 1553, 0, 3, '2017-03-05 12:09:57', NULL),
(189, 1030, 720, 0, 0, 88, 1750, 1, 4, '2017-03-05 12:27:39', NULL),
(190, 1258, 508, 0, 0, 91, 1766, 0, 5, '2017-03-05 12:49:32', NULL),
(191, 1132, 564, 0, 0, 89, 1696, 1, 6, '2017-03-05 13:10:25', NULL),
(192, 1370, 326, 0, 0, 89, 1696, 2, 7, '2017-03-05 13:37:00', NULL),
(193, 1505, 260, 0, 0, 78, 1765, 1, 8, '2017-03-05 13:49:06', NULL),
(194, 238, 0, 0, 0, 11, 238, 0, 10, '2017-03-05 15:35:19', NULL),
(195, 0, 0, 0, 0, 0, 0, 1, 9, '2017-03-05 16:11:42', NULL),
(196, 820, 753, 0, 0, 82, 1573, 0, 1, '2017-03-06 11:51:37', NULL),
(197, 900, 677, 0, 0, 85, 1577, 1, 3, '2017-03-06 12:13:18', NULL),
(198, 1053, 705, 0, 0, 88, 1758, 1, 4, '2017-03-06 12:33:04', NULL),
(199, 1278, 500, 0, 0, 91, 1778, 0, 5, '2017-03-06 12:56:08', NULL),
(200, 1154, 545, 0, 0, 88, 1699, 0, 6, '2017-03-06 13:20:42', NULL),
(201, 1371, 322, 0, 0, 89, 1693, 0, 7, '2017-03-06 13:46:12', NULL),
(202, 1552, 252, 0, 0, 80, 1804, 4, 8, '2017-03-06 14:14:11', NULL),
(203, 270, 0, 0, 0, 12, 270, 0, 10, '2017-03-06 15:46:35', NULL),
(204, 878, 762, 0, 0, 86, 1640, 0, 1, '2017-03-07 11:51:51', NULL),
(205, 932, 670, 0, 0, 87, 1602, 0, 3, '2017-03-07 12:13:30', NULL),
(206, 1127, 647, 0, 0, 89, 1774, 0, 4, '2017-03-07 12:36:53', NULL),
(207, 1382, 435, 0, 0, 93, 1817, 1, 5, '2017-03-07 13:01:56', NULL),
(208, 1235, 453, 0, 0, 88, 1688, 0, 6, '2017-03-07 13:24:46', NULL),
(209, 1452, 255, 0, 0, 89, 1707, 0, 7, '2017-03-07 13:50:45', NULL),
(210, 1600, 184, 0, 0, 79, 1784, 0, 8, '2017-03-07 14:19:38', NULL),
(211, 321, 0, 0, 0, 14, 321, 2, 10, '2017-03-07 15:46:29', NULL),
(212, 884, 735, 0, 0, 85, 1619, 1, 1, '2017-03-08 11:53:15', NULL),
(213, 923, 680, 0, 0, 87, 1603, 0, 3, '2017-03-08 12:16:05', NULL),
(214, 1030, 716, 0, 0, 88, 1746, 2, 4, '2017-03-08 12:35:38', NULL),
(215, 1295, 516, 0, 0, 93, 1811, 3, 5, '2017-03-08 12:59:32', NULL),
(216, 1210, 510, 0, 0, 90, 1720, 0, 6, '2017-03-08 13:22:48', NULL),
(217, 1420, 304, 0, 0, 90, 1724, 0, 7, '2017-03-08 13:53:00', NULL),
(218, 1550, 195, 0, 0, 77, 1745, 1, 8, '2017-03-08 14:21:22', NULL),
(219, 350, 0, 0, 0, 16, 350, 2, 10, '2017-03-08 15:52:23', NULL),
(220, 0, 0, 0, 0, 0, 0, 1, 11, '2017-03-08 19:45:07', NULL),
(221, 844, 725, 0, 0, 82, 1569, 0, 1, '2017-03-09 11:51:11', NULL),
(222, 848, 705, 0, 0, 84, 1553, 0, 3, '2017-03-09 12:10:47', NULL),
(223, 927, 777, 0, 0, 86, 1704, 2, 4, '2017-03-09 12:29:17', NULL),
(224, 1205, 544, 0, 0, 90, 1749, 1, 5, '2017-03-09 12:50:46', NULL),
(225, 1100, 582, 0, 0, 88, 1682, 0, 6, '2017-03-09 13:12:20', NULL),
(226, 1370, 304, 0, 0, 87, 1674, 0, 7, '2017-03-09 13:38:17', NULL),
(227, 1462, 273, 0, 0, 77, 1735, 2, 8, '2017-03-09 14:03:50', NULL),
(228, 396, 0, 0, 0, 18, 396, 4, 10, '2017-03-09 15:44:49', NULL),
(229, 915, 734, 0, 0, 86, 1649, 0, 1, '2017-03-10 11:48:44', NULL),
(230, 925, 713, 0, 0, 89, 1638, 0, 3, '2017-03-10 12:09:02', NULL),
(231, 1075, 723, 0, 0, 91, 1798, 2, 4, '2017-03-10 12:30:19', NULL),
(232, 1300, 512, 0, 0, 93, 1812, 0, 5, '2017-03-10 12:55:25', NULL),
(233, 1160, 499, 0, 0, 87, 1659, 1, 6, '2017-03-10 13:19:49', NULL),
(234, 1464, 281, 0, 0, 91, 1745, 0, 7, '2017-03-10 13:51:33', NULL),
(235, 1600, 188, 0, 0, 79, 1788, 0, 8, '2017-03-10 14:22:03', NULL),
(236, 459, 0, 0, 0, 21, 459, 2, 10, '2017-03-10 15:56:20', NULL),
(237, 941, 676, 0, 0, 85, 1617, 0, 1, '2017-03-11 11:51:33', NULL),
(238, 900, 781, 0, 0, 91, 1681, 0, 3, '2017-03-11 12:11:37', NULL),
(239, 1030, 701, 0, 0, 87, 1731, 0, 4, '2017-03-11 12:32:11', NULL),
(240, 1307, 477, 0, 0, 92, 1784, 2, 5, '2017-03-11 12:53:42', NULL),
(241, 1190, 527, 0, 0, 90, 1717, 0, 6, '2017-03-11 13:16:00', NULL),
(242, 1413, 280, 0, 0, 89, 1693, 2, 7, '2017-03-11 13:46:31', NULL),
(243, 1542, 208, 0, 0, 77, 1750, 0, 8, '2017-03-11 14:14:14', NULL),
(244, 524, 0, 0, 0, 24, 524, 6, 10, '2017-03-11 15:45:56', NULL),
(245, 911, 694, 0, 0, 84, 1605, 0, 1, '2017-03-12 11:48:52', NULL),
(246, 854, 692, 0, 0, 84, 1546, 0, 3, '2017-03-12 12:07:09', NULL),
(247, 1001, 662, 0, 0, 84, 1663, 1, 4, '2017-03-12 12:25:14', NULL),
(248, 1280, 502, 0, 0, 92, 1782, 1, 5, '2017-03-12 12:46:54', NULL),
(249, 1101, 516, 0, 0, 85, 1617, 1, 6, '2017-03-12 13:09:01', NULL),
(250, 1420, 262, 0, 0, 88, 1682, 1, 7, '2017-03-12 13:35:43', NULL),
(251, 1500, 228, 0, 0, 76, 1728, 3, 8, '2017-03-12 13:46:13', NULL),
(252, 592, 0, 0, 0, 27, 592, 1, 10, '2017-03-12 13:46:21', NULL),
(253, 832, 754, 0, 0, 83, 1586, 2, 1, '2017-03-13 11:47:12', NULL),
(254, 880, 705, 0, 0, 86, 1585, 0, 3, '2017-03-13 12:10:39', NULL),
(255, 1118, 670, 0, 0, 90, 1788, 1, 4, '2017-03-13 12:35:11', NULL),
(256, 1380, 416, 0, 0, 93, 1796, 0, 5, '2017-03-13 13:04:26', NULL),
(257, 668, 0, 0, 0, 31, 668, 3, 10, '2017-03-13 13:19:54', NULL),
(258, 1546, 198, 0, 0, 77, 1744, 5, 8, '2017-03-13 13:20:09', NULL),
(259, 0, 0, 0, 0, 0, 0, 1, 11, '2017-03-13 13:20:41', NULL),
(260, 0, 0, 0, 0, 0, 0, 2, 12, '2017-03-13 13:21:06', NULL),
(261, 1268, 452, 0, 0, 90, 1720, 0, 6, '2017-03-13 13:26:49', NULL),
(262, 1412, 271, 0, 0, 88, 1683, 0, 7, '2017-03-13 13:51:18', NULL),
(263, 936, 664, 0, 0, 84, 1600, 0, 1, '2017-03-14 11:52:13', NULL),
(264, 913, 660, 0, 0, 85, 1573, 0, 3, '2017-03-14 12:10:26', NULL),
(265, 1030, 713, 0, 0, 88, 1743, 1, 4, '2017-03-14 12:28:41', NULL),
(266, 1285, 497, 0, 0, 92, 1782, 2, 5, '2017-03-14 12:51:50', NULL),
(267, 1200, 468, 0, 0, 87, 1668, 0, 6, '2017-03-14 13:16:22', NULL),
(268, 1430, 268, 0, 0, 89, 1698, 1, 7, '2017-03-14 13:46:37', NULL),
(269, 1491, 220, 0, 0, 76, 1711, 3, 8, '2017-03-14 14:12:34', NULL),
(270, 763, 0, 0, 0, 35, 763, 0, 10, '2017-03-14 15:45:38', NULL),
(271, 940, 650, 0, 0, 83, 1590, 0, 1, '2017-03-15 11:51:26', NULL),
(272, 965, 627, 0, 0, 86, 1592, 1, 3, '2017-03-15 12:11:42', NULL),
(273, 1056, 675, 0, 0, 88, 1731, 0, 4, '2017-03-15 12:31:36', NULL),
(274, 0, 0, 0, 0, 0, 0, 5, 12, '2017-03-15 12:53:25', NULL),
(275, 1342, 427, 0, 0, 91, 1769, 0, 5, '2017-03-15 12:54:11', NULL),
(276, 1190, 507, 0, 0, 89, 1697, 0, 6, '2017-03-15 13:13:22', NULL),
(277, 1431, 252, 0, 0, 88, 1683, 0, 7, '2017-03-15 13:40:25', NULL),
(278, 1461, 214, 0, 0, 74, 1675, 1, 8, '2017-03-15 14:07:52', NULL),
(279, 820, 0, 0, 0, 38, 820, 0, 10, '2017-03-15 15:40:55', NULL),
(280, 976, 683, 0, 0, 87, 1659, 0, 1, '2017-03-16 11:47:40', NULL),
(281, 930, 683, 0, 0, 87, 1613, 0, 3, '2017-03-16 12:11:28', NULL),
(282, 1132, 633, 0, 0, 89, 1765, 0, 4, '2017-03-16 12:38:45', NULL),
(283, 1406, 383, 0, 0, 92, 1789, 0, 5, '2017-03-16 13:00:46', NULL),
(284, 1290, 436, 0, 0, 90, 1726, 0, 6, '2017-03-16 13:22:10', NULL),
(285, 1510, 218, 0, 0, 90, 1728, 0, 7, '2017-03-16 13:50:54', NULL),
(286, 1560, 171, 0, 0, 77, 1731, 3, 8, '2017-03-16 14:19:22', NULL),
(287, 882, 0, 0, 0, 41, 882, 3, 10, '2017-03-16 15:47:35', NULL),
(288, 911, 687, 0, 0, 84, 1598, 1, 1, '2017-03-17 11:48:32', NULL),
(289, 925, 613, 0, 0, 83, 1538, 0, 3, '2017-03-17 12:14:04', NULL),
(290, 1091, 617, 0, 0, 86, 1708, 1, 4, '2017-03-17 12:34:51', NULL),
(291, 1356, 390, 0, 0, 90, 1746, 1, 5, '2017-03-17 12:58:35', NULL),
(292, 1273, 412, 0, 0, 88, 1685, 0, 6, '2017-03-17 13:23:59', NULL),
(293, 1434, 255, 0, 0, 88, 1689, 0, 7, '2017-03-17 13:50:02', NULL),
(294, 1528, 186, 0, 0, 76, 1714, 1, 8, '2017-03-17 14:17:24', NULL),
(295, 976, 0, 0, 0, 45, 976, 3, 10, '2017-03-17 15:55:43', NULL),
(296, 0, 0, 0, 0, 0, 0, 3, 11, '2017-03-17 15:57:31', NULL),
(297, 0, 0, 0, 0, 0, 0, 1, 12, '2017-03-17 15:57:45', NULL),
(298, 908, 693, 0, 0, 84, 1601, 0, 1, '2017-03-18 11:48:16', NULL),
(299, 932, 642, 0, 0, 85, 1574, 0, 3, '2017-03-18 12:08:32', NULL),
(300, 1054, 671, 0, 0, 87, 1725, 1, 4, '2017-03-18 12:28:55', NULL),
(301, 1335, 448, 0, 0, 92, 1783, 2, 5, '2017-03-18 12:51:19', NULL),
(302, 1205, 476, 0, 0, 88, 1681, 0, 6, '2017-03-18 13:14:22', NULL),
(303, 1388, 292, 0, 0, 88, 1680, 0, 7, '2017-03-18 13:41:21', NULL),
(304, 0, 0, 0, 0, 0, 0, 1, 12, '2017-03-18 13:43:42', NULL),
(305, 1500, 188, 0, 0, 75, 1688, 3, 8, '2017-03-18 14:19:15', NULL),
(306, 1048, 0, 0, 0, 49, 1048, 0, 10, '2017-03-18 15:54:48', NULL),
(307, 926, 658, 0, 0, 83, 1584, 0, 1, '2017-03-19 11:49:51', NULL),
(308, 932, 595, 0, 0, 83, 1527, 0, 3, '2017-03-19 12:08:36', NULL),
(309, 1038, 634, 0, 0, 85, 1672, 0, 4, '2017-03-19 12:27:11', NULL),
(310, 1280, 452, 0, 0, 90, 1732, 0, 5, '2017-03-19 12:48:49', NULL),
(311, 1187, 467, 0, 0, 87, 1654, 0, 6, '2017-03-19 13:12:16', NULL),
(312, 1118, 0, 0, 0, 52, 1118, 3, 10, '2017-03-19 13:34:01', NULL),
(313, 1503, 187, 0, 0, 75, 1690, 2, 8, '2017-03-19 13:34:08', NULL),
(314, 1374, 305, 0, 0, 88, 1679, 1, 7, '2017-03-19 13:34:21', NULL),
(315, 960, 685, 0, 0, 86, 1645, 0, 1, '2017-03-20 11:51:37', NULL),
(316, 1023, 595, 0, 0, 88, 1618, 2, 3, '2017-03-20 12:13:03', NULL),
(317, 1142, 640, 0, 0, 90, 1782, 1, 4, '2017-03-20 12:32:36', NULL),
(318, 1368, 420, 0, 0, 93, 1788, 0, 5, '2017-03-20 12:53:43', NULL),
(319, 1178, 494, 0, 0, 88, 1672, 0, 6, '2017-03-20 13:13:23', NULL),
(320, 1402, 306, 0, 0, 89, 1708, 0, 7, '2017-03-20 13:44:16', NULL),
(321, 1503, 185, 0, 0, 75, 1688, 2, 8, '2017-03-20 14:07:25', NULL),
(322, 1064, 130, 0, 0, 56, 1194, 4, 10, '2017-03-20 14:24:52', NULL),
(323, 924, 701, 0, 0, 85, 1625, 1, 1, '2017-03-21 11:50:33', NULL),
(324, 948, 676, 0, 0, 88, 1624, 1, 3, '2017-03-21 12:09:47', NULL),
(325, 0, 0, 0, 0, 0, 0, 2, 11, '2017-03-21 12:12:32', NULL),
(326, 1018, 700, 0, 0, 87, 1718, 0, 4, '2017-03-21 12:28:33', NULL),
(327, 1336, 447, 0, 0, 92, 1783, 1, 5, '2017-03-21 12:51:09', NULL),
(328, 1137, 542, 0, 0, 88, 1679, 0, 6, '2017-03-21 13:11:42', NULL),
(329, 1345, 352, 0, 0, 89, 1697, 1, 7, '2017-03-21 13:41:51', NULL),
(330, 1493, 200, 0, 0, 76, 1693, 2, 8, '2017-03-21 14:09:46', NULL),
(331, 1100, 122, 0, 0, 57, 1222, 4, 10, '2017-03-21 14:28:33', NULL),
(332, 870, 730, 0, 0, 84, 1600, 0, 1, '2017-03-22 11:49:22', NULL),
(333, 901, 678, 0, 0, 86, 1579, 0, 3, '2017-03-22 12:10:03', NULL),
(334, 993, 735, 0, 0, 87, 1728, 0, 4, '2017-03-22 12:29:25', NULL),
(335, 1316, 458, 0, 0, 92, 1774, 0, 5, '2017-03-22 12:52:56', NULL),
(336, 1192, 470, 0, 0, 87, 1662, 0, 6, '2017-03-22 13:19:40', NULL),
(337, 1372, 284, 0, 0, 87, 1656, 0, 7, '2017-03-22 13:44:41', NULL),
(338, 1458, 220, 0, 0, 75, 1678, 1, 8, '2017-03-22 14:08:41', NULL),
(339, 1160, 123, 0, 0, 60, 1283, 1, 10, '2017-03-22 14:28:14', NULL),
(340, 862, 738, 0, 0, 84, 1600, 0, 1, '2017-03-23 11:49:54', NULL),
(341, 930, 650, 0, 0, 86, 1580, 0, 3, '2017-03-23 12:16:39', NULL),
(342, 0, 0, 0, 0, 0, 0, 1, 11, '2017-03-23 12:20:56', NULL),
(343, 1060, 647, 0, 0, 86, 1707, 1, 4, '2017-03-23 12:35:50', NULL),
(344, 1362, 395, 0, 0, 91, 1757, 1, 5, '2017-03-23 12:59:33', NULL),
(345, 1230, 456, 0, 0, 88, 1686, 1, 6, '2017-03-23 13:21:11', NULL),
(346, 1410, 258, 0, 0, 87, 1668, 0, 7, '2017-03-23 13:46:17', NULL),
(347, 1450, 206, 0, 0, 74, 1656, 0, 8, '2017-03-23 14:11:41', NULL),
(348, 1257, 98, 0, 0, 63, 1355, 3, 10, '2017-03-23 14:37:25', NULL),
(349, 904, 673, 0, 0, 83, 1577, 0, 1, '2017-03-24 11:52:32', NULL),
(350, 975, 640, 0, 0, 88, 1615, 0, 3, '2017-03-24 12:15:02', NULL),
(351, 1110, 640, 0, 0, 89, 1750, 0, 4, '2017-03-24 12:40:01', NULL),
(352, 1450, 317, 0, 0, 92, 1767, 0, 5, '2017-03-24 13:05:02', NULL),
(353, 1341, 333, 0, 0, 88, 1674, 0, 6, '2017-03-24 13:30:42', NULL),
(354, 1545, 161, 0, 0, 89, 1706, 0, 7, '2017-03-24 13:56:24', NULL),
(355, 1510, 148, 0, 0, 74, 1658, 1, 8, '2017-03-24 14:19:26', NULL),
(356, 1289, 116, 0, 0, 66, 1405, 2, 10, '2017-03-24 14:37:22', NULL),
(357, 862, 702, 0, 0, 82, 1564, 1, 1, '2017-03-25 11:54:00', NULL),
(358, 841, 692, 0, 0, 83, 1533, 0, 3, '2017-03-25 12:18:04', NULL),
(359, 0, 0, 0, 0, 0, 0, 1, 11, '2017-03-25 12:25:42', NULL),
(360, 965, 722, 0, 0, 85, 1687, 1, 4, '2017-03-25 12:33:14', NULL),
(361, 1276, 488, 0, 0, 91, 1764, 1, 5, '2017-03-25 12:53:13', NULL),
(362, 1082, 574, 0, 0, 87, 1656, 1, 6, '2017-03-25 13:12:11', NULL),
(363, 1370, 322, 0, 0, 89, 1692, 0, 7, '2017-03-25 13:41:40', NULL),
(364, 1440, 218, 0, 0, 74, 1658, 3, 8, '2017-03-25 14:08:43', NULL),
(365, 1283, 158, 0, 0, 68, 1441, 0, 10, '2017-03-25 14:30:09', NULL),
(366, 857, 687, 0, 0, 81, 1544, 0, 1, '2017-03-26 11:48:48', NULL),
(367, 894, 650, 0, 0, 84, 1544, 0, 3, '2017-03-26 12:08:27', NULL),
(368, 0, 0, 0, 0, 0, 0, 2, 11, '2017-03-26 12:15:45', NULL),
(369, 980, 675, 0, 0, 84, 1655, 0, 4, '2017-03-26 12:26:27', NULL),
(370, 1240, 480, 0, 0, 89, 1720, 0, 5, '2017-03-26 12:47:04', NULL),
(371, 1087, 560, 0, 0, 86, 1647, 1, 6, '2017-03-26 13:07:18', NULL),
(372, 1315, 322, 0, 0, 86, 1637, 0, 7, '2017-03-26 13:32:24', NULL),
(373, 1416, 241, 0, 0, 74, 1657, 1, 8, '2017-03-26 13:45:21', NULL),
(374, 1285, 175, 0, 0, 68, 1460, 0, 10, '2017-03-26 14:21:48', NULL),
(375, 972, 644, 0, 0, 85, 1616, 0, 1, '2017-03-27 11:55:49', NULL),
(376, 956, 595, 0, 0, 84, 1551, 1, 3, '2017-03-27 12:14:49', NULL),
(377, 1083, 648, 0, 0, 88, 1731, 0, 4, '2017-03-27 12:33:09', NULL),
(378, 1335, 430, 0, 0, 92, 1765, 1, 5, '2017-03-27 12:55:31', NULL),
(379, 1096, 551, 0, 0, 86, 1647, 0, 6, '2017-03-27 13:15:47', NULL),
(380, 1383, 272, 0, 0, 87, 1655, 0, 7, '2017-03-27 13:40:43', NULL),
(381, 1410, 224, 0, 0, 73, 1634, 2, 8, '2017-03-27 14:04:35', NULL),
(382, 1366, 159, 0, 0, 72, 1525, 4, 10, '2017-03-27 14:27:42', NULL),
(383, 927, 652, 0, 0, 83, 1579, 0, 1, '2017-03-28 11:52:45', NULL),
(384, 951, 602, 0, 0, 84, 1553, 1, 3, '2017-03-28 12:15:12', NULL),
(385, 1070, 628, 0, 0, 86, 1698, 2, 4, '2017-03-28 12:33:32', NULL),
(386, 1318, 434, 0, 0, 91, 1752, 2, 5, '2017-03-28 12:56:13', NULL),
(387, 1148, 496, 0, 0, 86, 1644, 1, 6, '2017-03-28 13:17:52', NULL),
(388, 1384, 151, 0, 0, 72, 1535, 2, 10, '2017-03-28 13:35:18', NULL),
(389, 1386, 281, 0, 0, 87, 1667, 1, 7, '2017-03-28 13:44:20', NULL),
(390, 1485, 165, 0, 0, 74, 1650, 3, 8, '2017-03-28 14:09:12', NULL),
(391, 854, 700, 0, 0, 82, 1554, 0, 1, '2017-03-29 11:51:13', NULL),
(392, 885, 650, 0, 0, 83, 1535, 1, 3, '2017-03-29 12:11:47', NULL),
(393, 960, 730, 0, 0, 86, 1690, 0, 4, '2017-03-29 12:31:16', NULL),
(394, 1254, 464, 0, 0, 89, 1718, 0, 5, '2017-03-29 12:57:05', NULL),
(395, 1124, 490, 0, 0, 85, 1614, 1, 6, '2017-03-29 13:15:57', NULL),
(396, 1330, 271, 0, 0, 84, 1601, 1, 7, '2017-03-29 13:36:11', NULL),
(397, 1440, 258, 0, 0, 76, 1698, 2, 8, '2017-03-29 13:59:13', NULL),
(398, 1325, 195, 0, 0, 72, 1520, 3, 10, '2017-03-29 14:20:27', NULL),
(399, 883, 713, 0, 0, 84, 1596, 0, 1, '2017-03-30 11:51:03', NULL),
(400, 856, 661, 0, 0, 82, 1517, 0, 3, '2017-03-30 12:18:02', NULL),
(401, 990, 685, 0, 0, 85, 1675, 1, 4, '2017-03-30 12:34:30', NULL),
(402, 1240, 510, 0, 0, 91, 1750, 0, 5, '2017-03-30 12:56:16', NULL),
(403, 1031, 562, 0, 0, 84, 1593, 1, 6, '2017-03-30 13:15:39', NULL),
(404, 1322, 330, 0, 0, 87, 1652, 0, 7, '2017-03-30 13:40:00', NULL),
(405, 1375, 244, 0, 0, 73, 1619, 2, 8, '2017-03-30 14:12:17', NULL),
(406, 1431, 170, 0, 0, 76, 1601, 2, 10, '2017-03-30 14:34:28', NULL),
(407, 900, 685, 0, 0, 83, 1585, 1, 1, '2017-03-31 11:50:18', NULL),
(408, 904, 647, 0, 0, 84, 1551, 1, 3, '2017-03-31 12:11:47', NULL),
(409, 933, 745, 0, 0, 85, 1678, 1, 4, '2017-03-31 12:29:51', NULL),
(410, 1181, 544, 0, 0, 90, 1725, 1, 5, '2017-03-31 12:51:31', NULL),
(411, 0, 0, 0, 0, 0, 0, 1, 12, '2017-03-31 12:59:02', NULL),
(412, 1088, 527, 0, 0, 85, 1615, 0, 6, '2017-03-31 13:15:28', NULL),
(413, 1312, 311, 0, 0, 85, 1623, 1, 7, '2017-03-31 13:41:15', NULL),
(414, 1396, 222, 0, 0, 73, 1618, 2, 8, '2017-03-31 14:07:42', NULL),
(415, 1385, 200, 0, 0, 75, 1585, 2, 10, '2017-03-31 14:30:38', NULL),
(416, 818, 743, 0, 0, 82, 1561, 0, 1, '2017-04-01 11:51:46', NULL),
(417, 850, 710, 0, 0, 85, 1560, 0, 3, '2017-04-01 12:13:20', NULL),
(418, 991, 698, 0, 0, 86, 1689, 2, 4, '2017-04-01 12:31:49', NULL),
(419, 1212, 556, 0, 0, 92, 1768, 3, 5, '2017-04-01 12:56:01', NULL),
(420, 1123, 524, 0, 0, 86, 1647, 0, 6, '2017-04-01 13:19:38', NULL),
(421, 1363, 314, 0, 0, 88, 1677, 0, 7, '2017-04-01 13:44:12', NULL),
(422, 1465, 220, 0, 0, 76, 1685, 5, 8, '2017-04-01 14:13:50', NULL),
(423, 1460, 185, 0, 0, 78, 1645, 0, 10, '2017-04-01 14:37:51', NULL),
(424, 873, 610, 0, 0, 78, 1483, 0, 1, '2017-04-02 11:56:22', NULL),
(425, 766, 607, 0, 0, 75, 1373, 0, 3, '2017-04-02 12:15:53', NULL),
(426, 977, 612, 0, 0, 81, 1589, 2, 4, '2017-04-02 12:30:07', NULL),
(427, 1178, 450, 0, 0, 85, 1628, 0, 5, '2017-04-02 12:49:51', NULL),
(428, 1025, 548, 0, 0, 83, 1573, -1, 6, '2017-04-02 13:08:05', NULL),
(429, 1237, 351, 0, 0, 83, 1588, 0, 7, '2017-04-02 13:31:35', NULL),
(430, 1415, 216, 0, 0, 77, 1631, 2, 10, '2017-04-02 13:49:42', NULL),
(431, 1297, 250, 0, 0, 70, 1547, 1, 8, '2017-04-02 13:49:53', NULL),
(432, 911, 693, 0, 0, 84, 1604, 1, 1, '2017-04-03 11:49:18', NULL),
(433, 933, 654, 0, 0, 86, 1587, 1, 3, '2017-04-03 12:11:52', NULL),
(434, 1075, 660, 0, 0, 88, 1735, 1, 4, '2017-04-03 12:30:24', NULL),
(435, 1235, 505, 0, 0, 91, 1740, 0, 5, '2017-04-03 12:52:24', NULL),
(436, 1110, 522, 0, 0, 86, 1632, 0, 6, '2017-04-03 13:13:02', NULL),
(437, 1330, 335, 0, 0, 87, 1665, 0, 7, '2017-04-03 13:38:38', NULL),
(438, 1416, 225, 0, 0, 74, 1641, 1, 8, '2017-04-03 14:09:03', NULL),
(439, 1516, 182, 0, 0, 80, 1698, 4, 10, '2017-04-03 14:32:05', NULL),
(440, 923, 635, 0, 0, 82, 1558, 0, 1, '2017-04-04 11:51:02', NULL),
(441, 912, 633, 0, 0, 84, 1545, 0, 3, '2017-04-04 12:10:57', NULL),
(442, 0, 0, 0, 0, 0, 0, 3, 11, '2017-04-04 12:16:28', NULL),
(443, 1051, 656, 0, 0, 87, 1707, 1, 4, '2017-04-04 12:31:16', NULL),
(444, 1290, 450, 0, 0, 91, 1740, 1, 5, '2017-04-04 12:55:30', NULL),
(445, 1208, 450, 0, 0, 87, 1658, 0, 6, '2017-04-04 13:21:32', NULL),
(446, 1346, 267, 0, 0, 85, 1613, 2, 7, '2017-04-04 13:45:54', NULL),
(447, 1420, 190, 0, 0, 73, 1610, 1, 8, '2017-04-04 14:11:08', NULL),
(448, 1538, 143, 0, 0, 80, 1681, 2, 10, '2017-04-04 14:34:11', NULL),
(449, 875, 670, 0, 0, 81, 1545, 0, 1, '2017-04-05 11:47:59', NULL),
(450, 896, 600, 0, 0, 81, 1496, 1, 3, '2017-04-05 12:09:18', NULL),
(451, 1032, 633, 0, 0, 85, 1665, 0, 4, '2017-04-05 12:29:28', NULL),
(452, 1242, 480, 0, 0, 90, 1722, 3, 5, '2017-04-05 12:51:46', NULL),
(453, 1166, 426, 0, 0, 84, 1592, 2, 6, '2017-04-05 13:11:53', NULL),
(454, 1305, 330, 0, 0, 86, 1635, 1, 7, '2017-04-05 13:34:42', NULL),
(455, 1410, 198, 0, 0, 73, 1608, 2, 8, '2017-04-05 13:59:46', NULL),
(456, 1527, 137, 0, 0, 79, 1664, 3, 10, '2017-04-05 14:24:30', NULL),
(457, 877, 693, 0, 0, 82, 1570, 1, 1, '2017-04-06 11:51:16', NULL),
(458, 870, 677, 0, 0, 84, 1547, 0, 3, '2017-04-06 12:10:42', NULL),
(459, 1013, 672, 0, 0, 86, 1685, 0, 4, '2017-04-06 12:31:54', NULL),
(460, 0, 0, 0, 0, 0, 0, 3, 11, '2017-04-06 12:32:14', NULL),
(461, 1180, 545, 0, 0, 90, 1725, 2, 5, '2017-04-06 12:55:17', NULL),
(462, 1185, 475, 0, 0, 87, 1660, 1, 6, '2017-04-06 13:25:40', NULL),
(463, 1363, 276, 0, 0, 86, 1639, 1, 7, '2017-04-06 13:49:11', NULL),
(464, 1430, 172, 0, 0, 73, 1602, 4, 8, '2017-04-06 14:17:39', NULL),
(465, 1580, 136, 0, 0, 82, 1716, 1, 10, '2017-04-06 14:41:30', NULL),
(466, 848, 660, 0, 0, 79, 1508, 1, 1, '2017-04-07 11:50:14', NULL),
(467, 871, 600, 0, 0, 80, 1471, 0, 3, '2017-04-07 12:09:29', NULL),
(468, 972, 693, 0, 0, 85, 1665, 1, 4, '2017-04-07 12:26:46', NULL),
(469, 1141, 563, 0, 0, 89, 1704, 0, 5, '2017-04-07 12:48:33', NULL),
(470, 1096, 512, 0, 0, 84, 1608, 0, 6, '2017-04-07 13:09:09', NULL),
(471, 1313, 315, 0, 0, 86, 1628, 0, 7, '2017-04-07 13:34:24', NULL),
(472, 1331, 223, 0, 0, 70, 1554, 1, 8, '2017-04-07 13:59:10', NULL),
(473, 1374, 186, 0, 0, 74, 1560, 1, 10, '2017-04-07 14:22:20', NULL),
(474, 936, 612, 0, 0, 81, 1548, 1, 1, '2017-04-08 11:48:58', NULL),
(475, 926, 585, 0, 0, 82, 1511, 1, 3, '2017-04-08 12:08:38', NULL),
(476, 0, 0, 0, 0, 0, 0, 2, 11, '2017-04-08 12:23:39', NULL),
(477, 1030, 631, 0, 0, 85, 1661, 0, 4, '2017-04-08 12:24:28', NULL),
(478, 1182, 520, 0, 0, 89, 1702, 0, 5, '2017-04-08 12:47:10', NULL),
(479, 1150, 495, 0, 0, 86, 1645, 0, 6, '2017-04-08 13:14:11', NULL),
(480, 1340, 315, 0, 0, 87, 1655, 0, 7, '2017-04-08 13:39:12', NULL),
(481, 1387, 203, 0, 0, 72, 1590, 1, 8, '2017-04-08 14:08:14', NULL),
(482, 1543, 143, 0, 0, 80, 1686, 2, 10, '2017-04-08 14:33:47', NULL),
(483, 905, 640, 0, 0, 81, 1545, 0, 1, '2017-04-09 11:49:10', NULL),
(484, 923, 563, 0, 0, 81, 1486, 1, 3, '2017-04-09 12:06:57', NULL),
(485, 1017, 670, 0, 0, 86, 1687, 0, 4, '2017-04-09 12:24:04', NULL),
(486, 1160, 525, 0, 0, 88, 1685, 0, 5, '2017-04-09 12:46:44', NULL),
(487, 1021, 602, 0, 0, 85, 1623, 0, 6, '2017-04-09 13:04:47', NULL),
(488, 1255, 357, 0, 0, 85, 1612, 0, 7, '2017-04-09 13:29:38', NULL),
(489, 1310, 220, 0, 0, 69, 1530, 2, 8, '2017-04-09 13:50:39', NULL),
(490, 1455, 163, 0, 0, 77, 1618, 0, 10, '2017-04-09 14:16:17', NULL),
(491, 918, 623, 0, 0, 81, 1541, 2, 1, '2017-04-10 12:02:28', NULL),
(492, 1005, 545, 0, 0, 85, 1550, 2, 3, '2017-04-10 12:28:28', NULL),
(493, 1135, 551, 0, 0, 86, 1686, 3, 4, '2017-04-10 12:46:34', NULL),
(494, 1290, 414, 0, 0, 89, 1704, 0, 5, '2017-04-10 13:06:17', NULL),
(495, 1130, 450, 0, 0, 83, 1580, 0, 6, '2017-04-10 13:25:21', NULL),
(496, 1312, 375, 0, 0, 89, 1687, 1, 7, '2017-04-10 13:51:22', NULL),
(497, 1380, 185, 0, 0, 71, 1565, 0, 8, '2017-04-10 14:14:17', NULL),
(498, 1542, 148, 0, 0, 80, 1690, 2, 10, '2017-04-10 14:36:49', NULL),
(499, 891, 663, 0, 0, 82, 1554, 0, 1, '2017-04-11 11:49:45', NULL),
(500, 895, 636, 0, 0, 84, 1531, 1, 3, '2017-04-11 12:08:08', NULL),
(501, 0, 0, 0, 0, 0, 0, 2, 13, '2017-04-11 12:15:11', NULL),
(502, 1000, 665, 0, 0, 85, 1665, 0, 4, '2017-04-11 12:25:19', NULL),
(503, 1195, 518, 0, 0, 89, 1713, 1, 5, '2017-04-11 12:45:55', NULL),
(504, 1100, 526, 0, 0, 85, 1626, 1, 6, '2017-04-11 13:06:46', NULL),
(505, 1310, 315, 0, 0, 86, 1625, 1, 7, '2017-04-11 13:31:24', NULL),
(506, 1278, 268, 0, 0, 70, 1546, 4, 8, '2017-04-11 13:58:04', NULL),
(507, 1520, 160, 0, 0, 80, 1680, 0, 10, '2017-04-11 14:25:13', NULL),
(508, 775, 0, 0, 0, 41, 775, 0, 1, '2017-04-12 11:46:23', NULL),
(509, 961, 0, 0, 0, 52, 961, 0, 3, '2017-04-12 12:04:57', NULL);

--
-- Disparadores `postura_huevo`
--
DELIMITER $$
CREATE TRIGGER `actualizar_huevos_acumulados_ph` AFTER UPDATE ON `postura_huevo` FOR EACH ROW BEGIN
DECLARE huevos integer;
SET huevos = NEW.cantidad_total - OLD.cantidad_total;

UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad + huevos;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `agregar_huevos_acumulados_ph` AFTER INSERT ON `postura_huevo` FOR EACH ROW BEGIN

IF EXISTS(SELECT * from huevo_acumulado )THEN 
UPDATE huevo_acumulado SET huevo_acumulado.cantidad = huevo_acumulado.cantidad + NEW.cantidad_total;
ELSE
 INSERT INTO huevo_acumulado SET huevo_acumulado.cantidad=NEW.cantidad_total;
END IF; 

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango_edad`
--

CREATE TABLE `rango_edad` (
  `id` int(11) NOT NULL,
  `edad_min` int(11) DEFAULT NULL,
  `edad_max` int(11) DEFAULT NULL,
  `id_alimento` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rango_edad`
--

INSERT INTO `rango_edad` (`id`, `edad_min`, `edad_max`, `id_alimento`, `estado`, `deleted_at`) VALUES
(1, 0, 10, 1, 1, '2017-05-18'),
(2, 11, 13, 3, 1, '2017-05-18'),
(3, 14, 17, 2, 1, NULL),
(4, 17, 21, 4, 1, '2017-05-18'),
(5, 19, 25, 6, 1, '2017-05-21'),
(6, 26, 30, 4, 1, '2017-05-18'),
(7, 35, 45, 2, 1, '2017-05-18'),
(9, 0, 5, 1, 1, NULL),
(10, 26, 30, 5, 1, NULL),
(11, 31, 35, 4, 1, NULL),
(12, 45, 150, 5, 1, '2017-05-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango_temperatura`
--

CREATE TABLE `rango_temperatura` (
  `id` int(11) NOT NULL,
  `temp_min` int(11) DEFAULT NULL,
  `temp_max` int(11) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rango_temperatura`
--

INSERT INTO `rango_temperatura` (`id`, `temp_min`, `temp_max`, `estado`, `deleted_at`) VALUES
(1, 10, 38, 1, '2017-02-08'),
(2, 18, 25, 1, '2017-02-09'),
(3, 26, 30, 1, '2017-02-09'),
(4, 10, 17, 1, '2017-02-09'),
(5, 31, 40, 1, '2017-02-09'),
(6, 9, 15, 1, NULL),
(7, 16, 18, 1, '2017-05-18'),
(8, 19, 25, 1, '2017-05-21'),
(9, 26, 28, 1, '2017-05-18'),
(10, 31, 34, 1, '2017-05-18'),
(11, 35, 39, 1, '2017-05-18'),
(12, 29, 30, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `silo`
--

CREATE TABLE `silo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `capacidad` decimal(10,1) DEFAULT NULL,
  `cantidad` decimal(10,1) DEFAULT NULL,
  `cantidad_minima` decimal(10,1) NOT NULL,
  `id_alimento` int(11) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `numero` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `silo`
--

INSERT INTO `silo` (`id`, `nombre`, `capacidad`, `cantidad`, `cantidad_minima`, `id_alimento`, `estado`, `numero`, `deleted_at`) VALUES
(1, 'BOLSA', '400.0', '400.0', '40.0', 1, 1, 0, NULL),
(2, 'SILO 1 J1', '6000.0', '2722.3', '200.0', 2, 1, 0, NULL),
(3, 'SILO 2 J2', '6000.0', '6000.0', '500.0', 3, 1, 0, NULL),
(4, 'SILO 3 J3', '6000.0', '768.2', '600.0', 4, 1, 0, NULL),
(5, 'SILO 4 G4', '12000.0', '7427.6', '600.0', 5, 1, 0, NULL),
(6, 'SILO 5', '6000.0', '6000.0', '600.0', 6, 0, 0, '2017-02-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobrante`
--

CREATE TABLE `sobrante` (
  `id` int(11) NOT NULL,
  `cantidad_maple` int(11) DEFAULT NULL,
  `cantidad_huevo` int(11) DEFAULT NULL,
  `id_tipo_caja` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sobrante`
--

INSERT INTO `sobrante` (`id`, `cantidad_maple`, `cantidad_huevo`, `id_tipo_caja`, `fecha`, `deleted_at`) VALUES
(1, 2, 40, 1, '2017-02-08 20:56:29', NULL),
(2, 1, 20, 2, '2017-02-08 20:56:36', NULL),
(3, 1, 30, 3, '2017-02-08 20:56:42', NULL),
(4, 4, 120, 4, '2017-02-08 20:57:24', NULL),
(5, 2, 60, 5, '2017-02-08 20:57:35', NULL),
(6, 2, 60, 6, '2017-02-08 20:57:38', NULL),
(7, 2, 40, 2, '2017-02-10 22:22:29', NULL),
(8, 5, 150, 6, '2017-02-10 22:24:28', NULL),
(9, 1, 30, 5, '2017-02-10 22:25:02', NULL),
(10, 1, 30, 4, '2017-02-10 22:25:12', NULL),
(11, 4, 80, 1, '2017-02-11 19:03:46', NULL),
(12, 3, 90, 3, '2017-02-11 19:04:06', NULL),
(13, 2, 60, 5, '2017-02-11 19:04:25', NULL),
(14, 2, 60, 6, '2017-02-11 19:05:00', NULL),
(15, 2, 40, 1, '2017-02-12 15:46:47', NULL),
(16, 4, 80, 2, '2017-02-12 15:46:59', NULL),
(17, 3, 90, 3, '2017-02-12 15:47:04', NULL),
(18, 5, 150, 5, '2017-02-12 15:47:17', NULL),
(19, 5, 150, 6, '2017-02-12 15:47:25', NULL),
(20, 4, 80, 1, '2017-02-13 19:10:22', NULL),
(21, 1, 20, 2, '2017-02-13 19:10:48', NULL),
(22, 3, 90, 3, '2017-02-13 19:10:57', NULL),
(23, 1, 30, 4, '2017-02-13 19:11:27', NULL),
(24, 1, 30, 5, '2017-02-13 19:11:36', NULL),
(25, 3, 90, 6, '2017-02-13 19:11:44', NULL),
(26, 3, 60, 1, '2017-02-14 18:43:51', NULL),
(27, 4, 120, 4, '2017-02-14 18:44:05', NULL),
(28, 4, 120, 5, '2017-02-14 18:44:13', NULL),
(29, 2, 40, 1, '2017-02-15 19:23:07', NULL),
(30, 3, 60, 2, '2017-02-15 19:23:35', NULL),
(31, 1, 30, 4, '2017-02-15 19:23:59', NULL),
(32, 2, 60, 5, '2017-02-15 19:24:12', NULL),
(33, 3, 90, 6, '2017-02-15 19:24:20', NULL),
(34, 2, 60, 3, '2017-02-16 21:52:11', NULL),
(35, 3, 90, 5, '2017-02-16 21:52:50', NULL),
(36, 2, 60, 6, '2017-02-16 21:52:57', NULL),
(37, 4, 80, 1, '2017-02-17 18:37:08', NULL),
(38, 3, 60, 2, '2017-02-17 18:37:15', NULL),
(39, 1, 30, 3, '2017-02-17 18:37:21', NULL),
(40, 5, 150, 4, '2017-02-17 18:37:32', NULL),
(41, 5, 150, 5, '2017-02-17 18:37:41', NULL),
(42, 2, 40, 2, '2017-02-18 18:43:22', NULL),
(43, 5, 150, 3, '2017-02-18 18:43:41', NULL),
(44, 4, 120, 4, '2017-02-18 18:43:51', NULL),
(45, 2, 60, 5, '2017-02-18 18:44:02', NULL),
(46, 4, 120, 6, '2017-02-18 18:44:09', NULL),
(47, 2, 60, 6, '2017-02-19 15:49:45', NULL),
(48, 2, 60, 4, '2017-02-19 15:50:11', NULL),
(49, 3, 90, 3, '2017-02-19 15:50:33', NULL),
(50, 2, 40, 2, '2017-02-19 15:50:47', NULL),
(51, 2, 40, 1, '2017-02-19 15:51:00', NULL),
(52, 1, 20, 1, '2017-02-20 19:22:26', NULL),
(53, 3, 60, 2, '2017-02-20 19:22:33', NULL),
(54, 3, 90, 3, '2017-02-20 19:22:38', NULL),
(55, 3, 90, 4, '2017-02-20 19:23:15', NULL),
(56, 1, 30, 5, '2017-02-20 19:23:21', NULL),
(57, 2, 40, 1, '2017-02-21 19:08:32', NULL),
(58, 2, 40, 2, '2017-02-21 19:08:38', NULL),
(59, 1, 30, 3, '2017-02-21 19:08:44', NULL),
(60, 4, 120, 5, '2017-02-21 19:08:58', NULL),
(61, 4, 120, 6, '2017-02-21 19:09:03', NULL),
(62, 3, 60, 1, '2017-02-22 18:59:23', NULL),
(63, 4, 80, 2, '2017-02-22 18:59:30', NULL),
(64, 4, 120, 3, '2017-02-22 18:59:37', NULL),
(65, 4, 120, 4, '2017-02-22 18:59:58', NULL),
(66, 2, 60, 5, '2017-02-22 19:00:06', NULL),
(67, 4, 120, 6, '2017-02-22 19:00:14', NULL),
(68, 9, 193, 1, '2017-02-23 21:26:00', NULL),
(69, 7, 224, 2, '2017-02-23 21:26:04', NULL),
(70, 1, 33, 3, '2017-02-23 21:26:15', NULL),
(71, 1, 49, 5, '2017-02-23 21:26:19', NULL),
(72, 9, 274, 6, '2017-02-23 21:26:22', NULL),
(73, 5, 170, 4, '2017-02-23 23:41:20', NULL),
(74, 7, 140, 1, '2017-02-24 19:10:49', NULL),
(75, 7, 210, 2, '2017-02-24 19:15:06', NULL),
(76, 10, 300, 3, '2017-02-24 19:15:31', NULL),
(77, 7, 210, 4, '2017-02-24 19:15:44', NULL),
(78, 8, 240, 5, '2017-02-24 19:16:02', NULL),
(79, 4, 120, 6, '2017-02-24 19:16:08', NULL),
(80, 7, 156, 1, '2017-02-25 15:54:42', NULL),
(81, 9, 276, 2, '2017-02-25 19:05:56', NULL),
(82, 4, 135, 3, '2017-02-25 19:06:20', NULL),
(83, 10, 300, 5, '2017-02-25 19:08:06', NULL),
(84, 9, 290, 6, '2017-02-25 19:10:29', NULL),
(85, 2, 48, 1, '2017-02-26 15:58:14', NULL),
(86, 5, 160, 2, '2017-02-26 15:58:55', NULL),
(87, 8, 240, 3, '2017-02-26 15:59:16', NULL),
(88, 6, 191, 4, '2017-02-26 16:01:13', NULL),
(89, 1, 54, 5, '2017-02-26 16:02:04', NULL),
(90, 1, 39, 6, '2017-02-26 16:02:37', NULL),
(91, 6, 125, 1, '2017-02-27 15:55:09', NULL),
(92, 6, 190, 2, '2017-02-27 15:56:25', NULL),
(93, 6, 196, 3, '2017-02-27 15:59:13', NULL),
(94, 7, 238, 4, '2017-02-27 16:01:30', NULL),
(95, 8, 253, 5, '2017-02-27 16:02:40', NULL),
(96, 5, 171, 6, '2017-02-27 16:03:28', NULL),
(97, 6, 200, 2, '2017-02-28 15:56:01', NULL),
(98, 3, 98, 3, '2017-02-28 15:56:53', NULL),
(99, 3, 99, 4, '2017-02-28 15:57:14', NULL),
(100, 9, 293, 5, '2017-02-28 15:58:27', NULL),
(101, 4, 142, 6, '2017-02-28 16:01:24', NULL),
(102, 1, 26, 1, '2017-03-01 19:35:23', NULL),
(103, 9, 280, 2, '2017-03-01 19:36:35', NULL),
(104, 3, 90, 3, '2017-03-01 19:37:14', NULL),
(105, 10, 314, 4, '2017-03-01 19:38:07', NULL),
(106, 5, 175, 5, '2017-03-01 19:38:59', NULL),
(107, 4, 129, 6, '2017-03-01 19:39:37', NULL),
(108, 5, 174, 2, '2017-03-02 19:33:25', NULL),
(109, 6, 194, 3, '2017-03-02 19:34:07', NULL),
(110, 10, 310, 4, '2017-03-02 19:34:32', NULL),
(111, 11, 350, 5, '2017-03-02 19:36:20', NULL),
(112, 7, 147, 1, '2017-03-02 19:39:21', NULL),
(113, 8, 254, 6, '2017-03-02 19:41:34', NULL),
(114, 7, 140, 1, '2017-03-03 19:01:38', NULL),
(115, 8, 242, 2, '2017-03-03 19:02:42', NULL),
(116, 6, 180, 3, '2017-03-03 19:03:20', NULL),
(117, 4, 131, 4, '2017-03-03 19:04:10', NULL),
(118, 3, 115, 5, '2017-03-03 19:04:56', NULL),
(119, 6, 190, 6, '2017-03-03 19:05:38', NULL),
(120, 8, 164, 1, '2017-03-04 19:06:13', NULL),
(121, 2, 74, 2, '2017-03-04 19:07:15', NULL),
(122, 7, 228, 3, '2017-03-04 19:08:14', NULL),
(123, 9, 289, 4, '2017-03-04 19:09:11', NULL),
(124, 4, 147, 5, '2017-03-04 19:09:43', NULL),
(125, 2, 73, 6, '2017-03-04 19:10:06', NULL),
(126, 8, 171, 1, '2017-03-05 15:51:03', NULL),
(127, 2, 61, 2, '2017-03-05 15:51:49', NULL),
(128, 7, 237, 3, '2017-03-05 15:53:01', NULL),
(129, 1, 30, 5, '2017-03-05 15:55:09', NULL),
(130, 2, 71, 6, '2017-03-05 15:55:43', NULL),
(131, 1, 24, 1, '2017-03-06 19:26:20', NULL),
(132, 3, 109, 2, '2017-03-06 19:26:48', NULL),
(133, 8, 249, 3, '2017-03-06 19:27:16', NULL),
(134, 5, 152, 4, '2017-03-06 19:27:35', NULL),
(135, 10, 320, 5, '2017-03-06 19:28:07', NULL),
(136, 6, 196, 6, '2017-03-06 19:28:45', NULL),
(137, 8, 170, 1, '2017-03-07 19:21:10', NULL),
(138, 6, 197, 2, '2017-03-07 19:21:52', NULL),
(139, 10, 313, 3, '2017-03-07 19:22:29', NULL),
(140, 1, 36, 4, '2017-03-07 19:22:55', NULL),
(141, 2, 87, 5, '2017-03-07 19:23:43', NULL),
(142, 2, 73, 6, '2017-03-07 19:24:06', NULL),
(143, 8, 160, 1, '2017-03-08 19:57:50', NULL),
(144, 8, 260, 2, '2017-03-08 20:00:05', NULL),
(145, 9, 293, 3, '2017-03-08 20:00:44', NULL),
(146, 6, 194, 4, '2017-03-08 20:01:17', NULL),
(147, 1, 37, 1, '2017-03-09 19:09:44', NULL),
(148, 3, 110, 2, '2017-03-09 19:10:49', NULL),
(149, 3, 95, 3, '2017-03-09 19:11:15', NULL),
(150, 2, 61, 4, '2017-03-09 19:11:38', NULL),
(151, 1, 38, 5, '2017-03-09 19:11:57', NULL),
(152, 10, 309, 6, '2017-03-09 19:12:22', NULL),
(153, 6, 125, 1, '2017-03-10 19:17:16', NULL),
(154, 1, 31, 2, '2017-03-10 19:17:46', NULL),
(155, 4, 133, 3, '2017-03-10 19:18:08', NULL),
(156, 5, 166, 4, '2017-03-10 19:18:38', NULL),
(157, 9, 278, 5, '2017-03-10 19:19:16', NULL),
(158, 8, 267, 6, '2017-03-10 19:19:52', NULL),
(159, 2, 56, 1, '2017-03-11 18:58:56', NULL),
(160, 1, 58, 2, '2017-03-11 18:59:23', NULL),
(161, 4, 130, 3, '2017-03-11 18:59:50', NULL),
(162, 1, 38, 4, '2017-03-11 19:00:04', NULL),
(163, 2, 76, 5, '2017-03-11 19:00:26', NULL),
(164, 7, 227, 6, '2017-03-11 19:01:18', NULL),
(165, 1, 41, 6, '2017-03-12 15:40:56', NULL),
(166, 5, 115, 1, '2017-03-12 15:42:13', NULL),
(167, 8, 248, 3, '2017-03-12 15:42:56', NULL),
(168, 4, 120, 4, '2017-03-12 15:43:11', NULL),
(169, 1, 30, 5, '2017-03-12 15:43:20', NULL),
(170, 2, 80, 2, '2017-03-13 19:37:43', NULL),
(171, 7, 236, 3, '2017-03-13 19:38:18', NULL),
(172, 6, 208, 4, '2017-03-13 19:39:12', NULL),
(173, 4, 137, 5, '2017-03-13 19:39:37', NULL),
(174, 9, 295, 6, '2017-03-13 19:41:00', NULL),
(175, 7, 158, 1, '2017-03-14 19:23:16', NULL),
(176, 4, 132, 3, '2017-03-14 19:24:46', NULL),
(177, 5, 156, 4, '2017-03-14 19:25:07', NULL),
(178, 1, 41, 5, '2017-03-14 19:25:31', NULL),
(179, 1, 20, 1, '2017-03-15 19:08:03', NULL),
(180, 3, 103, 2, '2017-03-15 19:08:26', NULL),
(181, 8, 246, 4, '2017-03-15 19:08:53', NULL),
(182, 3, 92, 5, '2017-03-15 19:09:07', NULL),
(183, 3, 99, 6, '2017-03-15 19:09:38', NULL),
(184, 6, 121, 1, '2017-03-16 19:16:37', NULL),
(185, 3, 93, 2, '2017-03-16 19:16:58', NULL),
(186, 10, 324, 3, '2017-03-16 19:17:36', NULL),
(187, 1, 47, 4, '2017-03-16 19:18:09', NULL),
(188, 2, 74, 5, '2017-03-16 19:18:39', NULL),
(189, 5, 177, 6, '2017-03-16 19:19:21', NULL),
(190, 5, 111, 1, '2017-03-17 19:11:45', NULL),
(191, 1, 30, 2, '2017-03-17 19:12:05', NULL),
(192, 7, 212, 3, '2017-03-17 19:12:39', NULL),
(193, 8, 245, 6, '2017-03-17 19:14:17', NULL),
(194, 7, 155, 1, '2017-03-18 20:05:44', NULL),
(195, 2, 67, 2, '2017-03-18 20:06:02', NULL),
(196, 3, 103, 3, '2017-03-18 20:06:33', NULL),
(197, 7, 210, 4, '2017-03-18 20:06:46', NULL),
(198, 5, 150, 5, '2017-03-18 20:06:58', NULL),
(199, 1, 23, 1, '2017-03-19 15:46:39', NULL),
(200, 5, 174, 2, '2017-03-19 15:46:54', NULL),
(201, 7, 214, 3, '2017-03-19 15:47:09', NULL),
(202, 1, 46, 5, '2017-03-19 15:47:37', NULL),
(203, 1, 34, 6, '2017-03-19 15:47:55', NULL),
(204, 7, 151, 1, '2017-03-20 19:54:44', NULL),
(205, 7, 235, 2, '2017-03-20 19:55:43', NULL),
(206, 10, 300, 3, '2017-03-20 19:55:54', NULL),
(207, 8, 243, 4, '2017-03-20 19:56:09', NULL),
(208, 3, 105, 5, '2017-03-20 19:56:47', NULL),
(209, 7, 230, 6, '2017-03-20 19:57:21', NULL),
(210, 2, 55, 1, '2017-03-21 19:15:18', NULL),
(211, 5, 1167, 2, '2017-03-21 19:15:54', NULL),
(212, 9, 278, 3, '2017-03-21 19:16:20', NULL),
(213, 10, 324, 5, '2017-03-21 19:17:07', NULL),
(214, 11, 340, 6, '2017-03-21 19:24:52', NULL),
(215, 9, 284, 2, '2017-03-22 19:12:58', NULL),
(216, 7, 154, 1, '2017-03-22 19:13:46', NULL),
(217, 4, 147, 3, '2017-03-22 19:14:15', NULL),
(218, 9, 287, 4, '2017-03-22 19:15:58', NULL),
(219, 10, 301, 5, '2017-03-22 19:16:27', NULL),
(220, 2, 75, 6, '2017-03-22 19:17:00', NULL),
(221, 8, 248, 2, '2017-03-23 19:39:54', NULL),
(222, 2, 60, 3, '2017-03-23 19:40:21', NULL),
(223, 5, 165, 4, '2017-03-23 19:40:53', NULL),
(224, 2, 77, 5, '2017-03-23 19:41:47', NULL),
(225, 4, 146, 6, '2017-03-23 19:42:48', NULL),
(226, 2, 48, 1, '2017-03-24 19:39:59', NULL),
(227, 9, 277, 2, '2017-03-24 19:40:18', NULL),
(228, 4, 131, 3, '2017-03-24 19:41:12', NULL),
(229, 9, 290, 4, '2017-03-24 19:41:51', NULL),
(230, 9, 271, 5, '2017-03-24 19:42:17', NULL),
(231, 7, 233, 6, '2017-03-24 19:42:56', NULL),
(232, 5, 107, 1, '2017-03-25 19:10:49', NULL),
(233, 2, 65, 2, '2017-03-25 19:11:02', NULL),
(234, 7, 217, 3, '2017-03-25 19:11:24', NULL),
(235, 7, 228, 4, '2017-03-25 19:11:55', NULL),
(236, 6, 201, 5, '2017-03-25 19:12:19', NULL),
(237, 10, 307, 6, '2017-03-25 19:12:42', NULL),
(238, 8, 172, 1, '2017-03-26 15:43:23', NULL),
(239, 8, 255, 2, '2017-03-26 15:43:55', NULL),
(240, 7, 225, 3, '2017-03-26 15:48:56', NULL),
(241, 11, 350, 4, '2017-03-26 15:49:22', NULL),
(242, 4, 136, 5, '2017-03-26 15:50:02', NULL),
(243, 8, 242, 6, '2017-03-26 15:50:37', NULL),
(244, 3, 76, 1, '2017-03-27 22:02:46', NULL),
(245, 3, 119, 2, '2017-03-27 22:03:35', NULL),
(246, 9, 277, 3, '2017-03-27 22:03:53', NULL),
(247, 6, 199, 4, '2017-03-27 22:04:28', NULL),
(248, 7, 235, 5, '2017-03-27 22:05:02', NULL),
(249, 11, 339, 6, '2017-03-27 22:05:38', NULL),
(250, 3, 60, 1, '2017-03-28 19:15:20', NULL),
(251, 8, 256, 2, '2017-03-28 19:16:13', NULL),
(252, 9, 287, 5, '2017-03-28 19:17:18', NULL),
(253, 9, 296, 6, '2017-03-28 19:17:47', NULL),
(254, 7, 147, 1, '2017-03-29 19:45:13', NULL),
(255, 3, 106, 2, '2017-03-29 19:45:41', NULL),
(256, 3, 98, 3, '2017-03-29 19:45:54', NULL),
(257, 1, 48, 4, '2017-03-29 19:46:25', NULL),
(258, 5, 175, 5, '2017-03-29 19:47:03', NULL),
(259, 8, 254, 6, '2017-03-29 19:47:34', NULL),
(260, 1, 31, 1, '2017-03-30 19:09:43', NULL),
(261, 2, 60, 2, '2017-03-30 19:09:53', NULL),
(262, 7, 226, 3, '2017-03-30 19:10:28', NULL),
(263, 7, 236, 6, '2017-03-30 19:11:24', NULL),
(264, 8, 177, 1, '2017-03-31 19:53:10', NULL),
(265, 2, 87, 2, '2017-03-31 19:53:35', NULL),
(266, 10, 320, 3, '2017-03-31 19:54:24', NULL),
(267, 9, 293, 4, '2017-03-31 19:54:53', NULL),
(268, 3, 116, 5, '2017-03-31 19:55:30', NULL),
(269, 5, 172, 6, '2017-03-31 19:56:08', NULL),
(270, 5, 105, 1, '2017-04-01 21:53:14', NULL),
(271, 2, 77, 2, '2017-04-01 21:54:53', NULL),
(272, 1, 46, 3, '2017-04-01 21:55:41', NULL),
(273, 2, 60, 4, '2017-04-01 21:56:07', NULL),
(274, 11, 334, 5, '2017-04-01 21:57:01', NULL),
(275, 4, 128, 6, '2017-04-01 21:57:49', NULL),
(276, 4, 81, 1, '2017-04-02 16:03:47', NULL),
(277, 1, 37, 2, '2017-04-02 16:04:02', NULL),
(278, 7, 211, 3, '2017-04-02 16:04:15', NULL),
(279, 10, 327, 4, '2017-04-02 16:04:41', NULL),
(280, 7, 211, 5, '2017-04-02 16:04:54', NULL),
(281, 10, 327, 6, '2017-04-02 16:05:12', NULL),
(282, 2, 57, 1, '2017-04-03 19:12:15', NULL),
(283, 4, 142, 2, '2017-04-03 19:12:52', NULL),
(284, 1, 42, 3, '2017-04-03 19:13:14', NULL),
(285, 10, 301, 4, '2017-04-03 19:13:31', NULL),
(286, 3, 109, 5, '2017-04-03 19:14:13', NULL),
(287, 8, 253, 6, '2017-04-03 19:14:52', NULL),
(288, 9, 273, 2, '2017-04-04 19:13:38', NULL),
(289, 2, 82, 3, '2017-04-04 19:14:00', NULL),
(290, 3, 110, 4, '2017-04-04 19:14:19', NULL),
(291, 5, 161, 5, '2017-04-04 19:14:49', NULL),
(292, 3, 108, 6, '2017-04-04 19:15:18', NULL),
(293, 6, 137, 1, '2017-04-05 19:11:18', NULL),
(294, 3, 108, 2, '2017-04-05 19:11:45', NULL),
(295, 2, 83, 3, '2017-04-05 19:12:14', NULL),
(296, 3, 93, 4, '2017-04-05 19:12:40', NULL),
(297, 6, 180, 5, '2017-04-05 19:12:49', NULL),
(298, 10, 304, 6, '2017-04-05 19:13:04', NULL),
(299, 1, 20, 1, '2017-04-06 19:25:39', NULL),
(300, 4, 142, 2, '2017-04-06 19:26:06', NULL),
(301, 10, 300, 3, '2017-04-06 19:26:15', NULL),
(302, 6, 180, 4, '2017-04-06 19:26:20', NULL),
(303, 6, 207, 5, '2017-04-06 19:27:03', NULL),
(304, 5, 173, 6, '2017-04-06 19:27:36', NULL),
(305, 2, 64, 2, '2017-04-07 19:35:06', NULL),
(306, 10, 322, 3, '2017-04-07 19:35:42', NULL),
(307, 9, 294, 4, '2017-04-07 19:36:16', NULL),
(308, 1, 34, 5, '2017-04-07 19:36:37', NULL),
(309, 11, 351, 6, '2017-04-07 19:37:04', NULL),
(310, 7, 156, 1, '2017-04-08 19:45:53', NULL),
(311, 8, 256, 2, '2017-04-08 19:46:09', NULL),
(312, 3, 100, 3, '2017-04-08 19:46:23', NULL),
(313, 1, 30, 4, '2017-04-08 19:46:37', NULL),
(314, 7, 270, 5, '2017-04-08 19:46:59', NULL),
(315, 6, 195, 6, '2017-04-08 19:47:19', NULL),
(316, 2, 43, 1, '2017-04-09 15:51:15', NULL),
(317, 2, 78, 2, '2017-04-09 15:51:31', NULL),
(318, 5, 173, 3, '2017-04-09 15:52:12', NULL),
(319, 7, 229, 4, '2017-04-09 15:52:44', NULL),
(320, 9, 273, 5, '2017-04-09 15:53:15', NULL),
(321, 11, 330, 6, '2017-04-09 15:53:31', NULL),
(322, 2, 57, 1, '2017-04-10 20:17:29', NULL),
(323, 8, 251, 2, '2017-04-10 20:17:56', NULL),
(324, 7, 230, 3, '2017-04-10 20:18:16', NULL),
(325, 2, 68, 5, '2017-04-10 20:18:56', NULL),
(326, 6, 200, 6, '2017-04-10 20:19:26', NULL),
(327, 3, 60, 1, '2017-04-11 19:15:56', NULL),
(328, 8, 246, 2, '2017-04-11 19:16:29', NULL),
(329, 1, 34, 3, '2017-04-11 19:17:00', NULL),
(330, 7, 217, 4, '2017-04-11 19:17:27', NULL),
(331, 4, 149, 5, '2017-04-11 19:18:57', NULL),
(332, 4, 136, 6, '2017-04-11 19:20:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(11) NOT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `temperatura`
--

INSERT INTO `temperatura` (`id`, `temperatura`, `deleted_at`) VALUES
(1, 20, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_caja`
--

CREATE TABLE `tipo_caja` (
  `id` int(11) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `precio` decimal(10,4) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `cantidad_maple` int(11) DEFAULT NULL,
  `id_maple` int(11) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_caja`
--

INSERT INTO `tipo_caja` (`id`, `tipo`, `precio`, `color`, `cantidad_maple`, `id_maple`, `estado`, `deleted_at`) VALUES
(1, 'EXTRA', '0.4310', 'silver', 10, 1, 1, NULL),
(2, 'PRIMERA', '0.4100', 'green', 10, 2, 1, NULL),
(3, 'SEGUNDA', '0.3990', 'red', 12, 2, 1, NULL),
(4, 'TERCERA', '0.3650', 'blue', 12, 2, 1, NULL),
(5, 'CUARTA', '0.3500', 'white', 12, 2, 1, NULL),
(6, 'QUINTA', '0.3000', 'yellow', 12, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_huevo`
--

CREATE TABLE `tipo_huevo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `precio` decimal(10,4) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `id_maple` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_huevo`
--

INSERT INTO `tipo_huevo` (`id`, `tipo`, `precio`, `estado`, `id_maple`, `deleted_at`) VALUES
(1, 'EXTRA GRANDE', '0.4670', 1, 3, NULL),
(2, 'BLANCO', '0.3000', 1, 2, NULL),
(3, 'PICADO', '0.2300', 1, 2, NULL),
(4, 'QUEBRADO', '0.1300', 1, 2, NULL),
(5, 'chorreados', '0.1300', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass2` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `remember_token`, `pass2`, `created_at`, `updated_at`) VALUES
(9, '', '', 'tito', '$2y$10$V.6btJ1/7pJEFW0lyKejkeP7FaxCBJ5agEGjlkvAN84xE4rhImuyO', 'utOmkcZUez6aS4TknFNHSgvIow39aCexEDXBw5foJ4vv7zJ6Xt5iFNWAklVa', '123456', NULL, NULL),
(12, '', '', 'higa', '$2y$10$urhS5uXw/.m2j0qHq3/UOOUBfAR/J6mhOzYounKKdIP64TrR.bUJ2', 'Rb4L0qx06HwG2nxbQpT06ZSLRTpnpjEeMtiXi9TBLl58Ws1BL2HQw39EV27z', '2969389', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

CREATE TABLE `vacuna` (
  `id` int(11) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `detalle` varchar(300) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `precio` decimal(6,2) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vacuna`
--

INSERT INTO `vacuna` (`id`, `edad`, `nombre`, `detalle`, `estado`, `precio`, `deleted_at`) VALUES
(1, 55, 'PARACETAMOL', 'SE FUMIGA', 0, '0.00', '2017-02-23'),
(2, 0, 'paracetamol', 'en agua', 1, '0.00', NULL),
(3, 1, 'PARACETAMOL', 'SEGUIR CON EL MISMO MANEJO', 1, '0.00', NULL),
(4, 3, 'LIBACOX Q', 'VIA ORAL 4 A 5 LITROS DE AGUA PARA 1000 POLLITAS', 1, '0.00', NULL),
(5, 5, 'ND AVINEW', 'VIA ORAL 5 LITROS DE AGUA', 1, '0.00', NULL),
(6, 13, 'ANTIALERGICO LIVACOX', 'EN CASO DE REACCION FUERTE A LA VACUNA LIVACOX, DAR 20GR DE AMPROL/DIA', 1, '0.00', NULL),
(7, 14, 'IB(BIORAL)', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA', 1, '0.00', NULL),
(8, 28, 'ND AVINEW', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA', 1, '0.00', NULL),
(9, 29, 'CRD', 'TYLAN 30GR VIA ORAL', 1, '0.00', NULL),
(10, 30, 'CRD', 'TYLAN 30GR VIA ORAL', 1, '0.00', NULL),
(11, 35, 'POX+ILT(LARINGO)', 'PUNCION A LA MEMBRANA DEL ALA', 1, '0.00', NULL),
(12, 35, 'TRT CEPA A', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA', 1, '0.00', NULL),
(13, 42, 'IC', 'INTRAMUSCULAR 0.5CC/AVE MUSLO DERECHO', 1, '0.00', NULL),
(14, 49, 'IB (BIORAL)', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA', 1, '0.00', NULL),
(15, 49, 'SALMONELOSIS', 'INTRAMUSCULAR 0,5CC/AVE MUSLO DERECHO', 1, '0.00', NULL),
(16, 55, 'CORTE DE PICO', 'SI ES NECESARIO REALIZAR CORTE DE PICO ', 1, '0.00', NULL),
(17, 60, 'ND AVINEW', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA ', 1, '0.00', NULL),
(18, 63, 'CRD', 'TYLAN 60 GR VIA ORAL ', 1, '0.00', NULL),
(19, 64, 'CRD', 'TYLAN 60 GR VIA ORAL ', 1, '0.00', NULL),
(20, 66, 'DESPARASITAR ', 'SI CRIA EN PISO, DESPARASITAR CON PIPERASINA 200 GR O LEVAMIVET 70 GR ', 1, '0.00', NULL),
(21, 75, 'TRT CEPA B', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA ', 1, '0.00', NULL),
(22, 80, 'POX + AE', 'PUNCION A LA MEMBRANA DEL ALA ', 1, '0.00', NULL),
(23, 80, 'DESPARASITAR ', 'DESPARASITACION CON NICLOSAMIDA 75% A 100GR O PRASICOANTEL 80 GR UN SOLO DIA ', 1, '0.00', NULL),
(24, 85, 'SALMONELOSIS', 'INTRAMUSCULAR 0,5CC/AVE MUSLO DERECHO ', 1, '0.00', NULL),
(25, 100, 'IB (BIORAL)', 'GOTA AL OJO O NARIZ O VIA SPRAY CON MOCHILA Y AGUA DESTILADA FRIA ', 1, '0.00', NULL),
(26, 100, 'TRT OLEOSA', 'INTRAMUSCULAR PECHO ', 1, '0.00', NULL),
(27, 100, 'DESPARASITAR ', 'SI CRIA EN PISO DESPARASITAR CON PIPERASINA 300GR O LEVAMIVET 70GR', 1, '0.00', NULL),
(28, 119, 'ND IB EDS IC Y/O YLT ', 'INTRAMUSCULAR PECHO', 1, '0.00', NULL),
(29, 119, 'SALMONELOSIS', 'SALMONELOSIS INACTIVIDAD (LAYERMUNE SE) . SUBCUTANEO DETRAS DEL CUELLO 0,25CC ', 1, '0.00', NULL),
(30, 120, 'TRASLADO A PRODUCCION ', 'TRASLADAR A GALPON DE PRODUCCION ', 1, '0.00', NULL),
(31, 130, 'DESPARASITAR ', 'DESPARASITACION CON NICLOSAMIDA 75% 150GR O PRAZICOANTEL 100 GR UN SOLO DIA ', 1, '0.00', NULL),
(32, 140, 'CRD', 'TYLAN 100 GR VIA ORAL ', 1, '0.00', NULL),
(33, 141, 'CRD', 'TYLAN 100 GR VIA ORAL ', 1, '0.00', NULL),
(34, 180, 'ANTIBIOTERAPIA ', 'CON AZOVETRIL 200CC/DIA POR TRES DIAS, LUEGO DAR VITAMINAS POR TRES DIAS ', 1, '0.00', NULL),
(35, 196, 'FIN DE ALIMENTACION J3 ', 'FIN DE ALIMENTACION CON EL ALIMENTO SJ 3B', 1, '0.00', NULL),
(36, 210, 'ND E IB EN FORMA SEPARADA 7 DIAS ', 'SE PUEDE OCUPAR MOCHILA PARA FUMIGAR UTILIZANDO AGUA DESTILADA\r\n 1 A 2 LITROS PARA 1000 A PARTIR DE ESTA FECHA REVACUNAR SOLO IB \r\nCADA 2 A 3 MESES ', 1, '0.00', NULL),
(37, 245, 'TRT CEPA A O B ', 'SE PUEDE OCUPAR MOCHILA PARA FUMIGAR UTILIZANDO AGUA DESTILADA 1 A 2 LITROS PARA 1000 ', 1, '0.00', NULL),
(38, 349, 'FIN DE ALIMENTACION G4', 'FINALIZAR ALIMENTACION DE ALIMENTO G4', 1, '0.00', NULL),
(39, 28, 'FIN DE ALIMENTACION PRE', 'FINALIZAR ALIMENTACION PRE INICIO ', 1, '0.00', NULL),
(40, 70, 'FIN DE ALIMENTACION J1', 'FINALIZAR ALIMENTACION J1', 1, '0.00', NULL),
(41, 119, 'FIN DE ALIMENTACION J2', 'FINALIZAR ALIMENTACION J2', 1, '0.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna_emergente`
--

CREATE TABLE `vacuna_emergente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_caja`
--

CREATE TABLE `venta_caja` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta_caja`
--

INSERT INTO `venta_caja` (`id`, `fecha`, `precio`, `estado`, `deleted_at`) VALUES
(1, '2017-02-08', '9066.24', 0, NULL),
(2, '2017-02-08', '164.00', 0, NULL),
(3, '2017-02-10', '7899.20', 0, NULL),
(4, '2017-02-13', '603.40', 0, NULL),
(5, '2017-02-13', '10734.96', 0, NULL),
(6, '2017-02-15', '6476.40', 0, NULL),
(7, '2017-02-08', '10460.24', 1, NULL),
(8, '2017-02-10', '8924.20', 1, NULL),
(9, '2017-02-13', '12333.96', 1, NULL),
(10, '2017-02-13', '603.40', 1, NULL),
(11, '2017-02-15', '7624.40', 1, NULL),
(12, '2017-02-15', '1867.32', 1, NULL),
(13, '2017-02-17', '9011.96', 1, NULL),
(14, '2017-02-20', '13073.68', 1, NULL),
(15, '2017-02-22', '8981.96', 1, NULL),
(16, '2017-02-24', '8751.52', 1, NULL),
(17, '2017-02-27', '12651.40', 1, NULL),
(18, '2017-03-01', '8466.32', 1, NULL),
(19, '2017-03-03', '9081.56', 1, NULL),
(20, '2017-03-06', '12708.84', 1, NULL),
(21, '2017-03-08', '9323.96', 1, NULL),
(22, '2017-03-10', '8826.32', 1, NULL),
(23, '2017-03-13', '12903.64', 1, NULL),
(24, '2017-03-15', '9273.32', 1, NULL),
(25, '2017-03-17', '8913.68', 1, NULL),
(26, '2017-03-20', '13100.84', 1, NULL),
(27, '2017-03-22', '9540.32', 1, NULL),
(28, '2017-03-24', '9420.32', 1, NULL),
(29, '2017-03-27', '13183.44', 1, NULL),
(30, '2017-03-29', '10197.00', 1, NULL),
(31, '2017-03-31', '9563.72', 1, NULL),
(32, '2017-04-03', '13639.88', 1, NULL),
(33, '2017-04-05', '9930.36', 1, NULL),
(34, '2017-04-07', '9326.72', 1, NULL),
(35, '2017-04-10', '13271.48', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_huevo`
--

CREATE TABLE `venta_huevo` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta_huevo`
--

INSERT INTO `venta_huevo` (`id`, `fecha`, `precio`, `estado`, `deleted_at`) VALUES
(1, '2017-02-08', '50.00', 0, NULL),
(2, '2017-02-09', '556.05', 0, NULL),
(3, '2017-02-16', '613.65', 1, NULL),
(4, '2017-02-20', '631.50', 1, NULL),
(5, '2017-02-23', '510.45', 1, NULL),
(6, '2017-02-23', '21.02', 1, NULL),
(7, '2017-02-27', '717.42', 1, NULL),
(8, '2017-03-02', '608.31', 1, NULL),
(9, '2017-03-06', '7.80', 1, NULL),
(10, '2017-03-06', '803.22', 1, NULL),
(11, '2017-03-10', '612.21', 1, NULL),
(12, '2017-03-13', '846.01', 1, NULL),
(13, '2017-03-16', '740.41', 1, NULL),
(14, '2017-03-20', '1030.53', 1, NULL),
(15, '2017-03-23', '655.82', 1, NULL),
(16, '2017-03-27', '742.32', 1, NULL),
(17, '2017-03-30', '515.31', 1, NULL),
(18, '2017-04-03', '626.41', 1, NULL),
(19, '2017-04-06', '640.51', 1, NULL),
(20, '2017-04-10', '841.32', 1, NULL),
(21, '2017-04-10', '9.00', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_caja` (`id_tipo_caja`);

--
-- Indices de la tabla `caja_deposito`
--
ALTER TABLE `caja_deposito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_caja` (`id_tipo_caja`);

--
-- Indices de la tabla `cantidad_maple`
--
ALTER TABLE `cantidad_maple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_caja` (`id_tipo_caja`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_silo` (`id_silo`);

--
-- Indices de la tabla `consumo`
--
ALTER TABLE `consumo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fase_galpon` (`id_fase_galpon`);

--
-- Indices de la tabla `consumo_emergente`
--
ALTER TABLE `consumo_emergente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_edad` (`id_edad`),
  ADD KEY `id_vacuna` (`id_vacuna`);

--
-- Indices de la tabla `consumo_vacuna`
--
ALTER TABLE `consumo_vacuna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_control_vacuna` (`id_control_vacuna`);

--
-- Indices de la tabla `control_alimento_galpon`
--
ALTER TABLE `control_alimento_galpon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_edad` (`id_edad`),
  ADD KEY `id_control_alimento` (`id_control_alimento`);

--
-- Indices de la tabla `control_vacuna`
--
ALTER TABLE `control_vacuna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_edad` (`id_edad`),
  ADD KEY `id_vacuna` (`id_vacuna`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_caja` (`id_tipo_caja`),
  ADD KEY `id_venta_caja` (`id_venta_caja`);

--
-- Indices de la tabla `detalle_venta_huevo`
--
ALTER TABLE `detalle_venta_huevo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_venta_huevo` (`id_venta_huevo`),
  ADD KEY `id_tipo_huevo` (`id_tipo_huevo`);

--
-- Indices de la tabla `edad`
--
ALTER TABLE `edad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_galpon` (`id_galpon`);

--
-- Indices de la tabla `egreso_varios`
--
ALTER TABLE `egreso_varios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `fases`
--
ALTER TABLE `fases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fases_galpon`
--
ALTER TABLE `fases_galpon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_edad` (`id_edad`),
  ADD KEY `id_fase` (`id_fase`);

--
-- Indices de la tabla `galpon`
--
ALTER TABLE `galpon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_control_alimento`
--
ALTER TABLE `grupo_control_alimento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_edad`
--
ALTER TABLE `grupo_edad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alimento` (`id_alimento`);

--
-- Indices de la tabla `grupo_edad_temp`
--
ALTER TABLE `grupo_edad_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_edad` (`id_edad`),
  ADD KEY `id_temp` (`id_temp`),
  ADD KEY `id_control` (`id_control`);

--
-- Indices de la tabla `grupo_temperatura`
--
ALTER TABLE `grupo_temperatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `huevo`
--
ALTER TABLE `huevo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_huevo` (`id_tipo_huevo`);

--
-- Indices de la tabla `huevo_acumulado`
--
ALTER TABLE `huevo_acumulado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `huevo_deposito`
--
ALTER TABLE `huevo_deposito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_huevo` (`id_tipo_huevo`);

--
-- Indices de la tabla `ingreso_varios`
--
ALTER TABLE `ingreso_varios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `maple`
--
ALTER TABLE `maple`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `postergar_vacuna`
--
ALTER TABLE `postergar_vacuna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_control_vacuna` (`id_control_vacuna`);

--
-- Indices de la tabla `postura_huevo`
--
ALTER TABLE `postura_huevo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fases_galpon` (`id_fases_galpon`);

--
-- Indices de la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alimento` (`id_alimento`);

--
-- Indices de la tabla `rango_temperatura`
--
ALTER TABLE `rango_temperatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `silo`
--
ALTER TABLE `silo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alimento` (`id_alimento`);

--
-- Indices de la tabla `sobrante`
--
ALTER TABLE `sobrante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo` (`id_tipo_caja`);

--
-- Indices de la tabla `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_caja`
--
ALTER TABLE `tipo_caja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_maple` (`id_maple`);

--
-- Indices de la tabla `tipo_huevo`
--
ALTER TABLE `tipo_huevo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_maple` (`id_maple`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vacuna`
--
ALTER TABLE `vacuna`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vacuna_emergente`
--
ALTER TABLE `vacuna_emergente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta_caja`
--
ALTER TABLE `venta_caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta_huevo`
--
ALTER TABLE `venta_huevo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimento`
--
ALTER TABLE `alimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT de la tabla `caja_deposito`
--
ALTER TABLE `caja_deposito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `cantidad_maple`
--
ALTER TABLE `cantidad_maple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `consumo`
--
ALTER TABLE `consumo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `consumo_emergente`
--
ALTER TABLE `consumo_emergente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `consumo_vacuna`
--
ALTER TABLE `consumo_vacuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `control_alimento_galpon`
--
ALTER TABLE `control_alimento_galpon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `control_vacuna`
--
ALTER TABLE `control_vacuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT de la tabla `detalle_venta_huevo`
--
ALTER TABLE `detalle_venta_huevo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `edad`
--
ALTER TABLE `edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `egreso_varios`
--
ALTER TABLE `egreso_varios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `fases`
--
ALTER TABLE `fases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `fases_galpon`
--
ALTER TABLE `fases_galpon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `galpon`
--
ALTER TABLE `galpon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `grupo_control_alimento`
--
ALTER TABLE `grupo_control_alimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `grupo_edad`
--
ALTER TABLE `grupo_edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT de la tabla `grupo_edad_temp`
--
ALTER TABLE `grupo_edad_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
--
-- AUTO_INCREMENT de la tabla `grupo_temperatura`
--
ALTER TABLE `grupo_temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT de la tabla `huevo`
--
ALTER TABLE `huevo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT de la tabla `huevo_acumulado`
--
ALTER TABLE `huevo_acumulado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `huevo_deposito`
--
ALTER TABLE `huevo_deposito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ingreso_varios`
--
ALTER TABLE `ingreso_varios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `maple`
--
ALTER TABLE `maple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `postergar_vacuna`
--
ALTER TABLE `postergar_vacuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `postura_huevo`
--
ALTER TABLE `postura_huevo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;
--
-- AUTO_INCREMENT de la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `rango_temperatura`
--
ALTER TABLE `rango_temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `sobrante`
--
ALTER TABLE `sobrante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT de la tabla `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo_caja`
--
ALTER TABLE `tipo_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipo_huevo`
--
ALTER TABLE `tipo_huevo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `vacuna`
--
ALTER TABLE `vacuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `vacuna_emergente`
--
ALTER TABLE `vacuna_emergente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `venta_caja`
--
ALTER TABLE `venta_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `venta_huevo`
--
ALTER TABLE `venta_huevo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `caja_ibfk_1` FOREIGN KEY (`id_tipo_caja`) REFERENCES `tipo_caja` (`id`);

--
-- Filtros para la tabla `caja_deposito`
--
ALTER TABLE `caja_deposito`
  ADD CONSTRAINT `caja_deposito_ibfk_1` FOREIGN KEY (`id_tipo_caja`) REFERENCES `tipo_caja` (`id`);

--
-- Filtros para la tabla `cantidad_maple`
--
ALTER TABLE `cantidad_maple`
  ADD CONSTRAINT `cantidad_maple_ibfk_1` FOREIGN KEY (`id_tipo_caja`) REFERENCES `tipo_caja` (`id`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_silo`) REFERENCES `silo` (`id`);

--
-- Filtros para la tabla `consumo`
--
ALTER TABLE `consumo`
  ADD CONSTRAINT `consumo_ibfk_1` FOREIGN KEY (`id_fase_galpon`) REFERENCES `fases_galpon` (`id`);

--
-- Filtros para la tabla `consumo_emergente`
--
ALTER TABLE `consumo_emergente`
  ADD CONSTRAINT `consumo_emergente_ibfk_1` FOREIGN KEY (`id_edad`) REFERENCES `edad` (`id`),
  ADD CONSTRAINT `consumo_emergente_ibfk_2` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna_emergente` (`id`);

--
-- Filtros para la tabla `consumo_vacuna`
--
ALTER TABLE `consumo_vacuna`
  ADD CONSTRAINT `consumo_vacuna_ibfk_1` FOREIGN KEY (`id_control_vacuna`) REFERENCES `control_vacuna` (`id`);

--
-- Filtros para la tabla `control_alimento_galpon`
--
ALTER TABLE `control_alimento_galpon`
  ADD CONSTRAINT `control_alimento_galpon_ibfk_1` FOREIGN KEY (`id_edad`) REFERENCES `edad` (`id`),
  ADD CONSTRAINT `control_alimento_galpon_ibfk_2` FOREIGN KEY (`id_control_alimento`) REFERENCES `grupo_control_alimento` (`id`);

--
-- Filtros para la tabla `control_vacuna`
--
ALTER TABLE `control_vacuna`
  ADD CONSTRAINT `control_vacuna_ibfk_1` FOREIGN KEY (`id_edad`) REFERENCES `edad` (`id`),
  ADD CONSTRAINT `control_vacuna_ibfk_2` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna` (`id`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_tipo_caja`) REFERENCES `tipo_caja` (`id`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_venta_caja`) REFERENCES `venta_caja` (`id`);

--
-- Filtros para la tabla `detalle_venta_huevo`
--
ALTER TABLE `detalle_venta_huevo`
  ADD CONSTRAINT `detalle_venta_huevo_ibfk_1` FOREIGN KEY (`id_venta_huevo`) REFERENCES `venta_huevo` (`id`),
  ADD CONSTRAINT `detalle_venta_huevo_ibfk_2` FOREIGN KEY (`id_tipo_huevo`) REFERENCES `tipo_huevo` (`id`);

--
-- Filtros para la tabla `edad`
--
ALTER TABLE `edad`
  ADD CONSTRAINT `edad_ibfk_1` FOREIGN KEY (`id_galpon`) REFERENCES `galpon` (`id`);

--
-- Filtros para la tabla `egreso_varios`
--
ALTER TABLE `egreso_varios`
  ADD CONSTRAINT `egreso_varios_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `fases_galpon`
--
ALTER TABLE `fases_galpon`
  ADD CONSTRAINT `fases_galpon_ibfk_1` FOREIGN KEY (`id_edad`) REFERENCES `edad` (`id`),
  ADD CONSTRAINT `fases_galpon_ibfk_2` FOREIGN KEY (`id_fase`) REFERENCES `fases` (`id`);

--
-- Filtros para la tabla `grupo_edad`
--
ALTER TABLE `grupo_edad`
  ADD CONSTRAINT `grupo_edad_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `alimento` (`id`);

--
-- Filtros para la tabla `grupo_edad_temp`
--
ALTER TABLE `grupo_edad_temp`
  ADD CONSTRAINT `grupo_edad_temp_ibfk_1` FOREIGN KEY (`id_edad`) REFERENCES `grupo_edad` (`id`),
  ADD CONSTRAINT `grupo_edad_temp_ibfk_2` FOREIGN KEY (`id_temp`) REFERENCES `grupo_temperatura` (`id`),
  ADD CONSTRAINT `grupo_edad_temp_ibfk_3` FOREIGN KEY (`id_control`) REFERENCES `grupo_control_alimento` (`id`);

--
-- Filtros para la tabla `huevo`
--
ALTER TABLE `huevo`
  ADD CONSTRAINT `huevo_ibfk_1` FOREIGN KEY (`id_tipo_huevo`) REFERENCES `tipo_huevo` (`id`);

--
-- Filtros para la tabla `huevo_deposito`
--
ALTER TABLE `huevo_deposito`
  ADD CONSTRAINT `huevo_deposito_ibfk_1` FOREIGN KEY (`id_tipo_huevo`) REFERENCES `tipo_huevo` (`id`);

--
-- Filtros para la tabla `ingreso_varios`
--
ALTER TABLE `ingreso_varios`
  ADD CONSTRAINT `ingreso_varios_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `postergar_vacuna`
--
ALTER TABLE `postergar_vacuna`
  ADD CONSTRAINT `postergar_vacuna_ibfk_1` FOREIGN KEY (`id_control_vacuna`) REFERENCES `control_vacuna` (`id`);

--
-- Filtros para la tabla `postura_huevo`
--
ALTER TABLE `postura_huevo`
  ADD CONSTRAINT `postura_huevo_ibfk_1` FOREIGN KEY (`id_fases_galpon`) REFERENCES `fases_galpon` (`id`);

--
-- Filtros para la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  ADD CONSTRAINT `rango_edad_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `alimento` (`id`);

--
-- Filtros para la tabla `silo`
--
ALTER TABLE `silo`
  ADD CONSTRAINT `silo_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `alimento` (`id`);

--
-- Filtros para la tabla `sobrante`
--
ALTER TABLE `sobrante`
  ADD CONSTRAINT `sobrante_ibfk_1` FOREIGN KEY (`id_tipo_caja`) REFERENCES `tipo_caja` (`id`);

--
-- Filtros para la tabla `tipo_caja`
--
ALTER TABLE `tipo_caja`
  ADD CONSTRAINT `tipo_caja_ibfk_1` FOREIGN KEY (`id_maple`) REFERENCES `maple` (`id`);

--
-- Filtros para la tabla `tipo_huevo`
--
ALTER TABLE `tipo_huevo`
  ADD CONSTRAINT `tipo_huevo_ibfk_1` FOREIGN KEY (`id_maple`) REFERENCES `maple` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
