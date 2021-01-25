-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.40-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for safo
CREATE DATABASE IF NOT EXISTS `safo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `safo`;

-- Dumping structure for table safo.alergias
CREATE TABLE IF NOT EXISTS `alergias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(50) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.alergias: ~44 rows (approximately)
/*!40000 ALTER TABLE `alergias` DISABLE KEYS */;
INSERT INTO `alergias` (`id`, `nombre`, `descripcion`) VALUES
	(1, 'ullamcorper', 'diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.'),
	(2, 'pretium neque. Morbi', 'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu'),
	(3, 'augue malesuada', 'malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis'),
	(4, 'eu nibh vulputate', 'elit. Curabitur sed tortor. Integer'),
	(5, 'pretium et,', 'Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque'),
	(6, 'sagittis', 'neque tellus, imperdiet'),
	(7, 'nibh. Donec', 'fermentum metus. Aenean sed pede nec ante blandit viverra.'),
	(8, 'turpis. In', 'ullamcorper magna. Sed eu eros. Nam consequat dolor'),
	(9, 'diam. Sed', 'libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus'),
	(10, 'lorem,', 'dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class'),
	(11, 'molestie in,', 'id, blandit at, nisi. Cum sociis'),
	(12, 'dolor. Nulla', 'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id'),
	(13, 'pede, ultrices a,', 'eu dui. Cum sociis natoque penatibus et'),
	(14, 'cursus. Integer', 'Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida'),
	(15, 'mollis.', 'eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,'),
	(16, 'Integer eu', 'feugiat'),
	(17, 'Curabitur sed tortor.', 'at'),
	(18, 'Mauris eu turpis.', 'Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum'),
	(19, 'dapibus gravida. Aliquam', 'a mi fringilla mi lacinia'),
	(20, 'non,', 'Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor'),
	(21, 'dolor dolor,', 'velit. Sed malesuada augue ut lacus. Nulla tincidunt,'),
	(22, 'ad', 'nisi dictum augue'),
	(23, 'Mauris', 'Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante.'),
	(24, 'est,', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet'),
	(25, 'pede. Cum', 'mi pede,'),
	(26, 'lorem eu metus.', 'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam'),
	(27, 'fermentum', 'faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce'),
	(28, 'Maecenas', 'egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est,'),
	(29, 'at,', 'in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu'),
	(30, 'Quisque', 'lorem tristique aliquet. Phasellus'),
	(31, 'dapibus quam', 'luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor'),
	(32, 'Pellentesque', 'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie'),
	(33, 'ut mi. Duis', 'mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi'),
	(34, 'aliquet', 'elementum sem, vitae aliquam eros'),
	(35, 'Etiam bibendum', 'in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque.'),
	(36, 'sem', 'interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet'),
	(37, 'sapien.', 'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis.'),
	(38, 'lobortis ultrices. Vivamus', 'Nunc quis arcu vel quam dignissim pharetra.'),
	(39, 'magna. Lorem', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien'),
	(40, 'elit, pellentesque a,', 'Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,'),
	(41, 'facilisi. Sed neque.', 'lectus convallis est, vitae'),
	(42, 'a, malesuada id,', 'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas'),
	(43, 'ante lectus convallis', 'non enim commodo hendrerit. Donec'),
	(44, 'et', 'augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora');
/*!40000 ALTER TABLE `alergias` ENABLE KEYS */;

-- Dumping structure for view safo.alergias_pacientes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `alergias_pacientes` (
	`id` INT(11) NOT NULL,
	`nombre` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table safo.analisis
CREATE TABLE IF NOT EXISTS `analisis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_analisis` text,
  `muestras_requeridas` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.analisis: ~35 rows (approximately)
/*!40000 ALTER TABLE `analisis` DISABLE KEYS */;
INSERT INTO `analisis` (`id`, `tipo_analisis`, `muestras_requeridas`) VALUES
	(1, 'neque et nunc. Quisque ornare', 'enim. Mauris quis'),
	(2, 'ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium'),
	(3, 'convallis est, vitae sodales nisi magna', 'et malesuada'),
	(4, 'mi felis,', 'at, velit. Pellentesque ultricies dignissim lacus. Aliquam'),
	(5, 'dolor.', 'risus quis diam luctus lobortis. Class aptent taciti'),
	(6, 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', 'lobortis augue'),
	(7, 'quam, elementum', 'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.'),
	(8, 'sem. Nulla interdum. Curabitur dictum. Phasellus in', 'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus'),
	(9, 'tincidunt vehicula risus. Nulla eget metus eu erat', 'risus,'),
	(10, 'Sed nunc est, mollis non, cursus non,', 'sit amet massa. Quisque porttitor'),
	(11, 'diam. Pellentesque habitant morbi tristique senectus et netus et', 'nisi'),
	(12, 'viverra.', 'eu'),
	(13, 'eget', 'Donec fringilla. Donec'),
	(14, 'massa rutrum magna. Cras', 'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi,'),
	(15, 'sagittis augue, eu tempor erat neque non', 'magnis dis parturient montes, nascetur ridiculus mus.'),
	(16, 'eu, eleifend nec, malesuada ut,', 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi'),
	(17, 'nec enim. Nunc ut erat. Sed nunc est, mollis', 'cursus. Nunc mauris'),
	(18, 'Vivamus nisi. Mauris nulla.', 'et'),
	(19, 'Praesent luctus. Curabitur', 'lobortis tellus justo sit amet nulla. Donec'),
	(20, 'est. Nunc laoreet lectus quis massa.', 'pellentesque, tellus sem mollis dui, in sodales elit'),
	(21, 'Nam nulla magna, malesuada vel, convallis', 'felis. Nulla tempor augue ac ipsum. Phasellus vitae'),
	(22, 'amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum', 'Morbi sit amet massa. Quisque porttitor eros'),
	(23, 'dictum placerat,', 'tellus faucibus leo, in lobortis tellus'),
	(24, 'Etiam vestibulum massa', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit'),
	(25, 'magna et ipsum cursus vestibulum. Mauris', 'feugiat. Sed nec'),
	(26, 'orci. Ut', 'ac metus vitae velit egestas lacinia. Sed'),
	(27, 'euismod mauris eu elit. Nulla facilisi. Sed neque.', 'egestas. Fusce aliquet magna a neque. Nullam'),
	(28, 'Maecenas libero est, congue a, aliquet vel, vulputate eu,', 'ad litora'),
	(29, 'Integer in magna. Phasellus dolor elit, pellentesque', 'Aliquam ornare,'),
	(30, 'sem, consequat', 'interdum enim non nisi. Aenean'),
	(31, 'sed dui.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur'),
	(32, 'adipiscing elit. Etiam laoreet, libero et', 'feugiat. Lorem'),
	(33, 'dictum placerat, augue. Sed molestie. Sed', 'a tortor. Nunc commodo auctor velit. Aliquam nisl.'),
	(34, 'dictum ultricies ligula. Nullam', 'Integer urna. Vivamus molestie'),
	(35, 'vitae nibh.', 'lorem lorem, luctus ut, pellentesque eget, dictum placerat,');
/*!40000 ALTER TABLE `analisis` ENABLE KEYS */;

-- Dumping structure for table safo.caja
CREATE TABLE IF NOT EXISTS `caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `corte` date NOT NULL,
  `egreso` double NOT NULL,
  `ingreso` double NOT NULL,
  `id_descuento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_descuento` (`id_descuento`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `caja_ibfk_1` FOREIGN KEY (`id_descuento`) REFERENCES `descuentos` (`id`),
  CONSTRAINT `caja_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.caja: ~100 rows (approximately)
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` (`id`, `id_empleado`, `corte`, `egreso`, `ingreso`, `id_descuento`) VALUES
	(1, 3, '2007-09-20', 127, 481, NULL),
	(2, 2, '0000-00-00', 199, 380, NULL),
	(3, 9, '2004-12-21', 220, 379, NULL),
	(4, 6, '2009-08-21', 232, 341, NULL),
	(5, 8, '0000-00-00', 197, 493, NULL),
	(6, 3, '0000-00-00', 61, 423, NULL),
	(7, 4, '0000-00-00', 96, 339, NULL),
	(8, 7, '0000-00-00', 75, 496, NULL),
	(9, 7, '2003-07-20', 278, 306, NULL),
	(10, 8, '0000-00-00', 166, 387, NULL),
	(11, 10, '0000-00-00', 11, 374, NULL),
	(12, 6, '2009-06-21', 65, 433, NULL),
	(13, 2, '0000-00-00', 295, 482, NULL),
	(14, 10, '0000-00-00', 283, 315, NULL),
	(15, 4, '0000-00-00', 291, 347, NULL),
	(16, 10, '0000-00-00', 54, 377, NULL),
	(17, 3, '2009-09-21', 93, 316, NULL),
	(18, 7, '0000-00-00', 290, 494, NULL),
	(19, 2, '2004-06-20', 22, 326, NULL),
	(20, 7, '2002-03-20', 285, 419, NULL),
	(21, 6, '0000-00-00', 81, 391, NULL),
	(22, 10, '0000-00-00', 205, 340, NULL),
	(23, 10, '0000-00-00', 180, 429, NULL),
	(24, 8, '2005-07-20', 259, 308, NULL),
	(25, 10, '0000-00-00', 115, 400, NULL),
	(26, 5, '2010-06-21', 37, 420, NULL),
	(27, 1, '2003-08-21', 43, 488, NULL),
	(28, 5, '0000-00-00', 204, 412, NULL),
	(29, 8, '2007-12-20', 16, 330, NULL),
	(30, 8, '2009-03-20', 212, 338, NULL),
	(31, 6, '2011-04-20', 253, 405, NULL),
	(32, 4, '2004-01-20', 283, 397, NULL),
	(33, 2, '2001-01-20', 254, 362, NULL),
	(34, 7, '2011-07-21', 227, 466, NULL),
	(35, 4, '0000-00-00', 205, 453, NULL),
	(36, 8, '2006-07-20', 60, 433, NULL),
	(37, 2, '2012-02-20', 82, 455, NULL),
	(38, 8, '2002-01-20', 265, 303, NULL),
	(39, 10, '0000-00-00', 52, 490, NULL),
	(40, 10, '2009-11-21', 103, 486, NULL),
	(41, 10, '2007-06-20', 201, 388, NULL),
	(42, 8, '0000-00-00', 194, 440, NULL),
	(43, 10, '0000-00-00', 200, 496, NULL),
	(44, 2, '0000-00-00', 58, 419, NULL),
	(45, 6, '0000-00-00', 47, 496, NULL),
	(46, 4, '2012-02-20', 203, 326, NULL),
	(47, 6, '2004-04-20', 209, 310, NULL),
	(48, 3, '0000-00-00', 54, 397, NULL),
	(49, 1, '0000-00-00', 98, 315, NULL),
	(50, 1, '0000-00-00', 84, 395, NULL),
	(51, 10, '0000-00-00', 131, 365, NULL),
	(52, 5, '0000-00-00', 225, 363, NULL),
	(53, 6, '0000-00-00', 154, 420, NULL),
	(54, 10, '2012-09-21', 153, 447, NULL),
	(55, 10, '0000-00-00', 9, 446, NULL),
	(56, 10, '0000-00-00', 154, 302, NULL),
	(57, 8, '2009-09-20', 111, 389, NULL),
	(58, 6, '2008-04-21', 50, 348, NULL),
	(59, 10, '0000-00-00', 147, 463, NULL),
	(60, 10, '0000-00-00', 107, 381, NULL),
	(61, 2, '0000-00-00', 170, 314, NULL),
	(62, 1, '0000-00-00', 168, 349, NULL),
	(63, 9, '2003-02-21', 237, 312, NULL),
	(64, 3, '2007-07-21', 127, 483, NULL),
	(65, 2, '2010-05-21', 58, 462, NULL),
	(66, 10, '0000-00-00', 242, 315, NULL),
	(67, 5, '2004-10-21', 142, 471, NULL),
	(68, 8, '0000-00-00', 133, 379, NULL),
	(69, 4, '2003-10-21', 211, 459, NULL),
	(70, 3, '0000-00-00', 208, 367, NULL),
	(71, 3, '0000-00-00', 71, 327, NULL),
	(72, 5, '0000-00-00', 39, 393, NULL),
	(73, 3, '0000-00-00', 92, 371, NULL),
	(74, 9, '0000-00-00', 25, 319, NULL),
	(75, 1, '2001-11-22', 78, 302, NULL),
	(76, 2, '0000-00-00', 148, 315, NULL),
	(77, 7, '2004-05-21', 241, 363, NULL),
	(78, 4, '0000-00-00', 261, 444, NULL),
	(79, 8, '0000-00-00', 123, 465, NULL),
	(80, 7, '0000-00-00', 69, 318, NULL),
	(81, 9, '0000-00-00', 273, 382, NULL),
	(82, 9, '0000-00-00', 297, 353, NULL),
	(83, 10, '2002-02-21', 189, 366, NULL),
	(84, 1, '2008-09-20', 210, 498, NULL),
	(85, 3, '0000-00-00', 221, 483, NULL),
	(86, 7, '0000-00-00', 262, 399, NULL),
	(87, 8, '2011-11-21', 32, 428, NULL),
	(88, 7, '0000-00-00', 21, 391, NULL),
	(89, 10, '0000-00-00', 204, 359, NULL),
	(90, 4, '2001-06-21', 182, 390, NULL),
	(91, 8, '2001-11-22', 67, 469, NULL),
	(92, 10, '2003-06-20', 200, 486, NULL),
	(93, 9, '0000-00-00', 201, 335, NULL),
	(94, 10, '2002-12-20', 133, 384, NULL),
	(95, 8, '0000-00-00', 214, 396, NULL),
	(96, 3, '0000-00-00', 141, 493, NULL),
	(97, 7, '0000-00-00', 296, 493, NULL),
	(98, 5, '0000-00-00', 234, 362, NULL),
	(99, 10, '2007-07-20', 100, 469, NULL),
	(100, 6, '0000-00-00', 148, 371, NULL);
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;

-- Dumping structure for table safo.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(100) NOT NULL,
  `rfc` char(13) DEFAULT 'MOMV990405',
  `edad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.clientes: ~100 rows (approximately)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `nombre`, `rfc`, `edad`) VALUES
	(1, 'Xandra', 'MOMV990405', 13),
	(2, 'Uta', 'MOMV990405', 38),
	(3, 'Otto', 'MOMV990405', 27),
	(4, 'Hope', 'MOMV990405', 60),
	(5, 'Ursula', 'MOMV990405', 68),
	(6, 'Madeline', 'MOMV990405', 30),
	(7, 'Myles', 'MOMV990405', 54),
	(8, 'Patience', 'MOMV990405', 55),
	(9, 'Ella', 'MOMV990405', 13),
	(10, 'Sage', 'MOMV990405', 28),
	(11, 'Jenna', 'MOMV990405', 53),
	(12, 'Leonard', 'MOMV990405', 18),
	(13, 'Kay', 'MOMV990405', 30),
	(14, 'Steven', 'MOMV990405', 12),
	(15, 'Allistair', 'MOMV990405', 41),
	(16, 'Kellie', 'MOMV990405', 61),
	(17, 'Tanek', 'MOMV990405', 20),
	(18, 'Faith', 'MOMV990405', 8),
	(19, 'Jermaine', 'MOMV990405', 58),
	(20, 'Alden', 'MOMV990405', 50),
	(21, 'Nehru', 'MOMV990405', 62),
	(22, 'Colby', 'MOMV990405', 38),
	(23, 'Yoko', 'MOMV990405', 6),
	(24, 'Jeremy', 'MOMV990405', 43),
	(25, 'Charde', 'MOMV990405', 67),
	(26, 'Penelope', 'MOMV990405', 4),
	(27, 'Amelia', 'MOMV990405', 68),
	(28, 'Vladimir', 'MOMV990405', 67),
	(29, 'Charles', 'MOMV990405', 51),
	(30, 'Upton', 'MOMV990405', 18),
	(31, 'Shana', 'MOMV990405', 7),
	(32, 'Chanda', 'MOMV990405', 66),
	(33, 'Oscar', 'MOMV990405', 3),
	(34, 'Petra', 'MOMV990405', 66),
	(35, 'Austin', 'MOMV990405', 28),
	(36, 'Althea', 'MOMV990405', 33),
	(37, 'Angela', 'MOMV990405', 30),
	(38, 'Jayme', 'MOMV990405', 39),
	(39, 'Winter', 'MOMV990405', 13),
	(40, 'Kasimir', 'MOMV990405', 26),
	(41, 'Macey', 'MOMV990405', 55),
	(42, 'Kelsey', 'MOMV990405', 3),
	(43, 'Simone', 'MOMV990405', 68),
	(44, 'Robin', 'MOMV990405', 21),
	(45, 'Jamal', 'MOMV990405', 12),
	(46, 'Maxine', 'MOMV990405', 34),
	(47, 'Russell', 'MOMV990405', 28),
	(48, 'Demetrius', 'MOMV990405', 4),
	(49, 'Fay', 'MOMV990405', 36),
	(50, 'Regan', 'MOMV990405', 25),
	(51, 'Mark', 'MOMV990405', 31),
	(52, 'Suki', 'MOMV990405', 32),
	(53, 'Gwendolyn', 'MOMV990405', 47),
	(54, 'Colin', 'MOMV990405', 52),
	(55, 'Lunea', 'MOMV990405', 61),
	(56, 'Kim', 'MOMV990405', 36),
	(57, 'Zane', 'MOMV990405', 35),
	(58, 'Lenore', 'MOMV990405', 19),
	(59, 'Todd', 'MOMV990405', 55),
	(60, 'Vernon', 'MOMV990405', 54),
	(61, 'Orla', 'MOMV990405', 12),
	(62, 'Hedy', 'MOMV990405', 61),
	(63, 'Jamalia', 'MOMV990405', 60),
	(64, 'Megan', 'MOMV990405', 26),
	(65, 'Lucas', 'MOMV990405', 61),
	(66, 'Tarik', 'MOMV990405', 36),
	(67, 'Lars', 'MOMV990405', 12),
	(68, 'Candace', 'MOMV990405', 22),
	(69, 'Kieran', 'MOMV990405', 68),
	(70, 'Tate', 'MOMV990405', 26),
	(71, 'Isaiah', 'MOMV990405', 52),
	(72, 'Chastity', 'MOMV990405', 16),
	(73, 'Indira', 'MOMV990405', 24),
	(74, 'Mariam', 'MOMV990405', 27),
	(75, 'Kimberley', 'MOMV990405', 13),
	(76, 'Tatyana', 'MOMV990405', 56),
	(77, 'Ray', 'MOMV990405', 36),
	(78, 'Troy', 'MOMV990405', 64),
	(79, 'Fiona', 'MOMV990405', 40),
	(80, 'Jamal', 'MOMV990405', 63),
	(81, 'Adria', 'MOMV990405', 9),
	(82, 'Dorian', 'MOMV990405', 6),
	(83, 'Larissa', 'MOMV990405', 20),
	(84, 'Cora', 'MOMV990405', 32),
	(85, 'Henry', 'MOMV990405', 36),
	(86, 'Amber', 'MOMV990405', 59),
	(87, 'Sawyer', 'MOMV990405', 7),
	(88, 'Theodore', 'MOMV990405', 48),
	(89, 'Aidan', 'MOMV990405', 64),
	(90, 'Uta', 'MOMV990405', 29),
	(91, 'Karen', 'MOMV990405', 33),
	(92, 'Raymond', 'MOMV990405', 12),
	(93, 'Gillian', 'MOMV990405', 6),
	(94, 'Halee', 'MOMV990405', 20),
	(95, 'Fitzgerald', 'MOMV990405', 35),
	(96, 'Hermione', 'MOMV990405', 53),
	(97, 'Hyacinth', 'MOMV990405', 24),
	(98, 'Ignatius', 'MOMV990405', 53),
	(99, 'Aiko', 'MOMV990405', 5),
	(100, 'Daniel', 'MOMV990405', 68);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Dumping structure for table safo.consultas
CREATE TABLE IF NOT EXISTS `consultas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_medico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `padecimiento` text,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.consultas: ~103 rows (approximately)
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` (`id`, `id_medico`, `id_paciente`, `fecha_hora`, `padecimiento`) VALUES
	(1, 2, 21, '2003-12-20 00:00:00', 'risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.'),
	(2, 8, 25, '2004-06-21 00:00:00', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et'),
	(3, 6, 3, '0000-00-00 00:00:00', 'Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla'),
	(4, 5, 32, '0000-00-00 00:00:00', 'Integer sem elit, pharetra ut, pharetra sed,'),
	(5, 5, 36, '2002-04-21 00:00:00', 'tristique aliquet. Phasellus fermentum convallis'),
	(6, 5, 35, '2008-04-20 00:00:00', 'dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper'),
	(7, 2, 13, '2003-11-21 00:00:00', 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit'),
	(8, 2, 36, '0000-00-00 00:00:00', 'libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed,'),
	(9, 4, 20, '0000-00-00 00:00:00', 'egestas. Duis ac arcu. Nunc mauris. Morbi'),
	(10, 3, 10, '0000-00-00 00:00:00', 'ac mi eleifend egestas. Sed'),
	(11, 8, 41, '0000-00-00 00:00:00', 'justo eu arcu. Morbi sit'),
	(12, 4, 4, '2008-11-20 00:00:00', 'purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie'),
	(13, 5, 25, '2010-10-21 00:00:00', 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed'),
	(14, 2, 11, '0000-00-00 00:00:00', 'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,'),
	(15, 5, 22, '2002-01-21 00:00:00', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce'),
	(16, 6, 13, '2008-04-21 00:00:00', 'Proin non massa non ante bibendum ullamcorper. Duis cursus,'),
	(17, 2, 5, '2004-02-20 00:00:00', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt.'),
	(18, 2, 22, '0000-00-00 00:00:00', 'non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.'),
	(19, 5, 26, '0000-00-00 00:00:00', 'augue malesuada malesuada.'),
	(20, 1, 13, '2010-02-20 00:00:00', 'Phasellus at augue id ante dictum cursus. Nunc'),
	(21, 1, 35, '2003-10-20 00:00:00', 'ipsum. Phasellus vitae mauris sit amet lorem semper'),
	(22, 1, 6, '2008-01-20 00:00:00', 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,'),
	(23, 4, 15, '0000-00-00 00:00:00', 'in lobortis tellus'),
	(24, 6, 23, '0000-00-00 00:00:00', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi'),
	(25, 4, 4, '2007-02-20 00:00:00', 'taciti'),
	(26, 3, 36, '2003-11-21 00:00:00', 'fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.'),
	(27, 6, 31, '0000-00-00 00:00:00', 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio'),
	(28, 4, 6, '0000-00-00 00:00:00', 'Fusce'),
	(29, 7, 44, '0000-00-00 00:00:00', 'placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing'),
	(30, 1, 41, '0000-00-00 00:00:00', 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate,'),
	(31, 3, 8, '2007-02-21 00:00:00', 'pharetra, felis eget'),
	(32, 1, 15, '0000-00-00 00:00:00', 'in felis. Nulla tempor'),
	(33, 5, 44, '0000-00-00 00:00:00', 'eleifend. Cras sed leo. Cras vehicula'),
	(34, 4, 1, '2011-08-20 00:00:00', 'hendrerit consectetuer,'),
	(35, 7, 16, '0000-00-00 00:00:00', 'faucibus. Morbi'),
	(36, 8, 10, '2004-12-20 00:00:00', 'pede. Cras vulputate velit eu'),
	(37, 6, 6, '2011-10-21 00:00:00', 'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat,'),
	(38, 5, 21, '0000-00-00 00:00:00', 'at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;'),
	(39, 6, 26, '2006-01-21 00:00:00', 'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu.'),
	(40, 6, 16, '0000-00-00 00:00:00', 'consequat purus. Maecenas'),
	(41, 4, 4, '0000-00-00 00:00:00', 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus'),
	(42, 4, 1, '0000-00-00 00:00:00', 'ut'),
	(43, 2, 14, '0000-00-00 00:00:00', 'libero. Integer'),
	(44, 5, 43, '2005-10-21 00:00:00', 'Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas'),
	(45, 4, 2, '0000-00-00 00:00:00', 'Aliquam auctor, velit eget laoreet posuere,'),
	(46, 6, 31, '2004-12-21 00:00:00', 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor'),
	(47, 4, 5, '0000-00-00 00:00:00', 'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum'),
	(48, 1, 4, '0000-00-00 00:00:00', 'ornare, libero at auctor ullamcorper, nisl'),
	(49, 5, 24, '0000-00-00 00:00:00', 'congue turpis.'),
	(50, 3, 42, '2007-10-20 00:00:00', 'tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id'),
	(51, 2, 16, '0000-00-00 00:00:00', 'sed, facilisis vitae,'),
	(52, 5, 28, '0000-00-00 00:00:00', 'vulputate ullamcorper magna. Sed eu eros.'),
	(53, 4, 17, '2002-02-20 00:00:00', 'vel arcu eu odio tristique pharetra. Quisque'),
	(54, 8, 24, '2008-09-21 00:00:00', 'felis eget varius ultrices, mauris ipsum porta elit,'),
	(55, 6, 22, '0000-00-00 00:00:00', 'lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at,'),
	(56, 8, 20, '2005-03-21 00:00:00', 'a odio'),
	(57, 3, 38, '0000-00-00 00:00:00', 'Vestibulum accumsan neque et nunc.'),
	(58, 5, 13, '0000-00-00 00:00:00', 'Integer vitae'),
	(59, 8, 6, '2002-09-20 00:00:00', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.'),
	(60, 3, 42, '2003-08-21 00:00:00', 'massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer'),
	(61, 2, 6, '0000-00-00 00:00:00', 'laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in'),
	(62, 4, 9, '2004-12-21 00:00:00', 'Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,'),
	(63, 1, 20, '0000-00-00 00:00:00', 'elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.'),
	(64, 4, 24, '2009-08-21 00:00:00', 'amet lorem semper'),
	(65, 1, 3, '2008-06-21 00:00:00', 'tellus. Phasellus elit pede, malesuada vel, venenatis'),
	(66, 3, 31, '0000-00-00 00:00:00', 'Vivamus rhoncus. Donec est.'),
	(67, 3, 16, '2012-04-21 00:00:00', 'risus. Nulla eget metus eu erat semper'),
	(68, 3, 43, '0000-00-00 00:00:00', 'Nunc ullamcorper, velit in aliquet lobortis, nisi'),
	(69, 5, 35, '0000-00-00 00:00:00', 'egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis'),
	(70, 8, 39, '0000-00-00 00:00:00', 'Curae; Phasellus ornare. Fusce mollis.'),
	(71, 8, 13, '0000-00-00 00:00:00', 'urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit'),
	(72, 6, 41, '0000-00-00 00:00:00', 'elit sed consequat auctor, nunc nulla vulputate dui,'),
	(73, 3, 24, '0000-00-00 00:00:00', 'faucibus. Morbi'),
	(74, 4, 35, '0000-00-00 00:00:00', 'iaculis aliquet diam.'),
	(75, 8, 30, '2004-08-21 00:00:00', 'per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien'),
	(76, 4, 26, '0000-00-00 00:00:00', 'orci lacus'),
	(77, 2, 28, '0000-00-00 00:00:00', 'non quam. Pellentesque habitant'),
	(78, 2, 24, '0000-00-00 00:00:00', 'ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur'),
	(79, 2, 30, '0000-00-00 00:00:00', 'dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,'),
	(80, 4, 40, '0000-00-00 00:00:00', 'dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem'),
	(81, 8, 43, '2009-03-21 00:00:00', 'cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.'),
	(82, 6, 9, '2006-08-20 00:00:00', 'erat volutpat. Nulla dignissim. Maecenas ornare'),
	(83, 4, 41, '0000-00-00 00:00:00', 'non, bibendum sed, est. Nunc laoreet lectus quis'),
	(84, 6, 34, '2001-10-21 00:00:00', 'Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,'),
	(85, 4, 29, '0000-00-00 00:00:00', 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna.'),
	(86, 7, 4, '2010-08-21 00:00:00', 'auctor ullamcorper, nisl arcu'),
	(87, 6, 42, '2012-02-21 00:00:00', 'in consequat enim diam vel arcu. Curabitur ut odio vel est'),
	(88, 2, 2, '0000-00-00 00:00:00', 'nunc'),
	(89, 1, 27, '0000-00-00 00:00:00', 'vulputate, nisi sem semper erat,'),
	(90, 5, 18, '0000-00-00 00:00:00', 'aliquet diam. Sed diam lorem, auctor quis, tristique'),
	(91, 4, 30, '2001-06-22 00:00:00', 'at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac'),
	(92, 5, 19, '0000-00-00 00:00:00', 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis'),
	(93, 8, 22, '0000-00-00 00:00:00', 'lectus ante dictum mi, ac'),
	(94, 7, 15, '0000-00-00 00:00:00', 'amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,'),
	(95, 2, 33, '2005-09-20 00:00:00', 'ultrices a, auctor'),
	(96, 8, 14, '2012-03-20 00:00:00', 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in'),
	(97, 3, 1, '0000-00-00 00:00:00', 'nulla magna, malesuada vel, convallis in, cursus et, eros. Proin'),
	(98, 8, 33, '2001-04-22 00:00:00', 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla'),
	(99, 5, 18, '0000-00-00 00:00:00', 'nisi magna sed dui. Fusce aliquam, enim'),
	(100, 7, 40, '0000-00-00 00:00:00', 'Cras eu tellus eu augue porttitor interdum. Sed auctor odio a'),
	(101, 3, 2, '2021-01-24 20:02:55', 'Tiene lombrices :('),
	(102, 3, 2, '2021-01-24 20:06:03', 'kolakola '),
	(103, 3, 2, '2021-01-25 01:13:29', 'no funciona');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;

-- Dumping structure for view safo.consultas_medicamentos
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `consultas_medicamentos` (
	`id_consulta` INT(11) NOT NULL,
	`id_medico` INT(11) NOT NULL,
	`id_paciente` INT(11) NOT NULL,
	`nombre_medicamento` TEXT(65535) NOT NULL COLLATE 'latin1_swedish_ci',
	`fecha_hora` DATETIME NOT NULL,
	`padecimiento` TEXT(65535) NULL COLLATE 'latin1_swedish_ci',
	`saludable` INT(11) NULL,
	`nombre_medico` CHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`nombre_paciente` CHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`rfc` CHAR(13) NULL COLLATE 'latin1_swedish_ci',
	`edad` INT(11) NOT NULL,
	`peso` INT(11) NULL,
	`estatura` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for table safo.descuentos
CREATE TABLE IF NOT EXISTS `descuentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `descuento` int(11) DEFAULT NULL,
  `gasto` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `descuentos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table safo.descuentos: ~0 rows (approximately)
/*!40000 ALTER TABLE `descuentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `descuentos` ENABLE KEYS */;

-- Dumping structure for table safo.emergencias_medicas
CREATE TABLE IF NOT EXISTS `emergencias_medicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `emergencias_medicas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `emergencias_medicas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.emergencias_medicas: ~66 rows (approximately)
/*!40000 ALTER TABLE `emergencias_medicas` DISABLE KEYS */;
INSERT INTO `emergencias_medicas` (`id`, `id_paciente`, `id_medico`, `tipo`, `descripcion`) VALUES
	(1, 10, 8, 5, 'posuere cubilia Curae;'),
	(2, 6, 5, 3, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur'),
	(3, 29, 7, 4, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.'),
	(4, 4, 3, 2, 'vestibulum nec, euismod in, dolor.'),
	(5, 21, 8, 5, 'euismod'),
	(6, 27, 2, 4, 'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem,'),
	(7, 19, 7, 4, 'quis accumsan convallis, ante lectus convallis est,'),
	(8, 12, 4, 3, 'lorem ipsum sodales purus, in molestie tortor nibh sit amet'),
	(9, 4, 5, 9, 'enim. Sed nulla ante,'),
	(10, 24, 8, 1, 'sem semper erat, in consectetuer ipsum nunc id enim.'),
	(11, 4, 1, 9, 'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu'),
	(12, 29, 8, 7, 'in faucibus orci'),
	(13, 18, 6, 9, 'mattis velit'),
	(14, 24, 6, 7, 'vitae aliquam'),
	(15, 25, 6, 1, 'mi pede, nonummy ut, molestie in, tempus eu, ligula.'),
	(16, 15, 4, 4, 'dictum sapien. Aenean massa. Integer'),
	(17, 18, 7, 6, 'placerat, augue. Sed molestie. Sed id risus'),
	(18, 13, 7, 7, 'sagittis semper. Nam tempor'),
	(19, 14, 6, 4, 'vel'),
	(20, 1, 4, 3, 'non nisi.'),
	(21, 22, 7, 1, 'luctus sit amet, faucibus ut, nulla. Cras eu'),
	(22, 27, 4, 2, 'amet massa. Quisque porttitor eros nec'),
	(23, 5, 7, 2, 'magnis dis parturient'),
	(24, 7, 5, 1, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus'),
	(25, 17, 4, 9, 'Integer urna. Vivamus'),
	(26, 24, 3, 3, 'vulputate, risus a'),
	(27, 25, 7, 2, 'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,'),
	(28, 26, 5, 1, 'Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus'),
	(29, 30, 1, 2, 'sit amet, dapibus id, blandit at, nisi. Cum sociis natoque'),
	(30, 10, 5, 1, 'ac turpis egestas. Fusce aliquet magna a neque.'),
	(31, 28, 5, 2, 'libero. Morbi accumsan laoreet ipsum. Curabitur'),
	(32, 14, 8, 2, 'et libero. Proin mi. Aliquam gravida mauris ut mi.'),
	(33, 6, 7, 1, 'fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque'),
	(34, 14, 4, 1, 'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut'),
	(35, 19, 5, 8, 'dolor. Fusce mi lorem, vehicula et, rutrum eu,'),
	(36, 2, 4, 8, 'iaculis'),
	(37, 4, 4, 7, 'ipsum. Curabitur consequat, lectus sit'),
	(38, 28, 3, 10, 'egestas. Fusce aliquet magna a neque.'),
	(39, 19, 1, 8, 'mollis. Integer'),
	(40, 11, 5, 3, 'eu metus.'),
	(41, 5, 7, 6, 'luctus'),
	(42, 15, 6, 8, 'pede, nonummy ut,'),
	(43, 4, 6, 10, 'dapibus quam quis diam. Pellentesque'),
	(44, 20, 5, 10, 'arcu. Vestibulum ante ipsum primis'),
	(45, 20, 4, 5, 'per inceptos hymenaeos.'),
	(46, 22, 3, 6, 'nisl sem,'),
	(47, 29, 8, 3, 'dui lectus rutrum'),
	(48, 22, 4, 6, 'eu, accumsan sed, facilisis vitae, orci. Phasellus'),
	(49, 25, 3, 9, 'lectus justo eu arcu. Morbi'),
	(50, 15, 1, 7, 'In tincidunt congue turpis. In condimentum.'),
	(51, 25, 1, 4, 'eget, ipsum. Donec sollicitudin adipiscing'),
	(52, 5, 5, 6, 'egestas a, scelerisque sed,'),
	(53, 6, 7, 2, 'sed sem egestas blandit. Nam nulla magna,'),
	(54, 19, 3, 3, 'augue id ante'),
	(55, 25, 8, 7, 'sem. Nulla interdum. Curabitur'),
	(56, 14, 7, 8, 'gravida sagittis. Duis gravida. Praesent eu nulla at'),
	(57, 11, 7, 1, 'faucibus orci luctus et ultrices posuere cubilia Curae;'),
	(58, 5, 5, 5, 'elit fermentum risus, at fringilla purus mauris'),
	(59, 24, 1, 8, 'mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,'),
	(60, 25, 3, 5, 'Vivamus nisi. Mauris nulla.'),
	(61, 30, 3, 9, 'magna a tortor. Nunc'),
	(62, 20, 6, 1, 'odio a purus. Duis elementum, dui quis accumsan convallis,'),
	(63, 9, 5, 4, 'egestas a, dui. Cras pellentesque.'),
	(64, 19, 8, 7, 'faucibus id, libero. Donec consectetuer mauris id sapien.'),
	(65, 30, 4, 10, 'ac turpis egestas. Fusce'),
	(66, 21, 6, 1, 'dictum eu, eleifend nec, malesuada ut,');
/*!40000 ALTER TABLE `emergencias_medicas` ENABLE KEYS */;

-- Dumping structure for table safo.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(100) NOT NULL,
  `username` char(100) NOT NULL,
  `clave_acceso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.empleados: ~10 rows (approximately)
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`id`, `nombre`, `username`, `clave_acceso`) VALUES
	(1, 'Saul de la O Torres', 'profesorpoo', 1537277),
	(2, 'Isaac el ...', 'lorena herrera', 2072983801),
	(3, 'Wallace', 'Nullam lobortis', 0),
	(4, 'Kamal', 'enim.', 0),
	(5, 'Ross', 'ornare tortor', 0),
	(6, 'Wallace', 'velit egestas', 0),
	(7, 'Mallory', 'Ut semper', 0),
	(8, 'Paula', 'sapien, cursus', 0),
	(9, 'Chava', 'lorem ut', 0),
	(10, 'Irene', 'Nunc', 0);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;

-- Dumping structure for table safo.expediente
CREATE TABLE IF NOT EXISTS `expediente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) NOT NULL,
  `folio` int(11) NOT NULL,
  `consultorio` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `expediente_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.expediente: ~66 rows (approximately)
/*!40000 ALTER TABLE `expediente` DISABLE KEYS */;
INSERT INTO `expediente` (`id`, `id_consulta`, `folio`, `consultorio`) VALUES
	(1, 93, 21, 1),
	(2, 91, 26, 1),
	(3, 75, 15, 1),
	(4, 15, 42, 1),
	(5, 39, 11, 1),
	(6, 39, 7, 1),
	(7, 15, 46, 1),
	(8, 44, 8, 1),
	(9, 98, 19, 1),
	(10, 60, 78, 1),
	(11, 61, 24, 1),
	(12, 27, 15, 1),
	(13, 84, 43, 1),
	(14, 18, 2, 1),
	(15, 19, 46, 1),
	(16, 89, 38, 1),
	(17, 13, 15, 1),
	(18, 21, 33, 1),
	(19, 45, 51, 1),
	(20, 8, 26, 1),
	(21, 95, 79, 1),
	(22, 28, 6, 1),
	(23, 73, 45, 1),
	(24, 40, 3, 1),
	(25, 78, 56, 1),
	(26, 9, 96, 1),
	(27, 87, 90, 1),
	(28, 70, 13, 1),
	(29, 16, 56, 1),
	(30, 53, 96, 1),
	(31, 52, 96, 1),
	(32, 81, 83, 1),
	(33, 9, 36, 1),
	(34, 94, 70, 1),
	(35, 82, 19, 1),
	(36, 13, 52, 1),
	(37, 58, 57, 1),
	(38, 19, 9, 1),
	(39, 75, 53, 1),
	(40, 27, 42, 1),
	(41, 28, 36, 1),
	(42, 36, 16, 1),
	(43, 85, 30, 1),
	(44, 49, 23, 1),
	(45, 10, 44, 1),
	(46, 10, 39, 1),
	(47, 72, 21, 1),
	(48, 77, 13, 1),
	(49, 33, 90, 1),
	(50, 42, 60, 1),
	(51, 3, 8, 1),
	(52, 53, 81, 1),
	(53, 30, 28, 1),
	(54, 51, 48, 1),
	(55, 65, 50, 1),
	(56, 18, 75, 1),
	(57, 1, 43, 1),
	(58, 77, 19, 1),
	(59, 51, 64, 1),
	(60, 24, 74, 1),
	(61, 95, 63, 1),
	(62, 26, 65, 1),
	(63, 87, 47, 1),
	(64, 36, 83, 1),
	(65, 87, 70, 1),
	(66, 81, 39, 1);
/*!40000 ALTER TABLE `expediente` ENABLE KEYS */;

-- Dumping structure for table safo.historial_lab
CREATE TABLE IF NOT EXISTS `historial_lab` (
  `id_paciente` int(11) DEFAULT NULL,
  `id_resultado` int(11) DEFAULT NULL,
  KEY `id_paciente` (`id_paciente`),
  KEY `id_resultado` (`id_resultado`),
  CONSTRAINT `historial_lab_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `historial_lab_ibfk_2` FOREIGN KEY (`id_resultado`) REFERENCES `resultados_lab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table safo.historial_lab: ~57 rows (approximately)
/*!40000 ALTER TABLE `historial_lab` DISABLE KEYS */;
INSERT INTO `historial_lab` (`id_paciente`, `id_resultado`) VALUES
	(27, 6),
	(3, 5),
	(6, 8),
	(19, 10),
	(5, 1),
	(22, 10),
	(25, 9),
	(18, 1),
	(23, 1),
	(11, 5),
	(12, 4),
	(25, 5),
	(19, 10),
	(18, 1),
	(24, 7),
	(7, 4),
	(13, 1),
	(26, 3),
	(22, 9),
	(28, 5),
	(27, 10),
	(12, 7),
	(1, 7),
	(3, 4),
	(6, 8),
	(15, 9),
	(28, 3),
	(30, 4),
	(15, 1),
	(7, 5),
	(9, 8),
	(20, 2),
	(11, 10),
	(25, 10),
	(8, 9),
	(7, 7),
	(26, 10),
	(20, 9),
	(21, 6),
	(10, 10),
	(8, 2),
	(12, 10),
	(14, 9),
	(16, 7),
	(26, 7),
	(6, 8),
	(27, 5),
	(17, 6),
	(27, 1),
	(10, 8),
	(3, 5),
	(10, 9),
	(30, 3),
	(2, 3),
	(26, 7),
	(23, 3),
	(17, 1);
/*!40000 ALTER TABLE `historial_lab` ENABLE KEYS */;

-- Dumping structure for table safo.inventario
CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.inventario: ~100 rows (approximately)
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` (`id`, `id_producto`, `cantidad`) VALUES
	(1, 11, 60),
	(2, 26, 11),
	(3, 48, 33),
	(4, 96, 66),
	(5, 16, 90),
	(6, 87, 96),
	(7, 20, 71),
	(8, 94, 55),
	(9, 91, 25),
	(10, 14, 40),
	(11, 1, 8),
	(12, 46, 67),
	(13, 24, 18),
	(14, 71, 97),
	(15, 25, 26),
	(16, 2, 18),
	(17, 2, 23),
	(18, 86, 46),
	(19, 51, 71),
	(20, 4, 44),
	(21, 3, 18),
	(22, 15, 59),
	(23, 52, 61),
	(24, 62, 91),
	(25, 7, 89),
	(26, 5, 17),
	(27, 92, 97),
	(28, 96, 98),
	(29, 22, 9),
	(30, 8, 38),
	(31, 93, 30),
	(32, 97, 63),
	(33, 91, 40),
	(34, 73, 43),
	(35, 58, 50),
	(36, 71, 39),
	(37, 100, 56),
	(38, 10, 75),
	(39, 69, 43),
	(40, 35, 92),
	(41, 83, 18),
	(42, 39, 38),
	(43, 50, 56),
	(44, 86, 29),
	(45, 95, 98),
	(46, 89, 34),
	(47, 62, 1),
	(48, 55, 13),
	(49, 81, 13),
	(50, 15, 54),
	(51, 54, 30),
	(52, 54, 28),
	(53, 24, 19),
	(54, 20, 54),
	(55, 62, 77),
	(56, 13, 88),
	(57, 17, 40),
	(58, 98, 57),
	(59, 10, 17),
	(60, 21, 3),
	(61, 11, 58),
	(62, 19, 5),
	(63, 36, 83),
	(64, 59, 51),
	(65, 10, 93),
	(66, 36, 34),
	(67, 16, 39),
	(68, 37, 93),
	(69, 71, 84),
	(70, 10, 98),
	(71, 5, 15),
	(72, 87, 75),
	(73, 20, 80),
	(74, 38, 18),
	(75, 90, 32),
	(76, 28, 51),
	(77, 78, 3),
	(78, 86, 91),
	(79, 88, 70),
	(80, 62, 23),
	(81, 61, 93),
	(82, 30, 71),
	(83, 22, 26),
	(84, 70, 46),
	(85, 46, 3),
	(86, 43, 1),
	(87, 62, 59),
	(88, 18, 26),
	(89, 18, 44),
	(90, 28, 24),
	(91, 58, 88),
	(92, 70, 49),
	(93, 32, 19),
	(94, 2, 88),
	(95, 50, 25),
	(96, 75, 60),
	(97, 27, 80),
	(98, 77, 43),
	(99, 13, 93),
	(100, 20, 50);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;

-- Dumping structure for table safo.laboratoristas
CREATE TABLE IF NOT EXISTS `laboratoristas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` char(100) NOT NULL,
  `pass` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.laboratoristas: ~4 rows (approximately)
/*!40000 ALTER TABLE `laboratoristas` DISABLE KEYS */;
INSERT INTO `laboratoristas` (`id`, `usuario`, `pass`) VALUES
	(1, 'Grant', 'RGN57PFW3ZR'),
	(2, 'Juliet', 'JQZ00KFX9SB'),
	(3, 'Lacy', 'JUE71QBH3WR'),
	(4, 'Paul', 'CHH27RUI6AD');
/*!40000 ALTER TABLE `laboratoristas` ENABLE KEYS */;

-- Dumping structure for table safo.medicamentos_recetados
CREATE TABLE IF NOT EXISTS `medicamentos_recetados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_medicamento` text NOT NULL,
  `id_receta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_receta` (`id_receta`),
  CONSTRAINT `medicamentos_recetados_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.medicamentos_recetados: ~5 rows (approximately)
/*!40000 ALTER TABLE `medicamentos_recetados` DISABLE KEYS */;
INSERT INTO `medicamentos_recetados` (`id`, `nombre_medicamento`, `id_receta`) VALUES
	(1, 'paracetamol', 1),
	(2, 'te de limoncito', 1),
	(3, 'tempra de uva', 1),
	(4, 'Una peda ', 2),
	(5, 'reparaciones patito', 3);
/*!40000 ALTER TABLE `medicamentos_recetados` ENABLE KEYS */;

-- Dumping structure for table safo.medicos
CREATE TABLE IF NOT EXISTS `medicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(100) NOT NULL,
  `cedula` char(13) NOT NULL DEFAULT 'sin-cédula',
  `consultorio` int(11) NOT NULL DEFAULT '-1',
  `edad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.medicos: ~8 rows (approximately)
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` (`id`, `nombre`, `cedula`, `consultorio`, `edad`) VALUES
	(1, 'Madeson', 'sin-cédula', -1, 47),
	(2, 'Gil', 'sin-cédula', -1, 55),
	(3, 'Rooney', 'sin-cédula', -1, 51),
	(4, 'Colton', 'sin-cédula', -1, 52),
	(5, 'Catherine', 'sin-cédula', -1, 51),
	(6, 'Octavius', 'sin-cédula', -1, 36),
	(7, 'Belle', 'sin-cédula', -1, 35),
	(8, 'Hop', 'sin-cédula', -1, 41);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;

-- Dumping structure for table safo.mostrador
CREATE TABLE IF NOT EXISTS `mostrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto` (`producto`),
  CONSTRAINT `mostrador_ibfk_1` FOREIGN KEY (`producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table safo.mostrador: ~0 rows (approximately)
/*!40000 ALTER TABLE `mostrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `mostrador` ENABLE KEYS */;

-- Dumping structure for table safo.pacientes
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` int(11) NOT NULL,
  `peso` int(11) DEFAULT NULL,
  `estatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table safo.pacientes: ~44 rows (approximately)
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` (`id`, `peso`, `estatura`) VALUES
	(1, 120, 192),
	(2, 89, 158),
	(3, 109, 166),
	(4, 83, 140),
	(5, 113, 195),
	(6, 65, 174),
	(7, 56, 135),
	(8, 84, 149),
	(9, 111, 189),
	(10, 102, 171),
	(11, 84, 182),
	(12, 108, 192),
	(13, 73, 123),
	(14, 110, 186),
	(15, 73, 120),
	(16, 109, 195),
	(17, 56, 198),
	(18, 117, 150),
	(19, 51, 172),
	(20, 120, 157),
	(21, 53, 164),
	(22, 101, 130),
	(23, 62, 149),
	(24, 55, 170),
	(25, 99, 173),
	(26, 76, 145),
	(27, 52, 152),
	(28, 117, 186),
	(29, 82, 189),
	(30, 104, 181),
	(31, 118, 132),
	(32, 72, 147),
	(33, 79, 181),
	(34, 57, 151),
	(35, 117, 189),
	(36, 108, 136),
	(37, 55, 124),
	(38, 51, 183),
	(39, 89, 154),
	(40, 110, 156),
	(41, 57, 193),
	(42, 63, 189),
	(43, 67, 196),
	(44, 53, 156);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;

-- Dumping structure for table safo.pacientes_alergias
CREATE TABLE IF NOT EXISTS `pacientes_alergias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_alergia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_alergia` (`id_alergia`),
  CONSTRAINT `pacientes_alergias_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `pacientes_alergias_ibfk_2` FOREIGN KEY (`id_alergia`) REFERENCES `alergias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.pacientes_alergias: ~87 rows (approximately)
/*!40000 ALTER TABLE `pacientes_alergias` DISABLE KEYS */;
INSERT INTO `pacientes_alergias` (`id`, `id_paciente`, `id_alergia`) VALUES
	(1, 13, 18),
	(2, 11, 13),
	(3, 9, 10),
	(4, 4, 9),
	(5, 13, 2),
	(6, 19, 20),
	(7, 7, 16),
	(8, 9, 1),
	(9, 14, 5),
	(10, 1, 10),
	(11, 9, 7),
	(12, 3, 9),
	(13, 8, 14),
	(14, 3, 5),
	(15, 14, 7),
	(16, 15, 5),
	(17, 7, 18),
	(18, 5, 20),
	(19, 5, 13),
	(20, 19, 8),
	(21, 19, 13),
	(22, 8, 20),
	(23, 3, 6),
	(24, 19, 2),
	(25, 17, 15),
	(26, 1, 18),
	(27, 9, 3),
	(28, 17, 16),
	(29, 10, 10),
	(30, 1, 17),
	(31, 14, 4),
	(32, 4, 13),
	(33, 1, 6),
	(34, 8, 15),
	(35, 2, 6),
	(36, 6, 19),
	(37, 20, 12),
	(38, 10, 16),
	(39, 7, 3),
	(40, 7, 8),
	(41, 18, 16),
	(42, 7, 19),
	(43, 7, 12),
	(44, 8, 7),
	(45, 15, 9),
	(46, 14, 20),
	(47, 20, 15),
	(48, 5, 4),
	(49, 10, 14),
	(50, 11, 5),
	(51, 17, 4),
	(52, 20, 5),
	(53, 11, 15),
	(54, 8, 12),
	(55, 6, 14),
	(56, 5, 12),
	(57, 18, 5),
	(58, 8, 14),
	(59, 14, 3),
	(60, 11, 17),
	(61, 3, 7),
	(62, 11, 16),
	(63, 17, 2),
	(64, 20, 7),
	(65, 8, 13),
	(66, 16, 20),
	(67, 6, 2),
	(68, 7, 20),
	(69, 6, 10),
	(70, 20, 15),
	(71, 4, 18),
	(72, 13, 17),
	(73, 13, 3),
	(74, 8, 8),
	(75, 16, 16),
	(76, 9, 19),
	(77, 13, 5),
	(78, 18, 19),
	(79, 6, 3),
	(80, 17, 5),
	(81, 6, 17),
	(82, 3, 2),
	(83, 13, 17),
	(84, 13, 4),
	(85, 9, 15),
	(86, 13, 7),
	(87, 9, 8);
/*!40000 ALTER TABLE `pacientes_alergias` ENABLE KEYS */;

-- Dumping structure for view safo.pacientes_datos
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pacientes_datos` (
	`id` INT(11) NOT NULL,
	`nombre` CHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`rfc` CHAR(13) NULL COLLATE 'latin1_swedish_ci',
	`edad` INT(11) NOT NULL,
	`peso` INT(11) NULL,
	`estatura` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for table safo.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(100) NOT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.productos: ~100 rows (approximately)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `precio`) VALUES
	(1, 'eu', 218),
	(2, 'eget', 553),
	(3, 'Donec', 757),
	(4, 'hendrerit. Donec', 152),
	(5, 'hendrerit', 989),
	(6, 'fermentum metus.', 17),
	(7, 'ipsum. Suspendisse', 530),
	(8, 'faucibus. Morbi', 382),
	(9, 'adipiscing elit.', 775),
	(10, 'elit,', 261),
	(11, 'sapien', 718),
	(12, 'convallis convallis', 366),
	(13, 'nec luctus', 936),
	(14, 'ornare, libero', 52),
	(15, 'et, euismod', 436),
	(16, 'Sed', 532),
	(17, 'sociis natoque', 18),
	(18, 'facilisis', 91),
	(19, 'lacus. Quisque', 602),
	(20, 'eget mollis', 481),
	(21, 'auctor', 124),
	(22, 'eget', 480),
	(23, 'Mauris', 925),
	(24, 'nibh.', 714),
	(25, 'dictum', 225),
	(26, 'faucibus', 634),
	(27, 'erat', 160),
	(28, 'Phasellus nulla.', 571),
	(29, 'tempus', 690),
	(30, 'eu, accumsan', 613),
	(31, 'adipiscing.', 173),
	(32, 'amet', 187),
	(33, 'non,', 383),
	(34, 'eget lacus.', 139),
	(35, 'Donec', 801),
	(36, 'Vivamus', 874),
	(37, 'suscipit,', 690),
	(38, 'Sed congue,', 639),
	(39, 'enim', 773),
	(40, 'elementum', 318),
	(41, 'vulputate velit', 797),
	(42, 'lobortis quam', 101),
	(43, 'dui,', 397),
	(44, 'odio. Phasellus', 107),
	(45, 'fermentum', 355),
	(46, 'Nulla facilisi.', 36),
	(47, 'vulputate, lacus.', 637),
	(48, 'ac nulla.', 248),
	(49, 'Aenean egestas', 881),
	(50, 'amet ornare', 592),
	(51, 'urna,', 444),
	(52, 'nunc', 756),
	(53, 'tortor.', 342),
	(54, 'Sed molestie.', 490),
	(55, 'ipsum.', 290),
	(56, 'pellentesque massa', 748),
	(57, 'mollis dui,', 853),
	(58, 'imperdiet,', 265),
	(59, 'Suspendisse', 262),
	(60, 'faucibus lectus,', 560),
	(61, 'auctor', 692),
	(62, 'congue', 588),
	(63, 'tortor', 73),
	(64, 'urna. Vivamus', 548),
	(65, 'quis diam.', 866),
	(66, 'id', 240),
	(67, 'risus. Duis', 793),
	(68, 'dis', 207),
	(69, 'purus,', 56),
	(70, 'cursus', 965),
	(71, 'lectus sit', 837),
	(72, 'libero', 49),
	(73, 'Duis mi', 225),
	(74, 'nisi dictum', 303),
	(75, 'eget tincidunt', 171),
	(76, 'Vivamus non', 188),
	(77, 'et', 987),
	(78, 'convallis', 400),
	(79, 'Duis risus', 996),
	(80, 'risus', 495),
	(81, 'sagittis.', 674),
	(82, 'rutrum', 935),
	(83, 'sociis', 853),
	(84, 'litora', 276),
	(85, 'aliquam', 349),
	(86, 'turpis', 443),
	(87, 'parturient', 959),
	(88, 'enim.', 426),
	(89, 'laoreet', 84),
	(90, 'Pellentesque', 249),
	(91, 'sem', 874),
	(92, 'Aliquam', 631),
	(93, 'fringilla,', 303),
	(94, 'luctus, ipsum', 67),
	(95, 'mi felis,', 279),
	(96, 'magna.', 637),
	(97, 'vel,', 819),
	(98, 'non,', 13),
	(99, 'turpis vitae', 683),
	(100, 'neque.', 543);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Dumping structure for table safo.recetas
CREATE TABLE IF NOT EXISTS `recetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saludable` int(11) DEFAULT '0',
  `id_consulta` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.recetas: ~3 rows (approximately)
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` (`id`, `saludable`, `id_consulta`) VALUES
	(1, 0, 101),
	(2, 1, 102),
	(3, 0, 103);
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;

-- Dumping structure for table safo.resultados_lab
CREATE TABLE IF NOT EXISTS `resultados_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnostico` text NOT NULL,
  `id_laboratorista` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_analisis` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_laboratorista` (`id_laboratorista`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_analisis` (`id_analisis`),
  CONSTRAINT `resultados_lab_ibfk_1` FOREIGN KEY (`id_laboratorista`) REFERENCES `laboratoristas` (`id`),
  CONSTRAINT `resultados_lab_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `resultados_lab_ibfk_3` FOREIGN KEY (`id_analisis`) REFERENCES `analisis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.resultados_lab: ~31 rows (approximately)
/*!40000 ALTER TABLE `resultados_lab` DISABLE KEYS */;
INSERT INTO `resultados_lab` (`id`, `diagnostico`, `id_laboratorista`, `id_paciente`, `id_analisis`) VALUES
	(1, 'egestas ligula. Nullam feugiat placerat velit. Quisque varius.', 1, 4, 17),
	(2, 'dolor elit,', 4, 14, 29),
	(3, 'accumsan interdum', 4, 35, 5),
	(4, 'dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,', 1, 4, 23),
	(5, 'Mauris nulla. Integer urna. Vivamus molestie dapibus ligula.', 3, 14, 12),
	(6, 'id, erat. Etiam', 3, 21, 9),
	(7, 'Praesent eu nulla', 2, 26, 14),
	(8, 'facilisis. Suspendisse commodo', 1, 17, 5),
	(9, 'Etiam bibendum fermentum metus. Aenean', 3, 39, 24),
	(10, 'diam. Duis mi enim, condimentum eget, volutpat', 4, 39, 12),
	(11, 'vitae diam. Proin dolor.', 4, 11, 20),
	(12, 'tellus, imperdiet non, vestibulum', 4, 22, 32),
	(13, 'dui, in sodales elit erat vitae risus. Duis a mi', 3, 12, 31),
	(14, 'Class aptent taciti', 4, 34, 15),
	(15, 'libero lacus,', 3, 11, 9),
	(16, 'et malesuada', 4, 5, 3),
	(17, 'at pede. Cras vulputate', 1, 33, 3),
	(18, 'luctus et ultrices posuere cubilia Curae;', 3, 6, 9),
	(19, 'ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo', 2, 2, 34),
	(20, 'egestas blandit.', 1, 29, 16),
	(21, 'vitae mauris sit amet lorem semper auctor. Mauris vel', 1, 16, 34),
	(22, 'eu, euismod ac, fermentum vel, mauris. Integer', 2, 33, 27),
	(23, 'Duis', 3, 9, 2),
	(24, 'tellus eu', 2, 26, 9),
	(25, 'adipiscing fringilla, porttitor vulputate,', 4, 18, 16),
	(26, 'ullamcorper. Duis at lacus. Quisque purus', 4, 21, 11),
	(27, 'lectus. Cum sociis natoque', 2, 17, 14),
	(28, 'laoreet lectus quis', 3, 35, 11),
	(29, 'orci, consectetuer euismod est', 3, 32, 6),
	(30, 'luctus aliquet odio.', 2, 19, 14),
	(31, 'Duis at lacus. Quisque', 2, 26, 34);
/*!40000 ALTER TABLE `resultados_lab` ENABLE KEYS */;

-- Dumping structure for table safo.servicios_especiales
CREATE TABLE IF NOT EXISTS `servicios_especiales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `servicios_especiales_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.servicios_especiales: ~46 rows (approximately)
/*!40000 ALTER TABLE `servicios_especiales` DISABLE KEYS */;
INSERT INTO `servicios_especiales` (`id`, `id_paciente`, `descripcion`) VALUES
	(1, 9, 'condimentum. Donec at arcu. Vestibulum ante ipsum primis in'),
	(2, 2, 'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan'),
	(3, 3, 'sem ut cursus luctus, ipsum leo elementum sem,'),
	(4, 26, 'tincidunt dui augue'),
	(5, 8, 'sodales. Mauris'),
	(6, 3, 'metus. Aenean sed pede nec ante blandit viverra. Donec tempus,'),
	(7, 16, 'amet diam eu dolor egestas rhoncus. Proin'),
	(8, 30, 'tincidunt vehicula risus. Nulla eget metus eu erat'),
	(9, 1, 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,'),
	(10, 15, 'ultrices.'),
	(11, 3, 'libero est, congue'),
	(12, 8, 'et magnis dis parturient montes, nascetur ridiculus'),
	(13, 22, 'quis, pede. Praesent eu dui. Cum sociis natoque'),
	(14, 19, 'Lorem ipsum dolor sit amet, consectetuer adipiscing'),
	(15, 16, 'imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida'),
	(16, 9, 'tincidunt, neque vitae semper egestas, urna justo faucibus'),
	(17, 25, 'Nunc sollicitudin'),
	(18, 22, 'dis parturient montes, nascetur ridiculus mus. Aenean eget'),
	(19, 30, 'egestas rhoncus. Proin'),
	(20, 4, 'lobortis tellus justo sit amet nulla. Donec non justo. Proin'),
	(21, 28, 'vitae risus. Duis a mi fringilla'),
	(22, 1, 'neque sed sem egestas blandit. Nam nulla magna,'),
	(23, 5, 'Duis cursus, diam at'),
	(24, 16, 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
	(25, 7, 'Sed'),
	(26, 30, 'adipiscing lacus. Ut nec urna et arcu'),
	(27, 26, 'morbi tristique senectus et'),
	(28, 28, 'sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis,'),
	(29, 26, 'posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.'),
	(30, 4, 'sed dictum'),
	(31, 15, 'ornare lectus'),
	(32, 20, 'euismod ac, fermentum vel, mauris. Integer sem'),
	(33, 1, 'id, erat. Etiam vestibulum massa'),
	(34, 10, 'feugiat metus sit'),
	(35, 5, 'rhoncus. Donec est. Nunc ullamcorper, velit'),
	(36, 17, 'penatibus et magnis'),
	(37, 5, 'dapibus quam quis diam. Pellentesque habitant'),
	(38, 22, 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras'),
	(39, 1, 'pede. Cras vulputate'),
	(40, 1, 'eros turpis'),
	(41, 25, 'sociosqu ad'),
	(42, 17, 'eget tincidunt dui'),
	(43, 2, 'aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae'),
	(44, 23, 'natoque penatibus et magnis dis parturient'),
	(45, 19, 'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,'),
	(46, 30, 'Sed neque. Sed eget lacus.');
/*!40000 ALTER TABLE `servicios_especiales` ENABLE KEYS */;

-- Dumping structure for table safo.tratamientos
CREATE TABLE IF NOT EXISTS `tratamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `tratamientos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `tratamientos_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table safo.tratamientos: ~24 rows (approximately)
/*!40000 ALTER TABLE `tratamientos` DISABLE KEYS */;
INSERT INTO `tratamientos` (`id`, `id_paciente`, `id_medico`) VALUES
	(1, 29, 3),
	(2, 28, 3),
	(3, 27, 5),
	(4, 9, 5),
	(5, 9, 5),
	(6, 22, 8),
	(7, 3, 8),
	(8, 21, 8),
	(9, 7, 2),
	(10, 4, 1),
	(11, 2, 4),
	(12, 2, 4),
	(13, 13, 1),
	(14, 7, 8),
	(15, 8, 7),
	(16, 1, 1),
	(17, 21, 4),
	(18, 18, 8),
	(19, 2, 2),
	(20, 7, 4),
	(21, 1, 8),
	(22, 24, 8),
	(23, 10, 1),
	(24, 13, 1);
/*!40000 ALTER TABLE `tratamientos` ENABLE KEYS */;

-- Dumping structure for view safo.alergias_pacientes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `alergias_pacientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `alergias_pacientes` AS SELECT pacientes.id, alergias.nombre FROM alergias
	INNER JOIN pacientes_alergias
		ON alergias.id = pacientes_alergias.id_alergia
	INNER JOIN pacientes
		ON pacientes_alergias.id_paciente = pacientes.id ;

-- Dumping structure for view safo.consultas_medicamentos
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `consultas_medicamentos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `consultas_medicamentos` AS SELECT
		consultas.id AS 'id_consulta', medicos.id AS 'id_medico', pacientes_datos.id AS 'id_paciente',
		medicamentos_recetados.nombre_medicamento,
		consultas.fecha_hora, consultas.padecimiento,
		recetas.saludable, 
		medicos.nombre AS 'nombre_medico',
		pacientes_datos.nombre AS 'nombre_paciente', pacientes_datos.rfc, pacientes_datos.edad, pacientes_datos.peso, pacientes_datos.estatura
	FROM medicamentos_recetados
	LEFT JOIN recetas
		ON medicamentos_recetados.id_receta = recetas.id
	INNER JOIN consultas
		ON recetas.id_consulta = consultas.id
	INNER JOIN medicos
		ON consultas.id_medico = medicos.id
	INNER JOIN pacientes_datos
		ON consultas.id_paciente = pacientes_datos.id ;

-- Dumping structure for view safo.pacientes_datos
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pacientes_datos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `pacientes_datos` AS SELECT clientes.id, nombre, rfc, edad, peso, estatura FROM clientes
	INNER JOIN pacientes
		ON clientes.id = pacientes.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
