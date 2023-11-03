-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2023 a las 00:22:24
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rapia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `ID_bol` int(11) NOT NULL,
  `ID_ven` int(11) DEFAULT NULL,
  `ID_Ve` int(11) DEFAULT NULL,
  `ID_CLI` int(11) DEFAULT NULL,
  `ID_tip` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ID_car` int(11) NOT NULL,
  `ID_pro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID_ciu` int(3) NOT NULL,
  `Nombre_ciu` varchar(255) DEFAULT NULL,
  `ID_reg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ID_ciu`, `Nombre_ciu`, `ID_reg`) VALUES
(1, 'Iquique', 1),
(2, 'Colchane', 1),
(3, 'Alto Hospicio', 1),
(4, 'Antofagasta', 2),
(5, 'Calama', 2),
(6, 'Tocopilla', 2),
(7, 'Copiapo', 3),
(8, 'Vallenar', 3),
(9, 'Coquimbo', 4),
(10, 'La Serena', 4),
(11, 'Ovalle', 4),
(12, 'Valparaiso', 5),
(13, 'Viña del Mar', 5),
(14, 'San Felipe', 5),
(15, 'Rancagua', 6),
(16, 'Chimbarongo', 6),
(17, 'Talca', 7),
(18, 'Curico', 7),
(19, 'Linares', 7),
(20, 'Concepcion', 8),
(21, 'Los Angeles', 8),
(22, 'Lebu', 8),
(23, 'Temuco', 9),
(24, 'Villarrica', 9),
(25, 'Pucon', 9),
(26, 'Osorno', 10),
(27, 'Puerto Montt', 10),
(28, 'Puerto Varas', 10),
(29, 'Coyhaique', 11),
(30, 'Cochrane', 11),
(31, 'Punta Arenas', 12),
(32, 'Torres del Paine', 12),
(33, 'Santiago', 13),
(34, 'Puente Alto', 13),
(35, 'Maipu', 13),
(36, 'Las Condes', 13),
(37, 'Providencia', 13),
(38, 'Valdivia', 14),
(39, 'La Union', 14),
(40, 'Panguipulli', 14),
(41, 'Arica', 15),
(42, 'Putre', 15),
(43, 'Chillan', 16),
(44, 'Quillon', 16),
(45, 'La Ligua', 5),
(46, 'San Antonio', 5),
(47, 'San Fernando', 6),
(48, 'Santa Cruz', 6),
(49, 'Talcahuano', 8),
(50, 'San Pedro de la Paz', 8),
(51, 'Angol', 9),
(52, 'Victoria', 9),
(53, 'Frutillar', 10),
(54, 'Castro', 10),
(55, 'Coyhaique', 11),
(56, 'Chaiten', 11),
(57, 'Ñuñoa', 13),
(58, 'Porvenir', 12),
(59, 'San Clemente', 6),
(60, 'Santa Cruz', 6),
(61, 'Quellon', 10),
(62, 'Dalcahue', 10),
(63, 'Cochamo', 10),
(64, 'Melipilla', 13),
(65, 'Lampa', 13),
(66, 'Los Andes', 5),
(67, 'Limache', 5),
(68, 'Graneros', 6),
(69, 'Palmilla', 6),
(70, 'Macul', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLI` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `ID_ciu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLI`, `Nombre`, `Apellido`, `Usuario`, `Direccion`, `passwd`, `ID_ciu`) VALUES
(2, '$Nombre', '$Apellido', '$Usuario', '$Direccion', '2', 1),
(3, 'Matias', 'Vasquez', 'mvasquez', 'ANTIFIL', '123', 1),
(4, 'rodrigo', 'hernandez', 'rh12', 'micasa12', '12', 13),
(5, 'deimian', 'quezada', 'deim', 'a', '123', 1),
(6, 'enzo', 'mancilla', 'menz', '123', '123', 1),
(7, 'juan', 'Rosales', 'jrosales', 'tu culo', '123', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Pro` int(11) NOT NULL,
  `NombrePro` varchar(255) DEFAULT NULL,
  `Categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `ID_reg` int(3) NOT NULL,
  `Nombre_Reg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`ID_reg`, `Nombre_Reg`) VALUES
(1, 'Tarapaca'),
(2, 'Antofagasta'),
(3, 'Atacama'),
(4, 'Coquimbo'),
(5, 'Valparaiso'),
(6, 'Bernardo OHiggins'),
(7, 'Maule'),
(8, 'BioBio'),
(9, 'Araucania'),
(10, 'Los Lagos'),
(11, 'Aysen'),
(12, 'Magallanes'),
(13, 'Metropolitana'),
(14, 'Los Rios'),
(15, 'Arica y Parinacota'),
(16, 'Nuble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_pago`
--

CREATE TABLE `tipo_de_pago` (
  `ID_tip` int(11) NOT NULL,
  `Tip_pag_nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `ID_ven` int(11) NOT NULL,
  `Nombre_ven` varchar(255) DEFAULT NULL,
  `Apellido_ven` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `ID_Ve` int(11) NOT NULL,
  `ID_car` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`ID_bol`),
  ADD KEY `ID_ven` (`ID_ven`),
  ADD KEY `ID_tip` (`ID_tip`),
  ADD KEY `ID_CLI` (`ID_CLI`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`ID_car`),
  ADD KEY `ID_pro` (`ID_pro`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ID_ciu`),
  ADD KEY `ID_reg` (`ID_reg`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLI`),
  ADD KEY `ID_ciu` (`ID_ciu`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Pro`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID_reg`);

--
-- Indices de la tabla `tipo_de_pago`
--
ALTER TABLE `tipo_de_pago`
  ADD PRIMARY KEY (`ID_tip`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`ID_ven`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_Ve`),
  ADD KEY `ID_car` (`ID_car`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boleta`
--
ALTER TABLE `boleta`
  MODIFY `ID_bol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `ID_car` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Pro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_pago`
--
ALTER TABLE `tipo_de_pago`
  MODIFY `ID_tip` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `ID_ven` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `ID_Ve` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD CONSTRAINT `boleta_ibfk_1` FOREIGN KEY (`ID_ven`) REFERENCES `vendedor` (`ID_ven`),
  ADD CONSTRAINT `boleta_ibfk_2` FOREIGN KEY (`ID_tip`) REFERENCES `tipo_de_pago` (`ID_tip`),
  ADD CONSTRAINT `boleta_ibfk_3` FOREIGN KEY (`ID_CLI`) REFERENCES `cliente` (`ID_CLI`);

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`ID_pro`) REFERENCES `productos` (`ID_Pro`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`ID_reg`) REFERENCES `region` (`ID_reg`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_ciu`) REFERENCES `ciudad` (`ID_ciu`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ID_car`) REFERENCES `carrito` (`ID_car`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
