-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para ego
CREATE DATABASE IF NOT EXISTS `ego` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ego`;

-- Volcando estructura para tabla ego.auto
CREATE TABLE IF NOT EXISTS `auto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) NOT NULL DEFAULT '',
  `Precio` int(11) DEFAULT NULL,
  `Anio` int(5) DEFAULT NULL,
  `TipoAutoId` int(11) NOT NULL,
  `Titulo` varchar(1000) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Fecha` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ego.auto: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` (`Id`, `Nombre`, `Precio`, `Anio`, `TipoAutoId`, `Titulo`, `Descripcion`, `Fecha`) VALUES
	(1, 'Etios', 815900, 2019, 1, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 03:52:34'),
	(2, 'Yaris', 1038900, 2020, 2, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:39:40'),
	(3, 'Corolla', 1430700, 2018, 3, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:40:22'),
	(4, 'Prius', 2882000, 2019, 4, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:40:43'),
	(5, 'Camry', 3753200, 2018, 1, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:45:14'),
	(6, 'Toyota 86', 3812100, 2019, 2, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:45:54'),
	(7, 'Innova', 2596400, 2020, 3, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:46:29'),
	(8, 'SW4', 3236200, 2019, 4, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:47:28'),
	(9, 'RAV4', 3170200, 2019, 1, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:48:06'),
	(10, 'Land Cruiser Prado ', 815900, 2017, 2, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:48:37'),
	(11, 'Land Cruiser 200', 7873100, 2018, 3, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:49:28'),
	(12, 'Hilux', 1507000, 2020, 3, 'Preparada para cualquier desafío', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.', '2020-05-04 04:49:54');
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;

-- Volcando estructura para tabla ego.imagen_auto
CREATE TABLE IF NOT EXISTS `imagen_auto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AutoId` int(11) NOT NULL,
  `TipoImagen` int(11) NOT NULL,
  `Titulo` varchar(200) DEFAULT NULL,
  `Path` varchar(200) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ego.imagen_auto: ~96 rows (aproximadamente)
/*!40000 ALTER TABLE `imagen_auto` DISABLE KEYS */;
INSERT INTO `imagen_auto` (`Id`, `AutoId`, `TipoImagen`, `Titulo`, `Path`, `Descripcion`) VALUES
	(1, 1, 1, 'prueba', '/img/home/etios.png', NULL),
	(2, 2, 1, 'prueba', '/img/home/yaris.png', NULL),
	(3, 3, 1, 'prueba', '/img/home/corolla.png', NULL),
	(4, 4, 1, 'prueba', '/img/home/prius.png', NULL),
	(5, 5, 1, 'prueba', '/img/home/camry.png', NULL),
	(6, 6, 1, 'prueba', '/img/home/toyota.png', NULL),
	(7, 7, 1, 'prueba', '/img/home/innova.png', NULL),
	(8, 8, 1, 'prueba', '/img/home/sw-4.png', NULL),
	(9, 9, 1, 'prueba', '/img/home/rav-4.png', NULL),
	(10, 10, 1, 'prueba', '/img/home/prado.png', NULL),
	(11, 11, 1, 'prueba', '/img/home/cruiser.png', NULL),
	(12, 12, 1, 'prueba', '/img/home/hilux.png', NULL),
	(14, 1, 2, 'Preparada para cualquier desafío', '/img/ficha/x2/etios.png', NULL),
	(15, 1, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(16, 1, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(18, 1, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(19, 1, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(20, 1, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(21, 1, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(22, 2, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(23, 2, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(25, 2, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(26, 2, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(27, 3, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(28, 3, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(29, 3, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(30, 3, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(31, 4, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(32, 4, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(33, 4, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(34, 4, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(35, 5, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(36, 5, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(37, 5, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(38, 5, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(39, 6, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(40, 6, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(41, 6, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(42, 6, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(43, 7, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(44, 7, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(45, 7, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(46, 7, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(47, 8, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(48, 8, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(49, 8, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(50, 8, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(51, 9, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(52, 9, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(53, 9, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(54, 9, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(55, 10, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(56, 10, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(57, 10, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(58, 10, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(59, 11, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(60, 11, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(61, 11, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(62, 11, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(63, 12, 3, 'Nuevos motores Toyota', '/img/ficha/x3/min_1.png', 'Dos alternativas diesel con turbo de geometría variable, 1GD (2.8 L) y 2GD (2.4 L).'),
	(64, 12, 3, 'Suspensión mejorada', '/img/ficha/x3/min_2.png', 'Mayor confort de marcha, estabilidad y capacidad Off Road.'),
	(65, 12, 3, 'Transmisión automática', '/img/ficha/x3/min_3.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(66, 12, 3, 'Transmisión manual', '/img/ficha/x3/min_4.png', 'Posibilidad de elección de caja automática de  manejo.'),
	(67, 2, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(68, 2, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(69, 3, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(70, 3, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(71, 4, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(72, 4, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(73, 5, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(74, 5, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(75, 6, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(76, 6, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(77, 7, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(78, 7, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(79, 8, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(80, 8, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(81, 9, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(82, 9, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(83, 10, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(84, 10, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(85, 11, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(86, 11, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(87, 12, 4, 'Título de 20 px', '/img/ficha/x4/cada_1.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(88, 12, 4, 'Título de 20 px', '/img/ficha/x4/cada_2.png', 'Texto lorem ipsum dolor sit amet orem ipsum dolor sit amet. lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum dolor sit amet orem ipsum dolor sit amet.'),
	(89, 2, 2, 'Título de 20 px', '/img/ficha/x2/yaris.png', ''),
	(90, 3, 2, 'Título de 20 px', '/img/ficha/x2/corolla.png', ''),
	(91, 4, 2, 'Título de 20 px', '/img/ficha/x2/prius.png', ''),
	(92, 5, 2, 'Título de 20 px', '/img/ficha/x2/camry.png', ''),
	(93, 6, 2, 'Título de 20 px', '/img/ficha/x2/toyota.png', ''),
	(94, 7, 2, 'Título de 20 px', '/img/ficha/x2/innova.png', ''),
	(95, 8, 2, 'Título de 20 px', '/img/ficha/x2/sw-4.png', ''),
	(96, 9, 2, 'Título de 20 px', '/img/ficha/x2/rav-4.png', ''),
	(97, 10, 2, 'Título de 20 px', '/img/ficha/x2/prado.png', ''),
	(98, 11, 2, 'Título de 20 px', '/img/ficha/x2/cruiser.png', ''),
	(99, 12, 2, 'Título de 20 px', '/img/ficha/x2/hilux.png', '');
/*!40000 ALTER TABLE `imagen_auto` ENABLE KEYS */;

-- Volcando estructura para tabla ego.tipo_auto
CREATE TABLE IF NOT EXISTS `tipo_auto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ego.tipo_auto: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_auto` DISABLE KEYS */;
INSERT INTO `tipo_auto` (`Id`, `Nombre`) VALUES
	(1, 'Autos'),
	(2, 'Pickups'),
	(3, 'Comerciales'),
	(4, 'SUV');
/*!40000 ALTER TABLE `tipo_auto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
