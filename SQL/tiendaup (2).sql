-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 02:35:23
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
-- Base de datos: `tiendaup`
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
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_cat` int(11) NOT NULL,
  `NombreCat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_cat`, `NombreCat`) VALUES
(1, 'Frutas y Verduras'),
(2, 'Carnes'),
(3, 'Lácteos'),
(4, 'Panadería');

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
  `correo` varchar(355) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `ID_ciu` int(11) DEFAULT NULL,
  `contrasena` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Pro` int(11) NOT NULL,
  `NombrePro` varchar(255) DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Precio` int(11) NOT NULL,
  `ID_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Pro`, `NombrePro`, `Img`, `Precio`, `ID_cat`) VALUES
(1, 'Manzana', 'https://4.bp.blogspot.com/-a3eVMg8-v1M/VRQKYxYRgXI/AAAAAAAAACE/2hqbqiRZ1ro/s1600/9dA3Z9lr-photo-pomme-2.png', 1200, 1),
(2, 'Vacuno', 'https://dialprix.es/blog/wp-content/uploads/carne-de-vacuno.jpg', 8500, 2),
(3, 'Queso', 'https://laboratoriosvital.com/wp-content/uploads/beneficios-de-comer-queso-en-ninos-1.jpg', 5000, 3),
(4, 'Pan', 'http://www.perderpeso.es/wp-content/uploads/2015/04/pan.jpg', 1000, 4);

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
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_cat`);

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
  ADD PRIMARY KEY (`ID_Pro`),
  ADD KEY `ID_cat` (`ID_cat`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_cat`) REFERENCES `categorias` (`ID_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
