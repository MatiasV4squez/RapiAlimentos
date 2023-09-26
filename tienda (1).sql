-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 21:45:06
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `idBoleta` int(11) NOT NULL,
  `idVenta` int(11) DEFAULT NULL,
  `rutcli` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boleta`
--

INSERT INTO `boleta` (`idBoleta`, `idVenta`, `rutcli`, `idproducto`) VALUES
(1, 1, 111111111, 1),
(2, 2, 222222222, 2),
(3, 3, 333333333, 3),
(4, 4, 444444444, 4),
(5, 5, 555555555, 5),
(6, 6, 666666666, 6),
(7, 7, 777777777, 7),
(8, 8, 888888888, 8),
(9, 9, 999999999, 9),
(10, 10, 101010101, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idcarrito` int(11) NOT NULL,
  `idproducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`idcarrito`, `idproducto`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `IDcategoria` int(11) NOT NULL,
  `nombre` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`IDcategoria`, `nombre`) VALUES
(100, 'Frutas'),
(200, 'Lácteos'),
(300, 'panaderia'),
(400, 'carnes'),
(500, 'verduras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `idCiudad` int(11) NOT NULL,
  `nombreciu` char(20) DEFAULT NULL,
  `idRegion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`idCiudad`, `nombreciu`, `idRegion`) VALUES
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
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idVenta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idcarrito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idVenta`, `fecha`, `idcarrito`) VALUES
(1, '2023-09-07', 1),
(2, '2023-06-08', 2),
(3, '2023-07-12', 3),
(4, '2023-08-23', 4),
(5, '2023-05-18', 5),
(6, '2023-03-22', 6),
(7, '2023-09-16', 7),
(8, '2023-09-06', 8),
(9, '2023-08-23', 9),
(10, '2023-09-06', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `nombre` char(25) DEFAULT NULL,
  `IDcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `precio`, `nombre`, `IDcategoria`) VALUES
(1, 1000, 'Manzanas', 100),
(2, 1500, 'Leche colun', 200),
(3, 2500, 'Pan ideal', 300),
(4, 2000, 'Huevos', 200),
(5, 1600, 'Arroz tucapel', 300),
(6, 3000, 'Pollo', 400),
(7, 5000, 'Papas', 500),
(8, 2699, 'Yogur colun', 200),
(9, 7900, 'Carne de res', 400),
(10, 1299, 'Pan integral ideal', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `idRegion` int(11) NOT NULL,
  `nombreReg` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`idRegion`, `nombreReg`) VALUES
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
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `rutcli` int(11) DEFAULT NULL,
  `nombre` char(20) DEFAULT NULL,
  `apelpatcli` char(20) DEFAULT NULL,
  `apematcli` char(20) DEFAULT NULL,
  `contraseña` char(20) DEFAULT NULL,
  `correocli` char(20) DEFAULT NULL,
  `idciudad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`rutcli`, `nombre`, `apelpatcli`, `apematcli`, `contraseña`, `correocli`, `idciudad`) VALUES
(11111111, 'Juan', 'Pérez', 'González', 'contraseña1', 'juan@example.com', 1),
(22222222, 'María', 'López', 'Fernández', 'contraseña2', 'maria@example.com', 3),
(33333333, 'Pedro', 'Martínez', 'Rodríguez', 'contraseña3', 'pedro@example.com', 14),
(44444444, 'Luisa', 'García', 'Hernández', 'contraseña4', 'luisa@example.com', 34),
(55555555, 'Carlos', 'Sánchez', 'Pérez', 'contraseña5', 'carlos@example.com', 22),
(66666666, 'Ana', 'Díaz', 'Gómez', 'contraseña6', 'ana@example.com', 1),
(77777777, 'Raúl', 'Fernández', 'Molina', 'contraseña7', 'raul@example.com', 5),
(88888888, 'Laura', 'Ramírez', 'Castro', 'contraseña8', 'laura@example.com', 9),
(99999999, 'José', 'Herrera', 'Silva', 'contraseña9', 'jose@example.com', 5),
(10101010, 'Sofía', 'Vargas', 'Ortega', 'contraseña10', 'sofia@example.com', 13);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`idBoleta`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idcarrito`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDcategoria`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idCiudad`),
  ADD KEY `Clave` (`nombreciu`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idVenta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idRegion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `pk` (`rutcli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
