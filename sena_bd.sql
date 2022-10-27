-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2022 a las 21:50:31
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sena_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendices`
--

CREATE TABLE `aprendices` (
  `Apre_id` int(10) NOT NULL,
  `Apre_Tipoid` varchar(3) NOT NULL,
  `Apre_Numid` varchar(20) NOT NULL,
  `Apre_Nombres` char(70) NOT NULL,
  `Apre_Apellidos` char(70) NOT NULL,
  `Apre_Direccion` char(80) NOT NULL,
  `Apre_Telefono` char(20) NOT NULL,
  `Apre_Ficha` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `ficha_numero` int(10) NOT NULL,
  `ficha_progra` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `progra_id` int(10) NOT NULL,
  `progra_nombre` varchar(20) NOT NULL,
  `progra_tipo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposprograma`
--

CREATE TABLE `tiposprograma` (
  `tiposp_id` int(10) NOT NULL,
  `tiposp_tipo` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usua_id` int(10) NOT NULL,
  `usua_nomuser` varchar(50) NOT NULL,
  `usua_contra` varchar(20) NOT NULL,
  `usua_tipo` char(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usua_id`, `usua_nomuser`, `usua_contra`, `usua_tipo`) VALUES
(1065605431, 'DARIO', '1065', 'ADMIN'),
(1030633658, 'MARIO', '1030', 'ADMIN');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD PRIMARY KEY (`Apre_id`),
  ADD KEY `Apre_Ficha` (`Apre_Ficha`);

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`ficha_numero`),
  ADD KEY `ficha_progra` (`ficha_progra`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`proga_id`),
  ADD KEY `progra_nombre` (`progra_nombre`);

--
-- Indices de la tabla `tiposprograma`
--
ALTER TABLE `tiposprograma`
  ADD PRIMARY KEY (`tiposp_id`),
  ADD KEY `tiposp_tipo` (`tiposp_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
