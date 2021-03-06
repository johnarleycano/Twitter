-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2017 a las 16:54:57
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `incidentes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dvm_usuarios`
--

CREATE TABLE `dvm_usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_clave` date NOT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT '',
  `firma` varchar(20) DEFAULT '',
  `enviar_correo` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dvm_usuarios`
--

INSERT INTO `dvm_usuarios` (`id`, `nombres`, `apellidos`, `login`, `clave`, `estado`, `fecha_creacion`, `fecha_clave`, `id_perfil`, `celular`, `correo`, `cedula`, `firma`, `enviar_correo`) VALUES
(11, 'Admin', 'Administrador', 'ADMIN', 'ADMIN', 'A', '2010-08-04', '2012-12-31', 0, '3116351203', 'diegofvargasg@gmail.com', '75098122', '', 'NO'),
(12, 'Claudia Patricia', 'CastaÃƒÂ±o Velasquez', 'CLAUDIA', '2602', 'A', '2010-08-06', '2017-01-30', 0, '3117123004', 'centralsos@devimed.com.co', '43759172', 'firma_12.jpg', 'NO'),
(14, 'MANUEL ', 'VICENTE ZULUAGA ', 'GERENCIA', 'GERENCIA', 'A', '2010-11-18', '2016-02-01', 1, '1', 'gerencia@devimed.com.co', '14', '', 'NO'),
(15, 'JHON JAIRO', 'OTALVARO GALLEGO', 'DIRTEC', 'DIRTEC', 'A', '2010-11-18', '2012-12-31', 1, '10', 'jotalvaro@devimed.com.co', '15', '', 'NO'),
(16, 'Ana Maria', 'Lopez Villada', 'ANAMARIA', 'JULIAN', 'A', '2010-11-18', '2012-03-30', 2, '7', '', '16', 'firma_16.jpg', 'NO'),
(17, 'DIANA CECILIA', 'VELASQUEZ', 'PREDIOS', 'PREDIOS', 'A', '2010-11-18', '2012-12-31', 1, '9', 'dvelasquez@devimed.com.co', '17', '', 'NO'),
(19, 'Biviana', 'Otalvaro Gallego', 'BIVIANA', '1234567', 'A', '2010-11-18', '2013-01-15', 2, '3146894900', 'centralsos@devimed', '39436076', 'firma_19.jpg', 'NO'),
(20, 'John Alexander', 'Agudelo Morales', 'Coordinador ', '12345', 'A', '2010-11-18', '2016-02-01', 3, '12', 'jagudelo@devimed.com.co', '20', 'firma_20.JPG', 'NO'),
(21, 'Aura Maria', 'Bedoya Velez', 'PALMAS', 'PALMAS', 'A', '2010-11-18', '2012-12-31', 3, '13', 'abedoya@devimed.com.co', '21', 'firma_21.PDF', 'NO'),
(22, 'Maria Cristina', 'Pérez Marulanda', 'CRISTINA', '43869001', 'A', '2010-11-18', '2013-04-05', 2, '', 'mcris023@hotmail.com', '43869001', 'firma_22.jpg', 'NO'),
(23, 'MARISOL', 'IDARRAGA', 'JURIDICA', 'JURIDICA', 'A', '2010-11-18', '2012-12-31', 1, '4', 'marijuridica@devimed.com.co', '23', '', 'NO'),
(24, 'MERLY IVON', 'GARCIA', 'ASISJURIDICA', 'ASISJURIDICA', 'A', '2010-11-18', '2012-12-31', 1, '5', 'ivonjuridica@devimed.com.co', '24', '', 'NO'),
(38, 'JUAN MANUEL ', 'MUÑOZ ', 'JUANMANUEL', '1234', 'A', '2012-10-17', '0000-00-00', 1, '30072304', 'jmunoz@devimed.com.co', '', '', 'NO'),
(26, 'Luis Gabriel', 'Zapata Obando', 'LZAPATA', '8125046', 'A', '2010-11-18', '2017-02-01', 3, '14', 'lzapata@devimed.com.co', '26', 'firma_26.jpg', 'NO'),
(27, 'Hernan', 'Gutierrez Isaza', 'SUBGERENCIA', 'HG', 'A', '2010-11-18', '2013-06-20', 1, '3108451261', 'hgutierrez@devimed.com.co', '8242306', '', 'NO'),
(28, 'Claudia Maria', 'Angarita Gomez', 'AMBIENTAL', 'GAMBIENTAL', 'A', '2010-11-18', '2013-10-23', 1, '3014318620', 'cangarita@devimed.com.co', '42881990', '', 'NO'),
(29, 'Carlos Mario ', 'Suarez Suarez', 'SANTUARIO', '1234', 'A', '2010-11-18', '2014-06-16', 3, '3007232302', 'csuarez@devimed.com.co', '32516957', 'firma_29.jpg', 'NO'),
(30, 'Johana Nayade', 'Sanchez Agudelo', 'TSOCIAL', '4444238', 'A', '2010-11-18', '2014-01-17', 1, '17', 'jsanchez@devimed.com.co', '30', '', 'NO'),
(31, 'Jose Alejandro', 'Saavedra Jurado', 'ALEJO', 'ALEJO', 'A', '2010-11-18', '2017-03-25', 0, '3006511870', 'jose.saavedra@devimed.com.co', '91272303', 'firma_31.jpg', 'NO'),
(32, 'Beatriz E.', 'Rios Maldonado', 'BEATRIZ', '5824713', 'A', '2010-11-22', '2017-03-01', 0, 'BEATRIZ', 'behelenrios@hotmail.com', '21738064', 'firma_32.jpg', 'NO'),
(33, 'Sandra', 'Aristizabal', 'SANDRA', 'CENTRALSOS', 'A', '2011-01-14', '2013-01-07', 2, '19', 'SARISTIZABAL@DEVIMED.COM.CO', '33', '', 'NO'),
(34, 'Central-Aura Maria ', 'SOS', 'CENTRAL', 'ABEDOYA', 'A', '2011-02-02', '2014-01-09', 0, '20', 'abedoya@devimed.com.co', '39186954', 'firma_34.JPG', 'NO'),
(37, 'Marcela Josefina', 'Lopez BolaÃ±os', 'MARCELA', '34543016', 'A', '2012-10-10', '2016-08-25', 2, '', 'centralsos@devimed.com', '34543016', 'firma_37.PDF', 'NO'),
(39, 'Nicolas', 'Cardona ', 'APOYO', '3861434', 'A', '2013-07-05', '2013-07-05', 2, '', 'abedoya@devimed.com.co', '', '', 'NO'),
(40, 'natalia', 'Arango Gomez', 'COPACABANA', '12345', 'A', '2013-12-26', '2017-03-01', 1, '3217778747', 'narango@covialsa.net', '32106496', '', 'NO'),
(41, 'ANDRES', 'DELGADO', 'ANDRES', '98621059', 'I', '2014-01-17', '2016-04-02', 1, '3217777530', 'adelgado@devimed.com.co', '98621059', '', 'NO'),
(42, 'Angelica', 'Lopez Mayo', 'ANGELICA', '0306', 'A', '2014-03-20', '2016-10-04', 2, '3206867824', 'lopez.mayo@hotmail.com', '22011822', 'firma_42.jpg', 'NO'),
(43, 'Viviana', 'Alvarez Zapata', 'VIVI', '1036780819', 'A', '2014-09-10', '2016-06-07', 2, '3148200934', 'central@devimed.com.co', '1036780819', 'firma_43.jpg', 'NO'),
(59, 'Flor Marina', 'Osorio Garcia', 'FLOR', '1234567', 'A', '2017-01-31', '2017-03-01', 2, '', '', '39188400', 'firma_59.jpg', 'NO'),
(44, 'Juan David', 'Betancur Taborda', 'JBETANCUR', '1234', 'A', '2015-01-19', '2017-03-01', 3, '3217777498', 'jbetancur@devimed.com.co', '1020426436', 'firma_44.jpg', 'NO'),
(45, 'Jeferson', 'Gomez Forero', 'JEFERSON', '12345', 'I', '2015-02-12', '2017-03-01', 3, '3217110071', 'jgomez@devimed.com.co', '8100460', 'firma_45.jpg', 'NO'),
(46, 'Natalia', 'Arango Gomez', 'NATALIARANGO', 'DEVIMED2015', 'A', '2015-04-07', '2017-03-01', 3, '', 'narango@devimed.com.co', '', '', 'NO'),
(47, 'Ronald', 'Castrillon', 'RCASTRILLON', '54321', 'A', '2015-04-22', '2017-03-01', 3, '3002380928', 'rcastrillon@devimed.com.co', '1037590187', 'firma_47.jpg', 'NO'),
(48, 'Yonny', 'Carmona', 'YCARMONA', 'd2v3m2d', 'A', '2015-08-30', '2017-03-01', 3, '', 'ycarmona@devimed.com.co', '', 'firma_48.jpg', 'NO'),
(49, 'Alexander', 'Henao', 'AHENAO', 'devimed3', 'A', '2015-08-30', '2017-03-01', 3, '', 'ahenao@devimed.com.co', '', 'firma_49.jpg', 'NO'),
(50, 'Juan Jacobo', 'Zuluaga', 'JZULUAGA', 'AVSECTOR1', 'A', '2015-08-30', '2017-03-01', 3, '3147908219', 'jjzuluaga@devimed.com.co', '1053787982', 'firma_50.jpg', 'NO'),
(51, 'Natalia Andrea', 'Ramirez Marin', 'NATALIA', '43908730', 'A', '2015-09-04', '2016-04-07', 2, '3135746182', 'centralsos@devimed.com.co', '43908730', 'firma_51.jpg', 'NO'),
(52, 'Oscar Orlando', 'Bustos Chacon', 'OBUSTOS', '12345', 'A', '2016-03-16', '2016-10-20', 3, '3002380920', 'obustos@devimed.com.co', '', 'firma_52.jpg', 'NO'),
(53, 'Jose Augusto', 'Gonzalez Arenas', 'JGONZALEZ', 'jose6465531', 'A', '2016-04-02', '2017-03-01', 3, '3217777498', 'jgonzalez@devimed.com.co', '1.095.924.967', 'firma_53.jpg', 'NO'),
(54, 'Ivan', 'Gallego', 'IGALLEGO', 'devimed2016', 'A', '2016-04-02', '2017-03-01', 3, '3217777555', 'igallego@devimed.com.co', '', 'firma_54.jpeg', 'NO'),
(55, 'Jamie Andres', 'Parra Osorio', 'APARRA', 'yapon131804', 'A', '2016-04-02', '2017-03-01', 3, '', 'aparra@devimed.com.co', '', 'firma_55.jpg', 'NO'),
(56, '', '', 'ADMINP', 'ADMINP', 'A', '2016-07-25', '2016-07-25', 3, '', '', '', '', 'NO'),
(57, 'Liliana Andrea', 'Neira', 'LILIANA', 'Liliana', 'A', '2016-12-19', '2017-03-09', 2, '', '', '', '', 'NO'),
(58, 'Paola Andrea', 'Lopez Manco', 'PAOLA', '1234567', 'A', '2017-01-24', '2017-01-25', 2, '', '', '1017144402', 'firma_58.jpg', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_ubicaciones`
--

