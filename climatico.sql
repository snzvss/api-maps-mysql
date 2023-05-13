-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2023 a las 09:54:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `climatico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factor`
--

CREATE TABLE `factor` (
  `id` int(11) NOT NULL,
  `descr` varchar(40) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factor`
--

INSERT INTO `factor` (`id`, `descr`, `activo`) VALUES
(1, 'Factor 1', 1),
(2, 'Factor 2', 1),
(3, 'Factor 3', 1),
(4, 'Factor 4', 1),
(5, 'Factor 5', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicion`
--

CREATE TABLE `medicion` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `sector` int(11) DEFAULT NULL,
  `factor` int(11) DEFAULT NULL,
  `dato` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicion`
--

INSERT INTO `medicion` (`id`, `fecha`, `sector`, `factor`, `dato`) VALUES
(1, '2023-05-01 05:00:00', 1, 1, 'Dato 1'),
(2, '2023-05-02 05:00:00', 2, 2, 'Dato 2'),
(3, '2023-05-03 05:00:00', 3, 3, 'Dato 3'),
(4, '2023-05-04 05:00:00', 4, 4, 'Dato 4'),
(5, '2023-05-05 05:00:00', 5, 5, 'Dato 5'),
(6, '2023-05-06 05:00:00', 6, 1, 'Dato 6'),
(7, '2023-05-07 05:00:00', 7, 2, 'Dato 7'),
(8, '2023-05-08 05:00:00', 8, 3, 'Dato 8'),
(9, '2023-05-09 05:00:00', 9, 4, 'Dato 9'),
(10, '2023-05-10 05:00:00', 10, 5, 'Dato 10'),
(11, '2023-05-11 05:00:00', 11, 1, 'Dato 11'),
(12, '2023-05-12 05:00:00', 12, 2, 'Dato 12'),
(13, '2023-05-13 05:00:00', 13, 3, 'Dato 13'),
(14, '2023-05-14 05:00:00', 14, 4, 'Dato 14'),
(15, '2023-05-15 05:00:00', 15, 5, 'Dato 15'),
(16, '2023-05-16 05:00:00', 16, 1, 'Dato 16'),
(17, '2023-05-17 05:00:00', 17, 2, 'Dato 17'),
(18, '2023-05-18 05:00:00', 18, 3, 'Dato 18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `sitio` varchar(30) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lon` float DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`id`, `sitio`, `lat`, `lon`, `activo`) VALUES
(1, 'Barranquilla', 10.9685, -74.7813, 1),
(2, 'Soledad', 10.9184, -74.7661, 1),
(3, 'Malambo', 10.8585, -74.7738, 1),
(4, 'Sabanalarga', 10.6364, -74.9179, 1),
(5, 'Baranoa', 10.7938, -74.9182, 1),
(6, 'Puerto Colombia', 10.9937, -74.9548, 1),
(7, 'Galapa', 10.9088, -74.8473, 1),
(8, 'Santo Tomás', 10.7533, -74.7581, 1),
(9, 'Luruaco', 10.5906, -75.1307, 1),
(10, 'Polonuevo', 10.8027, -74.9245, 1),
(11, 'Candelaria', 10.4997, -74.8816, 1),
(12, 'Suan', 10.3376, -74.9082, 1),
(13, 'Campo de la Cruz', 10.3261, -74.8819, 1),
(14, 'Piojó', 10.8302, -75.0626, 1),
(15, 'Repelón', 10.5116, -75.0246, 1),
(16, 'Palmar de Varela', 10.7324, -74.7541, 1),
(17, 'Sabanagrande', 10.7558, -74.7468, 1),
(18, 'Usiacurí', 10.7312, -74.8902, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descrip` varchar(20) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nick` varchar(10) NOT NULL,
  `clave` varchar(32) DEFAULT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `correo` varchar(32) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factor`
--
ALTER TABLE `factor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicion`
--
ALTER TABLE `medicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nick`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factor`
--
ALTER TABLE `factor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `medicion`
--
ALTER TABLE `medicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
