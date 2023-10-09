-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2023 a las 22:36:27
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
-- Base de datos: `productosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(10) NOT NULL,
  `CODIGO` text DEFAULT NULL,
  `SECCION` text DEFAULT NULL,
  `NOMBRE` text DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `IMPORTADO` text DEFAULT NULL,
  `PAISORIGEN` text DEFAULT NULL,
  `FOTO` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `CODIGO`, `SECCION`, `NOMBRE`, `PRECIO`, `FECHA`, `IMPORTADO`, `PAISORIGEN`, `FOTO`) VALUES
(1, 'AR01', 'FERRETERIA', 'DESTORNILLADOR', 6, '2000-10-22 00:00:00', 'VERDADERO', 'ESPAÑA', NULL),
(2, 'AR02', 'CONFECCION', 'TRAJE CABALLERO', 284, '2002-03-11 00:00:00', 'VERDADERO', 'ITALIA', NULL),
(3, 'AR03', 'JUGUETERIA', 'COCHE TELEDIRIGIDO', 159, '2002-05-26 00:00:00', 'VERDADERO', 'MARRUECOS', NULL),
(4, 'AR04', 'DEPORTES', 'RAQUETA TENIS', 93, '2000-03-20 00:00:00', 'VERDADERO', 'USA', NULL),
(5, 'AR06', 'DEPORTES', 'MANCUERNAS', 60, '2000-09-13 00:00:00', 'VERDADERO', 'USA', NULL),
(6, 'AR07', 'CONFECCION', 'SERRUCHO', 30, '2001-03-23 00:00:00', 'VERDADERO', 'FRANCIA', NULL),
(7, 'AR08', 'JUGUETERIA', 'CORREPASILLOS', 103, '2000-04-11 00:00:00', 'VERDADERO', 'JAP?N', NULL),
(8, 'AR09', 'CONFECCION', 'PANTALON SE?ORA', 174, '2000-01-10 00:00:00', 'VERDADERO', 'MARRUECOS', NULL),
(9, 'AR10', 'JUGUETERIA', 'CONSOLA VIDEO', 442, '2002-09-24 00:00:00', 'VERDADERO', 'USA', NULL),
(10, 'AR11', 'CERAMICA', 'TUBOS', 168, '2000-02-04 00:00:00', 'VERDADERO', 'CHINA', NULL),
(11, 'AR12', 'FERRETERIA', 'LLAVE INGLESA', 24, '2001-05-23 00:00:00', 'VERDADERO', 'USA', NULL),
(12, 'AR13', 'CONFECCION', 'CAMISA CABALLERO', 67, '2002-08-11 00:00:00', 'FALSO', 'ESPA?A', NULL),
(13, 'AR14', 'JUGUETERIA', 'TREN ELECTRICO', 1.505, '2001-07-03 00:00:00', 'VERDADERO', 'JAP?N', NULL),
(14, 'AR15', 'CERAMICA', 'PLATO DECORATIVO', 54, '2000-06-07 00:00:00', 'VERDADERO', 'CHINA', NULL),
(15, 'AR16', 'FERRETERIA', 'ALICATES', 6, '2000-04-17 00:00:00', 'VERDADERO', 'ITALIA', NULL),
(16, 'AR17', 'JUGUETERIA', 'MU?ECA ANDADORA', 105, '2001-01-04 00:00:00', 'FALSO', 'ESPA?A', NULL),
(17, 'AR18', 'DEPORTES', 'PISTOLA OLIMPICA', 46, '2001-02-02 00:00:00', 'VERDADERO', 'SUECIA', NULL),
(18, 'AR19', 'CONFECCION', 'BLUSA SRA.', 101, '2000-03-18 00:00:00', 'VERDADERO', 'CHINA', NULL),
(19, 'AR20', 'CERAMICA', 'JUEGO DE TE', 43, '2001-01-15 00:00:00', 'VERDADERO', 'CHINA', NULL),
(20, 'AR21', 'CERAMICA', 'CENICERO', 19, '2001-07-02 00:00:00', 'VERDADERO', 'JAP?N', NULL),
(21, 'AR22', 'FERRETERIA', 'MARTILLO', 11, '2001-09-04 00:00:00', 'FALSO', 'ESPA?A', NULL),
(22, 'AR23', 'CONFECCION', 'CAZADORA PIEL', 522, '2001-07-10 00:00:00', 'VERDADERO', 'ITALIA', NULL),
(23, 'AR24', 'DEPORTES', 'BALON RUGBY', 111, '2000-11-11 00:00:00', 'VERDADERO', 'USA', NULL),
(24, 'AR25', 'DEPORTES', 'BALON BALONCESTO', 75, '2001-06-25 00:00:00', 'VERDADERO', 'JAP?N', NULL),
(25, 'AR26', 'JUGUETERIA', 'FUERTE DE SOLDADOS', 143, '2000-11-25 00:00:00', 'VERDADERO', 'JAP?N', NULL),
(26, 'AR27', 'CONFECCION', 'ABRIGO CABALLERO', 500, '2002-04-05 00:00:00', 'VERDADERO', 'ITALIA', NULL),
(27, 'AR28', 'DEPORTES', 'BALON FUTBOL', 43, '2002-07-04 00:00:00', 'FALSO', 'ESPA?A', NULL),
(28, 'AR29', 'CONFECCION', 'ABRIGO SRA', 360, '2001-05-03 00:00:00', 'VERDADERO', 'MARRUECOS', NULL),
(29, 'AR30', 'FERRETERIA', 'DESTORNILLADOR', 9, '2002-02-20 00:00:00', 'VERDADERO', 'FRANCIA', NULL),
(30, 'AR31', 'JUGUETERIA', 'PISTOLA CON SONIDOS', 57, '2001-04-15 00:00:00', 'FALSO', 'ESPA?A', NULL),
(31, 'AR32', 'DEPORTES', 'CRONOMETRO', 439, '2002-01-03 00:00:00', 'VERDADERO', 'USA', NULL),
(32, 'AR33', 'CERAMICA', 'MACETA', 29, '2000-02-23 00:00:00', 'FALSO', 'ESPA?A', NULL),
(33, 'AR34', 'OFICINA', 'PIE DE LAMPARA', 39, '2001-05-27 00:00:00', 'VERDADERO', 'TURQU?A', NULL),
(34, 'AR35', 'FERRETERIA', 'LIMA GRANDE', 22, '2002-08-10 00:00:00', 'FALSO', 'ESPA?A', NULL),
(35, 'AR36', 'FERRETERIA', 'JUEGO DE BROCAS', 15, '2002-07-04 00:00:00', 'VERDADERO', 'TAIW?N', NULL),
(36, 'AR37', 'CONFECCION', 'CINTURON DE PIEL', 4, '2002-05-12 00:00:00', 'FALSO', 'ESPA?A', NULL),
(37, 'AR38', 'DEPORTES', 'CA?A DE PESCA', 270, '2000-02-14 00:00:00', 'VERDADERO', 'USA', NULL),
(38, 'AR39', 'CERAMICA', 'JARRA CHINA', 127, '2002-09-02 00:00:00', 'VERDADERO', 'CHINA', NULL),
(39, 'AR40', 'DEPORTES', 'BOTA ALPINISMO', 144, '2002-05-05 00:00:00', 'FALSO', 'ESPA?A', NULL),
(40, 'AR41', 'DEPORTES', 'PALAS DE PING PONG', 21, '2002-02-02 00:00:00', 'FALSO', 'ESPA?A', NULL),
(41, 'ar88', 'OFICINA', 'SILLA', 235, '2023-02-02 00:00:00', 'FALSO', 'ESPA?A', NULL),
(42, '', '', '', 0, '0000-00-00 00:00:00', '', '', ''),
(43, '', '', '', 0, '0000-00-00 00:00:00', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