CREATE TABLE `lista_ubicaciones` (
  `id_ubicaciones` int(11) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `id_vias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lista_ubicaciones`
--

INSERT INTO `lista_ubicaciones` (`id_ubicaciones`, `ubicacion`, `id_vias`) VALUES
(1, 'EDS Los Angeles', 1),
(2, 'Holcim', 1),
(3, 'Bomba Mobil La Cantera', 1),
(4, 'Retorno No.1(Santa Rita)', 1),
(5, 'Canteras de Colombia-Argos', 1),
(6, 'Puente Quebrada Seca', 1),
(7, ' Báscula', 1),
(8, 'Puente Curva de Rodas', 1),
(9, 'Entrada Manantiales ', 1),
(10, 'Retorno el Llano', 1),
(11, 'El Túnel', 1),
(12, 'Peaje de Copacabana', 1),
(13, 'Puente Piedras Blancas', 1),
(14, 'Escuela Carlos Mesa', 1),
(15, 'Retorno No.4 El Cabuyal', 1),
(16, 'El Túnel-k13', 1),
(17, 'Peñolcito', 1),
(18, 'Almojábanas J.J. ', 1),
(19, 'Retorno #5 Guarne', 1),
(20, 'El Retorno', 1),
(21, 'Escuela El Romeral  ', 1),
(22, 'Terpel La Garota', 1),
(23, 'Puente Peatonal Azúl', 1),
(24, 'EDS Distracon El Sango', 1),
(25, 'Puente Peatonal Rojo', 1),
(26, 'EDS Bonanza', 1),
(27, 'Intercambio Vial Guarne ', 1),
(28, 'EDS Santa Lucia', 1),
(29, 'T Aeropuerto ', 1),
(30, 'Retorno No.7', 1),
(31, 'EDS Ciudadela', 1),
(32, 'Rancherito', 1),
(33, 'Puente Peatonal Azúl', 1),
(34, 'Retorno No.9', 1),
(35, 'Puente Peatonal morado', 1),
(36, 'Retorno No. 10', 1),
(37, 'Retorno No.11', 1),
(38, 'Retorno No.12 La Playa', 1),
(39, 'Retorno No. 13 La Laja', 1),
(40, 'Intercambio Vial Belén', 1),
(41, 'Puente Río Negro', 1),
(42, 'Retorno Industriales', 1),
(43, 'EDS Los Pinos-Faro de la Marinilla', 1),
(44, 'Intercambio Vial Cascajo', 1),
(45, 'Cementerio Marinilla', 1),
(46, 'Puente Bella Vista', 1),
(47, 'Estación de Servicio El Cordobés', 1),
(48, 'Planta de Cales EDA', 1),
(49, 'El Llanerito', 1),
(50, 'Cornare', 1),
(52, 'Puente Peatonal', 2),
(53, 'Restaurante La Mayoría', 2),
(54, 'Estación de Peaje ', 2),
(55, 'Alto bonito', 2),
(56, 'Puente La Perla', 2),
(57, 'Puente El Viao', 2),
(58, 'Puente La Hundida', 2),
(59, 'Capilla Santa Cruz', 2),
(60, 'Puente Río Cocorná', 2),
(61, 'Puente La Dolores I ', 2),
(62, 'Chagualá  Hosteria', 2),
(63, 'La Diamantina', 2),
(64, 'Restaurante La Gallinita', 2),
(65, 'La Piñuela', 2),
(66, '2A Entrada Cocorná', 2),
(67, 'El Borojo', 2),
(68, 'La Mañosa', 2),
(69, 'Puente La Granja/Sector el 90', 2),
(70, 'Puente Calderas I ', 2),
(71, 'Puente El Silencio I ', 2),
(72, 'Puente Vallesol', 2),
(73, 'Puente La Tebaida', 2),
(74, 'Puente La linda', 2),
(75, 'Puente La Habana', 2),
(76, 'Parador Los Aragones ', 2),
(77, 'Puente Filo de Hambre', 2),
(78, 'San Luis/El Cruce', 2),
(79, 'Puente Río Dormilón', 2),
(80, 'Puente Río Samaná', 2),
(81, 'Puente La Leticia', 2),
(82, 'Carpa Azúl', 2),
(83, ' La Josefina', 2),
(84, 'Estación de servicio Monteloro', 2),
(85, 'Entrada El Prodigio', 2),
(86, 'Puente Seco', 2),
(87, 'Alto de Pavas', 2),
(88, 'Puente La Suiza', 2),
(89, 'Estación de Servicio Rioclaro', 2),
(90, 'Planta Cementos Argos', 2),
(91, 'Gruta El Condor', 2),
(92, 'Sector Campo Godoy', 2),
(93, 'Hotel Los Colores', 2),
(94, 'La Danta', 2),
(95, 'Tres Ranchos', 2),
(96, 'Las Mercedes', 2),
(97, 'Puente Las Mercedes', 2),
(98, 'Escuela Alto del pollo', 2),
(99, 'Hotel Campo Verde', 2),
(100, 'EDS La Palma', 2),
(101, 'YAHAYA', 2),
(102, 'San Miguel', 2),
(103, 'Hacienda Nápoles', 2),
(104, 'Puerto Triunfo-Santiago ', 2),
(105, 'Puente La Paz Río Magdalena', 2),
(106, 'Estación de Servicio Nueva  Arizona ', 2),
(107, 'Peaje de Puerto Triunfo', 2),
(108, 'Entrada Relleno Sanitario Pto. Boyacá', 2),
(109, 'Inicia Glorieta Caño Alegre', 2),
(110, 'Fonda San José', 3),
(111, 'Vivero Rosarte', 3),
(112, 'Escuela La Mosquita', 3),
(113, 'Poste SOS No 6', 3),
(114, 'Escuela de tiro Jose Maria Cordova', 3),
(115, 'EDS Jose Maria Cordova', 3),
(116, 'Glorieta Aeropuerto', 3),
(117, 'Hotel Las Lomas', 3),
(118, 'Hospital San Vicente de Paul', 3),
(119, 'Cruce El Tablazo-Rionegro', 3),
(120, 'Policia Llanogrande', 3),
(121, 'Cruce Llanogrande - Monumento Gilberto Echeverri', 3),
(122, 'Cruce con carrera 13', 6),
(123, 'Viva La Ceja', 6),
(124, 'Estación EE. PP ', 6),
(125, 'Glorieta Yegüerizo hacia Rionegro', 6),
(126, 'Curva del Diablo-Hacienda El Capiro', 6),
(127, 'Sector Canta Rana/Parc Martalak', 6),
(128, 'El  Yarumo', 6),
(129, 'San judas', 6),
(130, 'Tienda El Crucero/La Merced', 6),
(131, 'El Canada', 6),
(132, 'Hotel toscana', 6),
(133, 'EDS Quirama', 6),
(134, 'Universidad de Antioquia/Retorno', 6),
(135, 'Recinto Quirama-Parcelación La Pradera', 6),
(136, ' Kakaraka', 6),
(137, ' San Antonio ', 6),
(138, 'San Bartolo', 6),
(139, 'Parque San Antonio', 6),
(140, 'Braza y Leña/La Saye', 6),
(141, 'Club Comfama', 6),
(142, 'Glorieta Comfama-Somer', 6),
(143, 'Ferretería Casa Verde', 7),
(144, 'Los Patos', 7),
(145, 'Urbanización entre Bosques la Luz', 7),
(146, 'Estación de Servicio Esso/Macedonia', 7),
(147, 'Muebles San Antonio', 7),
(148, 'Puro Cuero', 7),
(149, 'La Macarena', 10),
(150, 'Granja Avinal', 10),
(151, 'Dulces de Colombia', 10),
(152, 'Alto Las Garzonas', 10),
(153, 'Vivero Andalucia', 10),
(154, 'Mundo Limpio', 10),
(155, 'Alto los Pinos', 10),
(156, 'Estación de servicio Esso', 10),
(157, 'EDS Los Angeles', 9),
(158, 'Holcim', 9),
(159, 'Bomba Mobil La Cantera', 9),
(160, 'Retorno No.1(Santa Rita)', 9),
(161, 'Canteras de Colombia-Argos', 9),
(162, 'Puente Quebrada Seca', 9),
(163, ' Báscula', 9),
(164, 'Puente entrada a Curva de Rodas', 9),
(165, 'Entrada Manantiales ', 9),
(166, 'Retorno el Llano', 9),
(167, 'El Túnel', 9),
(168, 'Peaje de Copacabana', 9),
(169, 'Puente Piedras Blancas', 9),
(170, 'Escuela Carlos Mesa', 9),
(171, 'Retorno No.4 El Cabuyal', 9),
(172, 'El Túnel', 9),
(173, 'Peñolcito', 9),
(174, 'Almojábanas J.J. ', 9),
(175, 'Retorno #5 Guarne ', 9),
(176, 'El Retorno', 9),
(177, 'Puente Peatonal Amarillo escuela El Romeral  ', 9),
(178, 'Bomba Terpel La Garota', 9),
(179, 'Puente Peatonal Azúl', 9),
(180, 'EDS Distracon El Sango', 9),
(181, 'Puente Peatonal Rojo', 9),
(182, 'EDS Bonanza', 9),
(183, 'Intercambio Vial Guarne ', 9),
(184, 'EDS Santa Lucia', 9),
(185, 'T Aeropuerto ', 9),
(186, 'Retorno No.7', 9),
(187, 'EDS Ciudadela', 9),
(188, 'Rancherito', 9),
(189, 'Puente Peatonal Azúl', 9),
(190, 'Retorno No.9', 9),
(191, 'Puente Peatonal morado', 9),
(192, 'Retorno No. 10', 9),
(193, 'Retorno No.11', 9),
(194, 'Retorno No.12 La Playa', 9),
(195, 'Retorno No. 13 La Laja', 9),
(196, 'Intercambio Vial Belén', 9),
(197, 'Puente Río Negro', 9),
(198, 'Retorno Industriales', 9),
(199, 'EDS Los Pinos-Faro de la Marinilla', 9),
(200, 'Intercambio Vial Cascajo', 9),
(201, 'Cementerio Marinilla', 9),
(202, 'Puente Bella Vista', 9),
(203, 'Estación de Servicio El Cordobés', 9),
(204, 'Planta de Cales EDA', 9),
(205, 'El Llanerito', 9),
(206, 'Cornare', 9),
(207, 'Glorieta Variante Palmas', 4),
(208, 'Peaje Palmas', 4),
(209, 'Entrada Peaje Envigado', 4),
(210, 'Colegio Vermont', 4),
(211, 'Sector Carrizales', 4),
(212, 'El Ventiadero/ Firulai/ Palo Quemao', 4),
(213, 'Parque los Salados', 4),
(214, 'Mall Carabanchel /Exito /EDS Carabanchel', 4),
(215, 'Centro Comercial La Fé', 4),
(216, 'Glorieta Don Diego', 5),
(217, 'Salto El Tequendamita', 5),
(218, 'El Portento', 5),
(219, 'El Chuscal', 5),
(220, 'Seminario San Peregrino', 5),
(221, 'Alto del Nano ', 5),
(222, ' El Tabor', 5),
(223, 'Parcelación Pastora', 5),
(224, 'Parcelación La Esmeralda', 5),
(225, 'Cantera La Peña', 5),
(226, 'Unidad Deportiva', 5),
(227, 'Estación Serv. La Unión', 5),
(228, 'EDS Don Diego ', 8),
(229, 'Vivero Tierra Negra', 8),
(230, 'Universidad Eafit ', 8),
(231, 'Entrada El Tablazo', 8),
(232, 'Colegio Domingo Savio/Don Bosco', 8),
(233, 'EDS Llanogrande', 8),
(234, 'Mall Llanogrande/carulla', 8),
(235, 'Corpoica', 8),
(236, ' Plaza Linares', 8),
(237, 'la Amalita ', 8),
(238, 'Entrada San Antonio/EDS San Antonio', 8),
(239, 'Mall Comercial Gualanday', 8),
(240, 'Tutucán', 8),
(241, 'Calle de la Madera', 8),
(242, 'Altos de la Pereira', 8),
(243, 'Estadio Rionegro', 8),
(244, 'U. Católica de Oriente', 8),
(245, 'Glorieta Hacia El Carmen y Marinilla', 8),
(246, 'Club Campestre La Macarena', 8),
(247, 'Colegio San Nicolás', 8),
(248, 'Yegüerizo-La Unión ', 11),
(249, 'Yegüerizo-Rionegro', 11),
(250, 'Glorieta Don Diego', 4),
(251, 'Peñolcito', 12),
(252, 'Peñolcito', 18),
(253, 'EDS Los Angeles', 12),
(254, 'Holcim', 12),
(255, 'Bomba Mobil La Cantera', 12),
(256, 'Retorno No.1(Santa Rita)', 12),
(257, 'Canteras de Colombia-Argos', 12),
(258, 'Puente Quebrada Seca', 12),
(259, ' Báscula', 12),
(260, 'Puente Curva de Rodas', 12),
(261, 'Entrada Manantiales ', 12),
(262, 'Retorno el Llano', 12),
(263, 'El Túnel', 12),
(264, 'Peaje de Copacabana', 12),
(265, 'Puente Piedras Blancas', 12),
(266, 'Escuela Carlos Mesa', 12),
(267, 'Retorno No.4 El Cabuyal', 12),
(268, 'El Túnel-k13', 12),
(269, 'Peñolcito', 12),
(270, 'Almojábanas J.J. ', 12),
(271, 'Retorno #5 Guarne', 12),
(272, 'El Retorno', 12),
(273, 'Escuela El Romeral  ', 12),
(274, 'Terpel La Garota', 12),
(275, 'Puente Peatonal Azúl', 12),
(276, 'EDS Distracon El Sango', 12),
(277, 'Puente Peatonal Rojo', 12),
(278, 'EDS Bonanza', 12),
(279, 'Intercambio Vial Guarne ', 12),
(280, 'EDS Santa Lucia', 12),
(281, 'T Aeropuerto ', 12),
(282, 'Retorno No.7', 12),
(283, 'EDS Ciudadela', 12),
(284, 'Rancherito', 12),
(285, 'Puente Peatonal Azúl', 12),
(286, 'Retorno No.9', 12),
(287, 'Puente Peatonal morado', 12),
(288, 'Retorno No. 10', 12),
(289, 'Retorno No.11', 12),
(290, 'Retorno No.12 La Playa', 12),
(291, 'Retorno No. 13 La Laja', 12),
(292, 'Intercambio Vial Belén', 12),
(293, 'Puente Río Negro', 12),
(294, 'Retorno Industriales', 12),
(295, 'EDS Los Pinos-Faro de la Marinilla', 12),
(296, 'Intercambio Vial Cascajo', 12),
(297, 'Cementerio Marinilla', 12),
(298, 'Puente Bella Vista', 12),
(299, 'Estación de Servicio El Cordobés', 12),
(300, 'Planta de Cales EDA', 12),
(301, 'El Llanerito', 12),
(302, 'Cornare', 12),
(304, 'EDS Los Angeles', 13),
(305, 'Holcim', 13),
(306, 'Bomba Mobil La Cantera', 13),
(307, 'Retorno No.1(Santa Rita)', 13),
(308, 'Canteras de Colombia-Argos', 13),
(309, 'Puente Quebrada Seca', 13),
(310, ' Báscula', 13),
(311, 'Puente Curva de Rodas', 13),
(312, 'Entrada Manantiales ', 13),
(313, 'Retorno el Llano', 13),
(314, 'El Túnel', 13),
(315, 'Peaje de Copacabana', 13),
(316, 'Puente Piedras Blancas', 13),
(317, 'Escuela Carlos Mesa', 13),
(318, 'Retorno No.4 El Cabuyal', 13),
(319, 'El Túnel-k13', 13),
(320, 'Peñolcito', 13),
(321, 'Almojábanas J.J. ', 13),
(322, 'Retorno #5 Guarne', 13),
(323, 'El Retorno', 13),
(324, 'Escuela El Romeral  ', 13),
(325, 'Terpel La Garota', 13),
(326, 'Puente Peatonal Azúl', 13),
(327, 'EDS Distracon El Sango', 13),
(328, 'Puente Peatonal Rojo', 13),
(329, 'EDS Bonanza', 13),
(330, 'Intercambio Vial Guarne ', 13),
(331, 'EDS Santa Lucia', 13),
(332, 'T Aeropuerto ', 13),
(333, 'Retorno No.7', 13),
(334, 'EDS Ciudadela', 13),
(335, 'Rancherito', 13),
(336, 'Puente Peatonal Azúl', 13),
(337, 'Retorno No.9', 13),
(338, 'Puente Peatonal morado', 13),
(339, 'Retorno No. 10', 13),
(340, 'Retorno No.11', 13),
(341, 'Retorno No.12 La Playa', 13),
(342, 'Retorno No. 13 La Laja', 13),
(343, 'Intercambio Vial Belén', 13),
(344, 'Puente Río Negro', 13),
(345, 'Retorno Industriales', 13),
(346, 'EDS Los Pinos-Faro de la Marinilla', 13),
(347, 'Intercambio Vial Cascajo', 13),
(348, 'Cementerio Marinilla', 13),
(349, 'Puente Bella Vista', 13),
(350, 'Estación de Servicio El Cordobés', 13),
(351, 'Planta de Cales EDA', 13),
(352, 'El Llanerito', 13),
(353, 'Cornare', 13),
(504, 'EDS Los Angeles', 18),
(505, 'Holcim', 18),
(506, 'Bomba Mobil La Cantera', 18),
(507, 'Retorno No.1(Santa Rita)', 18),
(508, 'Canteras de Colombia-Argos', 18),
(509, 'Puente Quebrada Seca', 18),
(510, ' Báscula', 18),
(511, 'Puente entrada a Curva de Rodas', 18),
(512, 'Entrada Manantiales ', 18),
(513, 'Retorno el Llano', 18),
(514, 'El Túnel', 18),
(515, 'Peaje de Copacabana', 18),
(516, 'Puente Piedras Blancas', 18),
(517, 'Escuela Carlos Mesa', 18),
(518, 'Retorno No.4 El Cabuyal', 18),
(519, 'El Túnel', 18),
(520, 'Peñolcito', 18),
(521, 'Almojábanas J.J. ', 18),
(522, 'Retorno #5 Guarne ', 18),
(523, 'El Retorno', 18),
(524, 'Puente Peatonal Amarillo escuela El Romeral  ', 18),
(525, 'Bomba Terpel La Garota', 18),
(526, 'Puente Peatonal Azúl', 18),
(527, 'EDS Distracon El Sango', 18),
(528, 'Puente Peatonal Rojo', 18),
(529, 'EDS Bonanza', 18),
(530, 'Intercambio Vial Guarne ', 18),
(531, 'EDS Santa Lucia', 18),
(532, 'T Aeropuerto ', 18),
(533, 'Retorno No.7', 18),
(534, 'EDS Ciudadela', 18),
(535, 'Rancherito', 18),
(536, 'Puente Peatonal Azúl', 18),
(537, 'Retorno No.9', 18),
(538, 'Puente Peatonal morado', 18),
(539, 'Retorno No. 10', 18),
(540, 'Retorno No.11', 18),
(541, 'Retorno No.12 La Playa', 18),
(542, 'Retorno No. 13 La Laja', 18),
(543, 'Intercambio Vial Belén', 18),
(544, 'Puente Río Negro', 18),
(545, 'Retorno Industriales', 18),
(546, 'EDS Los Pinos-Faro de la Marinilla', 18),
(547, 'Intercambio Vial Cascajo', 18),
(548, 'Cementerio Marinilla', 18),
(549, 'Puente Bella Vista', 18),
(550, 'Estación de Servicio El Cordobés', 18),
(551, 'Planta de Cales EDA', 18),
(552, 'El Llanerito', 18),
(553, 'Cornare', 18),
(554, 'EDS Los Angeles', 19),
(555, 'Holcim', 19),
(556, 'Bomba Mobil La Cantera', 19),
(557, 'Retorno No.1(Santa Rita)', 19),
(558, 'Canteras de Colombia-Argos', 19),
(559, 'Puente Quebrada Seca', 19),
(560, ' Báscula', 19),
(561, 'Puente entrada a Curva de Rodas', 19),
(562, 'Entrada Manantiales ', 19),
(563, 'Retorno el Llano', 19),
(564, 'El Túnel', 19),
(565, 'Peaje de Copacabana', 19),
(566, 'Puente Piedras Blancas', 19),
(567, 'Escuela Carlos Mesa', 19),
(568, 'Retorno No.4 El Cabuyal', 19),
(569, 'El Túnel', 19),
(570, 'Peñolcito', 19),
(571, 'Almojábanas J.J. ', 19),
(572, 'Retorno #5 Guarne ', 19),
(573, 'El Retorno', 19),
(574, 'Puente Peatonal Amarillo escuela El Romeral  ', 19),
(575, 'Bomba Terpel La Garota', 19),
(576, 'Puente Peatonal Azúl', 19),
(577, 'EDS Distracon El Sango', 19),
(578, 'Puente Peatonal Rojo', 19),
(579, 'EDS Bonanza', 19),
(580, 'Intercambio Vial Guarne ', 19),
(581, 'EDS Santa Lucia', 19),
(582, 'T Aeropuerto ', 19),
(583, 'Retorno No.7', 19),
(584, 'EDS Ciudadela', 19),
(585, 'Rancherito', 19),
(586, 'Puente Peatonal Azúl', 19),
(587, 'Retorno No.9', 19),
(588, 'Puente Peatonal morado', 19),
(589, 'Retorno No. 10', 19),
(590, 'Retorno No.11', 19),
(591, 'Retorno No.12 La Playa', 19),
(592, 'Retorno No. 13 La Laja', 19),
(593, 'Intercambio Vial Belén', 19),
(594, 'Puente Río Negro', 19),
(595, 'Retorno Industriales', 19),
(596, 'EDS Los Pinos-Faro de la Marinilla', 19),
(597, 'Intercambio Vial Cascajo', 19),
(598, 'Cementerio Marinilla', 19),
(599, 'Puente Bella Vista', 19),
(600, 'Estación de Servicio El Cordobés', 19),
(601, 'Planta de Cales EDA', 19),
(602, 'El Llanerito', 19),
(603, 'Cornare', 19),
(604, 'EDS Los Angeles', 20),
(605, 'Holcim', 20),
(606, 'Bomba Mobil La Cantera', 20),
(607, 'Retorno No.1(Santa Rita)', 20),
(608, 'Canteras de Colombia-Argos', 20),
(609, 'Puente Quebrada Seca', 20),
(610, ' Báscula', 20),
(611, 'Puente entrada a Curva de Rodas', 20),
(612, 'Entrada Manantiales ', 20),
(613, 'Retorno el Llano', 20),
(614, 'El Túnel', 20),
(615, 'Peaje de Copacabana', 20),
(616, 'Puente Piedras Blancas', 20),
(617, 'Escuela Carlos Mesa', 20),
(618, 'Retorno No.4 El Cabuyal', 20),
(619, 'El Túnel', 20),
(620, 'Peñolcito', 20),
(621, 'Almojábanas J.J. ', 20),
(622, 'Retorno #5 Guarne ', 20),
(623, 'El Retorno', 20),
(624, 'Puente Peatonal Amarillo escuela El Romeral  ', 20),
(625, 'Bomba Terpel La Garota', 20),
(626, 'Puente Peatonal Azúl', 20),
(627, 'EDS Distracon El Sango', 20),
(628, 'Puente Peatonal Rojo', 20),
(629, 'EDS Bonanza', 20),
(630, 'Intercambio Vial Guarne ', 20),
(631, 'EDS Santa Lucia', 20),
(632, 'T Aeropuerto ', 20),
(633, 'Retorno No.7', 20),
(634, 'EDS Ciudadela', 20),
(635, 'Rancherito', 20),
(636, 'Puente Peatonal Azúl', 20),
(637, 'Retorno No.9', 20),
(638, 'Puente Peatonal morado', 20),
(639, 'Retorno No. 10', 20),
(640, 'Retorno No.11', 20),
(641, 'Retorno No.12 La Playa', 20),
(642, 'Retorno No. 13 La Laja', 20),
(643, 'Intercambio Vial Belén', 20),
(644, 'Puente Río Negro', 20),
(645, 'Retorno Industriales', 20),
(646, 'EDS Los Pinos-Faro de la Marinilla', 20),
(647, 'Intercambio Vial Cascajo', 20),
(648, 'Cementerio Marinilla', 20),
(649, 'Puente Bella Vista', 20),
(650, 'Estación de Servicio El Cordobés', 20),
(651, 'Planta de Cales EDA', 20),
(652, 'El Llanerito', 20),
(653, 'Cornare', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_vias`
--

CREATE TABLE `lista_vias` (
  `id` int(11) NOT NULL,
  `via` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lista_vias`
--

INSERT INTO `lista_vias` (`id`, `via`) VALUES
(1, 'CALZADA MEDELLÍN - BOGOTÁ'),
(2, 'El SANTUARIO-CAÑO ALEGRE'),
(3, 'T AEROPUERTO-LLANOGRANDE'),
(4, 'GLORIETA PALMAS-DON DIEGO'),
(5, 'LA CEJA-LA UNION'),
(6, 'LA CEJA -RIONEGRO'),
(7, 'LA FE-EL RETIRO'),
(8, 'DON DIEGO- RIONEGRO'),
(9, 'CALZADA BOGOTÁ-MEDELLÍN'),
(10, 'RIONEGRO-EL CARMEN DE V.'),
(11, 'YEGÜERIZO'),
(12, 'ZAMORA-ALTO DE LA VIRGEN'),
(13, 'ALTO DE LA VIRGEN-HIPODROMO'),
(16, 'HIPODROMO-EL SANTUARIO'),
(18, 'ALTO DE LA VIRGEN-ZAMORA'),
(19, 'HIPODROMO-ALTO DE LA VIRGEN'),
(20, 'EL SANTUARIO-HIPODROMO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dvm_usuarios`
--
ALTER TABLE `dvm_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lista_ubicaciones`
--
ALTER TABLE `lista_ubicaciones`
  ADD PRIMARY KEY (`id_ubicaciones`);

--
-- Indices de la tabla `lista_vias`
--
ALTER TABLE `lista_vias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dvm_usuarios`
--
ALTER TABLE `dvm_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `lista_ubicaciones`
--
ALTER TABLE `lista_ubicaciones`
  MODIFY `id_ubicaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;
--
-- AUTO_INCREMENT de la tabla `lista_vias`
--
ALTER TABLE `lista_vias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
