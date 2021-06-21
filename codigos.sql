-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2021 a las 00:00:28
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codigos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo`
--

CREATE TABLE `codigo` (
  `digito` varchar(250) DEFAULT NULL,
  `hora_creacion` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `codigo`
--

INSERT INTO `codigo` (`digito`, `hora_creacion`) VALUES
('9', '2021-06-21 21:16:58'),
('15lk', '2021-06-21 21:26:15'),
('B387', '2021-06-21 21:26:57'),
('nufb', '2021-06-21 21:26:57'),
('HGCh', '2021-06-21 21:26:57'),
('ZK1i', '2021-06-21 21:26:57'),
('boaH', '2021-06-21 21:36:30'),
('WelV', '2021-06-21 21:36:30'),
('DhSR', '2021-06-21 21:36:30'),
('fGGQ', '2021-06-21 21:36:31'),
('7zor', '2021-06-21 21:40:19'),
('RYMu', '2021-06-21 21:40:19'),
('7cWy', '2021-06-21 21:40:19'),
('U5Qb', '2021-06-21 21:40:19'),
('0jmv', '2021-06-21 21:41:55'),
('UBwy', '2021-06-21 21:41:55'),
('b5Mj', '2021-06-21 21:41:55'),
('MJck', '2021-06-21 21:41:55'),
('G5e3', '2021-06-21 21:46:35'),
('ghtO', '2021-06-21 21:46:35'),
('ngXf', '2021-06-21 21:46:35'),
('aeXF', '2021-06-21 21:46:35'),
('ub3v', '2021-06-21 21:57:07'),
('Ourq', '2021-06-21 21:57:07'),
('fwf1', '2021-06-21 21:57:07'),
('Tfwd', '2021-06-21 21:57:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
