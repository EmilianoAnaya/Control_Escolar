-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         11.3.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla control_escolar.administradores
CREATE TABLE IF NOT EXISTS `administradores` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `paterno` varchar(128) NOT NULL,
  `materno` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.administradores: ~8 rows (aproximadamente)
DELETE FROM `administradores`;
INSERT INTO `administradores` (`id_admin`, `nombre`, `paterno`, `materno`, `username`, `password`, `status`) VALUES
	(1, 'Gael Emiliano', 'Anaya', 'Garcia', 'ZGrupo115@admin.com', 'bas019efE%', 1),
	(2, 'Jair Antonio', 'Anaya', 'Garcia', 'Jairsupremo90@admin.com', 'hsBW6erDY@', 1),
	(3, 'Jorge', 'Anaya', 'Garcia', 'Billyork69@admin.com', 'LosAngeles87!', 1),
	(4, 'Julio David', 'Lorenzo', 'Garcia', 'ZGrupo935@admin.com', 'qw123df4wQ$', 1),
	(5, 'Oscar Julio', 'Alferez', 'Orozco', 'oscar.julio@admin.com', 'bas10EF$fawd', 0),
	(6, 'Jorge', 'Orozco', 'Garcia', 'zaslav.shet@admin.com', 'basFR5#$R', 1),
	(7, 'Emiliano', 'Anaya', 'Garcia', 'zgrupo@admin.com', 'FDEW543t$%T', 1),
	(8, 'Gael', 'Salas', 'Garcia', 'lamomia3000@admin.com', 'buiawd$Y%G67', 1);

-- Volcando estructura para tabla control_escolar.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `paterno` varchar(128) NOT NULL,
  `materno` varchar(128) NOT NULL,
  `nacimiento` date NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `prerregistro` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_alumno`),
  KEY `id_carrera` (`id_carrera`),
  CONSTRAINT `id_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.alumnos: ~34 rows (aproximadamente)
DELETE FROM `alumnos`;
INSERT INTO `alumnos` (`id_alumno`, `nombre`, `paterno`, `materno`, `nacimiento`, `username`, `password`, `id_carrera`, `id_grupo`, `status`, `prerregistro`) VALUES
	(1, 'Santino', 'Barocio', 'Orozco', '2001-11-15', 'santino.alexandro@alumnos.com', 'GF$%fg3d4fd$F#', 2, 0, 1, 1),
	(2, 'Gael Emiliano', 'Anaya', 'Garcia', '2003-05-19', 'gael.anaya@alumnos.com', 'bas019efE7$', 1, 1, 1, 1),
	(3, 'Juan', 'García', 'López', '2005-05-10', 'juang@alumnos.com', 'password123', 1, 0, 1, 1),
	(4, 'María', 'Martínez', 'Rodríguez', '2006-02-15', 'mariam@alumnos.com', 'password456', 1, 0, 1, 1),
	(5, 'Carlos', 'Hernández', 'Pérez', '2004-08-20', 'carlosh@alumnos.com', 'password789', 1, 3, 1, 1),
	(6, 'Laura', 'González', 'Sánchez', '2007-11-25', 'laurag@alumnos.com', 'passwordabc', 1, 2, 1, 1),
	(7, 'Pedro', 'Díaz', 'Martínez', '2003-04-30', 'pedrod@alumnos.com', 'passworddef', 1, 3, 1, 1),
	(8, 'Ana', 'Pérez', 'Gómez', '2006-07-18', 'anap@alumnos.com', 'passwordghi', 1, 0, 1, 1),
	(9, 'David', 'Rodríguez', 'López', '2004-10-05', 'davidd@alumnos.com', 'passwordjkl', 1, 1, 1, 1),
	(10, 'Marta', 'Sánchez', 'Martínez', '2005-12-12', 'martas@alumnos.com', 'passwordmno', 1, 0, 1, 1),
	(11, 'Sergio', 'Gómez', 'Ruiz', '2003-09-08', 'sergiog@alumnos.com', 'passwordpqr', 1, 0, 1, 1),
	(12, 'Elena', 'López', 'Hernández', '2007-01-20', 'elenal@alumnos.com', 'passwordstu', 1, 0, 1, 1),
	(13, 'Pablo', 'Martínez', 'García', '2006-08-07', 'pablom@alumnos.com', 'passwordvwx', 1, 0, 1, 1),
	(14, 'Julia', 'Fernández', 'Pérez', '2004-03-15', 'juliaf@alumnos.com', 'passwordyz', 1, 1, 1, 1),
	(15, 'Andrés', 'Ruiz', 'García', '2005-06-22', 'andresr@alumnos.com', 'password1234', 1, 0, 1, 1),
	(16, 'Beatriz', 'López', 'Pérez', '2003-11-28', 'beatrizl@alumnos.com', 'password5678', 1, 0, 0, 1),
	(17, 'Francisco', 'García', 'Martínez', '2006-04-03', 'franciscog@alumnos.com', 'password9012', 1, 1, 1, 1),
	(18, 'Cristina', 'Martínez', 'Sánchez', '2004-09-17', 'cristinam@alumnos.com', 'password3456', 1, 2, 1, 1),
	(19, 'Diego', 'Pérez', 'Gómez', '2007-02-24', 'diegop@alumnos.com', 'password7890', 1, 2, 1, 1),
	(20, 'Ana María', 'Rodríguez', 'Pérez', '2005-10-11', 'anamariar@alumnos.com', 'password12345', 1, 3, 1, 1),
	(21, 'José Luis', 'Gómez', 'Martínez', '2003-05-19', 'joseluisg@alumnos.com', 'password67890', 1, 2, 1, 1),
	(22, 'Laura', 'Pérez', 'Martínez', '2006-08-30', 'laurap@alumnos.com', 'passwordabcd', 1, 2, 1, 1),
	(23, 'Santino', 'Jesus', 'Orozco', '2002-11-11', 'santino@alumnos.com', 'abhjdwT%$G#2', 2, 0, 0, 0),
	(24, 'Oscar', 'Mendoza', 'Gutierrez', '2024-05-01', 'oscar.mg@alumnos.com', 'erfY&%343d', 9, 5, 1, 1),
	(25, 'Jesus Villalobos', 'Orozco', 'Pena', '2024-05-01', 'villalobos.jesus@alumnos.com', 'absh$F%G21', 9, 4, 1, 1),
	(26, 'Gustavo', 'Orozco', 'Bustamante', '2024-05-01', 'gustavo.orozco@alumnos.com', 'dhawvbu$F%75y', 9, 4, 1, 1),
	(27, 'Gustavo', 'Watterson', 'Bustamente', '2024-05-01', 'gustavo.watterson@alumnos.com', 'dawbh$%G34fe3', 1, 0, 1, 0),
	(28, 'Yael Felipe', 'Navarro', 'Estrada', '2024-05-01', 'yael.felipe@alumnos.com', 'safehb%&YTG1', 9, 4, 1, 1),
	(29, 'Luis Brian', 'Zavala', 'Torres', '2024-05-01', 'luis.brian@alumnos.com', '#$Ry456y%GF&', 9, 5, 1, 1),
	(30, 'Pablo Michelle', 'Ruiz', 'Simpson', '2024-05-01', 'pablo.michelle@alumnos.com', '%F&#g67u8', 9, 4, 1, 1),
	(31, 'Kirby Supertar', 'Nintendo', 'Hal', '2024-05-01', 'kirby.nintendo@alumnos.com', '#$F&YT%67u4g', 9, 5, 1, 1),
	(32, 'Winton', 'Winton', 'Winton', '2024-05-01', 'winton@alumnos.com', '#D$%g67u44f5t2', 9, 5, 1, 1),
	(33, 'Wario brother', 'Mushroom', 'Princess', '2024-05-01', 'Wario.BigW@alumnos.com', '%$F5g645g6ygy764', 9, 0, 0, 0),
	(34, 'Waluigi brother', 'Mushroom', 'Princess', '2024-05-01', 'Waluigi.BigL@alumnos.com', '%$F#CT536y7ug', 9, 4, 1, 1);

-- Volcando estructura para tabla control_escolar.alumnos_grupo
CREATE TABLE IF NOT EXISTS `alumnos_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_grupo` (`id_grupo`),
  CONSTRAINT `alumnos_grupo_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`),
  CONSTRAINT `alumnos_grupo_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.alumnos_grupo: ~12 rows (aproximadamente)
DELETE FROM `alumnos_grupo`;
INSERT INTO `alumnos_grupo` (`id`, `id_grupo`, `id_alumno`) VALUES
	(66, 1, 9),
	(67, 1, 17),
	(68, 1, 2),
	(69, 1, 14),
	(70, 2, 22),
	(71, 2, 18),
	(72, 2, 21),
	(73, 2, 6),
	(74, 2, 19),
	(75, 3, 5),
	(76, 3, 7),
	(77, 3, 20),
	(91, 4, 28),
	(92, 4, 30),
	(93, 4, 25),
	(94, 4, 26),
	(95, 4, 34),
	(96, 5, 29),
	(97, 5, 31),
	(98, 5, 24),
	(100, 5, 32);

-- Volcando estructura para tabla control_escolar.carreras
CREATE TABLE IF NOT EXISTS `carreras` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(128) NOT NULL,
  `carrera` varchar(128) NOT NULL,
  `semestres` varchar(128) NOT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.carreras: ~8 rows (aproximadamente)
DELETE FROM `carreras`;
INSERT INTO `carreras` (`id_carrera`, `clave`, `carrera`, `semestres`) VALUES
	(1, 'ICOM', 'Ingeniería en Computación', '9'),
	(2, 'INNI', 'Ingeniería en Informática', '7'),
	(3, 'LIME', 'Licenciatura en Mercadotecnia', '8'),
	(4, 'INFI', 'Licenciatura en Fisica', '6'),
	(6, 'LICI', 'Ingeniería Civil', '6'),
	(7, 'QFB', 'Licenciatura en Químico Farmacéutico Biólogo', '9'),
	(9, 'IDNF', 'Ingeniería de no Fallar', '9');

-- Volcando estructura para tabla control_escolar.edificio
CREATE TABLE IF NOT EXISTS `edificio` (
  `id_edificio` int(11) NOT NULL AUTO_INCREMENT,
  `edificio` varchar(128) NOT NULL,
  PRIMARY KEY (`id_edificio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.edificio: ~7 rows (aproximadamente)
DELETE FROM `edificio`;
INSERT INTO `edificio` (`id_edificio`, `edificio`) VALUES
	(1, 'A'),
	(2, 'B'),
	(3, 'C'),
	(4, 'D'),
	(5, 'E'),
	(6, 'F'),
	(7, 'G');

-- Volcando estructura para tabla control_escolar.grupos
CREATE TABLE IF NOT EXISTS `grupos` (
  `id_grupo` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `grupo` varchar(128) NOT NULL,
  `semestre` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cupo` int(11) NOT NULL,
  `cupos_disponibles` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.grupos: ~5 rows (aproximadamente)
DELETE FROM `grupos`;
INSERT INTO `grupos` (`id_grupo`, `id_carrera`, `grupo`, `semestre`, `fecha`, `cupo`, `cupos_disponibles`) VALUES
	(1, 1, 'A01', 1, '2024-05-01', 5, 1),
	(2, 1, 'A02', 1, '2024-05-01', 5, 0),
	(3, 1, 'A03', 1, '2024-05-01', 5, 2),
	(4, 9, 'D01', 1, '2024-05-01', 5, 0),
	(5, 9, 'D02', 1, '2024-05-01', 5, 0);

-- Volcando estructura para tabla control_escolar.horarios
CREATE TABLE IF NOT EXISTS `horarios` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrera` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_maestro` int(11) NOT NULL,
  `id_salon` int(11) NOT NULL,
  `L` int(1) NOT NULL DEFAULT 0,
  `M` int(1) NOT NULL DEFAULT 0,
  `I` int(1) NOT NULL DEFAULT 0,
  `J` int(1) NOT NULL DEFAULT 0,
  `V` int(1) NOT NULL DEFAULT 0,
  `S` int(1) NOT NULL DEFAULT 0,
  `horas` varchar(128) NOT NULL,
  `disponibilidad` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_horario`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_maestro` (`id_maestro`),
  KEY `id_salon` (`id_salon`),
  KEY `horarios_ibfk_2` (`id_materia`),
  CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`),
  CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  CONSTRAINT `horarios_ibfk_3` FOREIGN KEY (`id_maestro`) REFERENCES `maestros` (`id_maestro`),
  CONSTRAINT `horarios_ibfk_4` FOREIGN KEY (`id_salon`) REFERENCES `salones` (`id_salon`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.horarios: ~32 rows (aproximadamente)
DELETE FROM `horarios`;
INSERT INTO `horarios` (`id_horario`, `id_carrera`, `id_materia`, `id_maestro`, `id_salon`, `L`, `M`, `I`, `J`, `V`, `S`, `horas`, `disponibilidad`) VALUES
	(1, 1, 5, 2, 6, 0, 1, 0, 1, 0, 1, '9:00 - 10:55', 0),
	(3, 1, 4, 3, 4, 0, 1, 0, 1, 0, 0, '11:00 - 12:55', 0),
	(4, 6, 3, 1, 4, 1, 0, 1, 0, 1, 0, '7:00 - 8:55', 1),
	(5, 4, 7, 1, 6, 0, 1, 0, 1, 0, 0, '7:00 - 8:55', 1),
	(6, 1, 12, 4, 5, 1, 0, 1, 0, 0, 0, '7:00 - 8:55', 0),
	(7, 1, 7, 5, 3, 1, 0, 1, 0, 0, 0, '11:00 - 12:55', 0),
	(8, 1, 7, 6, 1, 0, 1, 0, 1, 0, 0, '9:00 - 10:55', 0),
	(9, 1, 12, 4, 4, 1, 0, 0, 0, 0, 0, '11:00 - 12:55', 0),
	(10, 1, 6, 3, 5, 1, 0, 1, 0, 0, 0, '11:00 - 12:55', 0),
	(11, 1, 9, 7, 4, 0, 0, 0, 0, 1, 0, '11:00 - 12:55', 0),
	(12, 1, 7, 8, 5, 0, 0, 0, 0, 0, 1, '9:00 - 10:55', 1),
	(13, 1, 6, 8, 5, 0, 0, 0, 0, 1, 0, '9:00 - 10:55', 0),
	(14, 1, 8, 6, 3, 0, 0, 1, 0, 1, 0, '7:00 - 8:55', 0),
	(15, 1, 8, 6, 3, 0, 0, 1, 0, 1, 0, '9:00 - 10:55', 0),
	(16, 1, 10, 7, 4, 0, 0, 0, 0, 0, 1, '9:00 - 10:55', 0),
	(17, 1, 3, 5, 4, 0, 0, 0, 0, 0, 1, '11:00 - 12:55', 0),
	(18, 1, 7, 5, 5, 0, 1, 0, 1, 0, 0, '11:00 - 12:55', 1),
	(19, 1, 5, 23, 4, 1, 0, 1, 0, 1, 0, '9:00 - 10:55', 0),
	(20, 1, 5, 3, 2, 1, 0, 1, 0, 1, 0, '7:00 - 8:55', 0),
	(21, 9, 26, 25, 13, 0, 1, 0, 1, 0, 0, '7:00 - 8:55', 0),
	(22, 9, 26, 25, 13, 1, 0, 1, 0, 0, 0, '7:00 - 8:55', 0),
	(23, 9, 25, 1, 13, 0, 1, 0, 1, 0, 0, '9:00 - 10:55', 0),
	(24, 9, 25, 18, 10, 0, 1, 0, 1, 0, 0, '9:00 - 10:55', 0),
	(25, 9, 24, 18, 7, 1, 0, 1, 0, 0, 0, '9:00 - 10:55', 0),
	(26, 9, 24, 3, 6, 1, 0, 1, 0, 0, 0, '9:00 - 10:55', 0),
	(27, 9, 23, 2, 2, 1, 0, 1, 0, 0, 0, '11:00 - 12:55', 0),
	(28, 9, 23, 2, 6, 0, 1, 0, 1, 0, 0, '11:00 - 12:55', 0),
	(29, 9, 22, 25, 7, 0, 0, 0, 0, 1, 0, '9:00 - 10:55', 0),
	(30, 9, 22, 18, 6, 0, 0, 0, 0, 1, 0, '9:00 - 10:55', 0),
	(31, 9, 21, 18, 6, 0, 0, 0, 0, 1, 0, '11:00 - 12:55', 0),
	(32, 9, 21, 15, 1, 0, 0, 0, 0, 1, 0, '11:00 - 12:55', 0),
	(33, 1, 5, 3, 14, 0, 1, 0, 1, 0, 0, '7:00 - 8:55', 1);

-- Volcando estructura para tabla control_escolar.horarios_grupo
CREATE TABLE IF NOT EXISTS `horarios_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_grupo` (`id_grupo`),
  KEY `id_horario` (`id_horario`),
  CONSTRAINT `horarios_grupo_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`),
  CONSTRAINT `horarios_grupo_ibfk_2` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.horarios_grupo: ~27 rows (aproximadamente)
DELETE FROM `horarios_grupo`;
INSERT INTO `horarios_grupo` (`id`, `id_grupo`, `id_horario`) VALUES
	(50, 1, 1),
	(51, 1, 17),
	(52, 1, 3),
	(53, 1, 6),
	(54, 1, 10),
	(55, 1, 15),
	(56, 1, 11),
	(57, 2, 19),
	(58, 2, 14),
	(59, 2, 7),
	(60, 2, 16),
	(61, 3, 20),
	(62, 3, 13),
	(63, 3, 8),
	(64, 3, 9),
	(77, 4, 27),
	(78, 4, 25),
	(79, 4, 23),
	(80, 4, 31),
	(81, 4, 29),
	(82, 4, 21),
	(83, 5, 32),
	(84, 5, 30),
	(85, 5, 26),
	(86, 5, 22),
	(87, 5, 28),
	(88, 5, 24);

-- Volcando estructura para tabla control_escolar.maestros
CREATE TABLE IF NOT EXISTS `maestros` (
  `id_maestro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `paterno` varchar(128) NOT NULL,
  `materno` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_maestro`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.maestros: ~25 rows (aproximadamente)
DELETE FROM `maestros`;
INSERT INTO `maestros` (`id_maestro`, `nombre`, `paterno`, `materno`, `username`, `password`, `status`) VALUES
	(1, 'Ramiro', 'Lupercio', 'Coronel', 'lupercio.coronel@academico.com', '$F%#Y56u876', 1),
	(2, 'Gael Emiliano', 'Anaya', 'Garcia', 'gael.anaya@academico.com', 'hsBW6erDY5%', 1),
	(3, 'Levy', 'Navarro', 'Absalon', 'levy.absalon@academico.com', '#$TFD&%yu674uf53y', 1),
	(4, 'Juan', 'López', 'García', 'juanl@academico.com', 'password123', 1),
	(5, 'María', 'Martínez', 'Rodríguez', 'mariamr@academico.com', 'password456', 1),
	(6, 'Carlos', 'Hernández', 'Pérez', 'carloshp@academico.com', 'password789', 1),
	(7, 'Laura', 'González', 'Sánchez', 'laurags@academico.com', 'passwordabc', 1),
	(8, 'Pedro', 'Díaz', 'Martínez', 'pedrod@academico.com', 'passworddef', 1),
	(9, 'Ana', 'Pérez', 'Gómez', 'anap@academico.com', 'passwordghi', 1),
	(10, 'David', 'Rodríguez', 'López', 'davidrl@academico.com', 'passwordjkl', 1),
	(11, 'Marta', 'Sánchez', 'Martínez', 'martasm@academico.com', 'passwordmno', 1),
	(12, 'Sergio', 'Gómez', 'Ruiz', 'sergiogr@academico.com', 'passwordpqr', 1),
	(13, 'Elena', 'López', 'Hernández', 'elenalh@academico.com', 'passwordstu', 1),
	(14, 'Pablo', 'Martínez', 'García', 'pablomg@academico.com', 'passwordvwx', 1),
	(15, 'Julia', 'Fernandez', 'Perez', 'juliafp@academico.com', 'dui#$g5F', 1),
	(16, 'Andrés', 'Ruiz', 'García', 'andresrg@academico.com', 'password1234', 1),
	(17, 'Beatriz', 'López', 'Pérez', 'beatrizlp@academico.com', 'password5678', 1),
	(18, 'Francisco', 'Garcia', 'Martinez', 'franciscogm@academico.com', 'adw%$r4Uq', 1),
	(19, 'Cristina', 'Martínez', 'Sánchez', 'cristinams@academico.com', 'password3456', 1),
	(20, 'Diego', 'Pérez', 'Gómez', 'diegopg@academico.com', 'password7890', 1),
	(21, 'Ana María', 'Rodríguez', 'Pérez', 'anamariarp@academico.com', 'password12345', 1),
	(22, 'José Luis', 'Gómez', 'Martínez', 'joseluisgm@academico.com', 'password67890', 0),
	(23, 'Laura', 'Perez', 'Martinez', 'laura@academico.com', 'fy#3Ft&fwd', 1),
	(24, 'Ramiro', 'Lupercio', 'Comandante', 'lupercio@academico.com', 'fiopjew4ra%T$', 0),
	(25, 'Jair Antonio', 'Salas', 'Garcia', 'jair.salas@academico.com', 'abs%Te4F', 1);

-- Volcando estructura para tabla control_escolar.maestro_carreras
CREATE TABLE IF NOT EXISTS `maestro_carreras` (
  `id_maestro_carreras` int(11) NOT NULL AUTO_INCREMENT,
  `id_maestro` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  PRIMARY KEY (`id_maestro_carreras`),
  KEY `id_maestro` (`id_maestro`),
  KEY `id_carreras` (`id_carrera`),
  CONSTRAINT `maestro_carreras_ibfk_1` FOREIGN KEY (`id_maestro`) REFERENCES `maestros` (`id_maestro`),
  CONSTRAINT `maestro_carreras_ibfk_2` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.maestro_carreras: ~32 rows (aproximadamente)
DELETE FROM `maestro_carreras`;
INSERT INTO `maestro_carreras` (`id_maestro_carreras`, `id_maestro`, `id_carrera`) VALUES
	(1, 2, 1),
	(2, 2, 2),
	(10, 3, 3),
	(11, 3, 7),
	(12, 3, 1),
	(13, 2, 4),
	(14, 1, 1),
	(15, 1, 2),
	(16, 1, 4),
	(17, 1, 6),
	(18, 4, 1),
	(19, 5, 1),
	(20, 6, 1),
	(21, 6, 4),
	(24, 7, 1),
	(25, 8, 1),
	(26, 23, 1),
	(28, 23, 3),
	(29, 23, 2),
	(31, 22, 1),
	(32, 22, 2),
	(33, 22, 3),
	(34, 2, 9),
	(42, 25, 1),
	(43, 25, 2),
	(44, 25, 3),
	(45, 25, 9),
	(46, 1, 9),
	(47, 23, 9),
	(48, 18, 9),
	(49, 15, 9),
	(50, 3, 9);

-- Volcando estructura para tabla control_escolar.maestro_materias
CREATE TABLE IF NOT EXISTS `maestro_materias` (
  `id_maestro_materias` int(11) NOT NULL AUTO_INCREMENT,
  `id_maestro` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id_maestro_materias`),
  KEY `id_maestro` (`id_maestro`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `maestro_materias_ibfk_1` FOREIGN KEY (`id_maestro`) REFERENCES `maestros` (`id_maestro`),
  CONSTRAINT `maestro_materias_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.maestro_materias: ~57 rows (aproximadamente)
DELETE FROM `maestro_materias`;
INSERT INTO `maestro_materias` (`id_maestro_materias`, `id_maestro`, `id_materia`) VALUES
	(1, 2, 2),
	(2, 2, 5),
	(10, 3, 6),
	(11, 3, 7),
	(12, 3, 5),
	(13, 2, 4),
	(14, 2, 7),
	(17, 2, 3),
	(18, 1, 2),
	(19, 1, 3),
	(20, 1, 5),
	(21, 1, 7),
	(22, 4, 9),
	(23, 4, 12),
	(24, 4, 5),
	(25, 5, 2),
	(26, 5, 3),
	(27, 5, 7),
	(28, 6, 8),
	(29, 6, 3),
	(30, 6, 7),
	(31, 7, 9),
	(32, 7, 10),
	(33, 8, 7),
	(34, 8, 6),
	(35, 3, 4),
	(36, 23, 3),
	(38, 23, 5),
	(39, 23, 6),
	(40, 23, 4),
	(41, 22, 2),
	(42, 22, 3),
	(43, 22, 4),
	(44, 23, 21),
	(45, 2, 23),
	(46, 2, 25),
	(57, 25, 3),
	(58, 25, 4),
	(59, 25, 6),
	(60, 25, 7),
	(61, 25, 8),
	(62, 25, 22),
	(63, 25, 26),
	(64, 1, 16),
	(65, 1, 25),
	(66, 1, 14),
	(67, 1, 15),
	(68, 23, 24),
	(69, 23, 25),
	(70, 23, 26),
	(71, 18, 24),
	(72, 18, 25),
	(73, 18, 21),
	(74, 18, 22),
	(75, 15, 26),
	(76, 15, 21),
	(77, 3, 24);

-- Volcando estructura para tabla control_escolar.materias
CREATE TABLE IF NOT EXISTS `materias` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `asignatura` varchar(128) NOT NULL,
  `créditos` int(11) NOT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.materias: ~25 rows (aproximadamente)
DELETE FROM `materias`;
INSERT INTO `materias` (`id_materia`, `asignatura`, `créditos`) VALUES
	(2, 'Ingeniería de Software', 10),
	(3, 'Física 1', 8),
	(4, 'Precalculo', 8),
	(5, 'Estructura de Datos', 8),
	(6, 'Calculo Diferencial e Integral', 8),
	(7, 'Matemáticas Discretas', 7),
	(8, 'Matemáticas', 5),
	(9, 'Lengua y Literatura', 4),
	(10, 'Ciencias Naturales', 3),
	(11, 'Historia', 4),
	(12, 'Geografía', 3),
	(13, 'Educación Física', 2),
	(14, 'Arte', 2),
	(15, 'Música', 2),
	(16, 'Inglés', 3),
	(18, 'Informática', 3),
	(19, 'Ética', 2),
	(20, 'Religión', 2),
	(21, 'Ciudadanía', 2),
	(22, 'Mecanica', 8),
	(23, 'Sistemas Operativos', 7),
	(24, 'Telecomunicaciones', 8),
	(25, 'Fundamentos del Dibujo', 9),
	(26, 'Fundamentos del Color', 8);

-- Volcando estructura para tabla control_escolar.materias_carreras
CREATE TABLE IF NOT EXISTS `materias_carreras` (
  `id_materias_carreras` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrera` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id_materias_carreras`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `materias_carreras_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`),
  CONSTRAINT `materias_carreras_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.materias_carreras: ~47 rows (aproximadamente)
DELETE FROM `materias_carreras`;
INSERT INTO `materias_carreras` (`id_materias_carreras`, `id_carrera`, `id_materia`) VALUES
	(1, 1, 3),
	(2, 3, 3),
	(3, 6, 3),
	(4, 2, 4),
	(5, 3, 4),
	(6, 4, 4),
	(8, 3, 2),
	(10, 2, 2),
	(11, 1, 2),
	(12, 4, 2),
	(13, 1, 5),
	(14, 2, 5),
	(15, 1, 6),
	(16, 7, 6),
	(17, 3, 6),
	(18, 1, 7),
	(19, 3, 7),
	(20, 4, 7),
	(21, 7, 7),
	(23, 1, 8),
	(24, 1, 9),
	(25, 1, 10),
	(26, 1, 11),
	(27, 1, 12),
	(28, 1, 13),
	(29, 1, 14),
	(30, 1, 15),
	(31, 1, 16),
	(33, 1, 18),
	(34, 1, 19),
	(35, 1, 20),
	(36, 1, 21),
	(38, 1, 4),
	(39, 2, 21),
	(40, 9, 21),
	(41, 9, 22),
	(42, 9, 23),
	(43, 9, 5),
	(46, 9, 24),
	(47, 6, 24),
	(48, 9, 25),
	(49, 3, 25),
	(50, 6, 25),
	(51, 9, 26),
	(52, 3, 26),
	(53, 6, 26);

-- Volcando estructura para tabla control_escolar.prerregistro
CREATE TABLE IF NOT EXISTS `prerregistro` (
  `id_prerregistro` int(11) NOT NULL AUTO_INCREMENT,
  `id_alumno` int(11) NOT NULL,
  `materias` text NOT NULL,
  PRIMARY KEY (`id_prerregistro`),
  KEY `id_alumno` (`id_alumno`),
  CONSTRAINT `prerregistro_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.prerregistro: ~24 rows (aproximadamente)
DELETE FROM `prerregistro`;
INSERT INTO `prerregistro` (`id_prerregistro`, `id_alumno`, `materias`) VALUES
	(1, 2, '[7,2,3,4,5,6]'),
	(2, 3, '[2, 3, 4, 5, 6, 5]'),
	(3, 4, '[3, 4, 5, 6, 7, 5]'),
	(4, 5, '[4, 5, 6, 7, 8, 5]'),
	(5, 6, '[5, 6, 7, 8, 9]'),
	(6, 7, '[6, 7, 8, 9, 10, 5]'),
	(7, 8, '[7, 8, 9, 10, 11, 5]'),
	(8, 9, '[8, 9, 10, 11, 12, 5]'),
	(9, 10, '[9, 10, 11, 12, 13, 5]'),
	(10, 11, '[10, 11, 12, 13, 14, 5]'),
	(11, 12, '[11, 12, 13, 14, 2, 5]'),
	(12, 13, '[12, 13, 14, 2, 3, 5]'),
	(13, 14, '[13, 14, 2, 3, 4, 5]'),
	(14, 15, '[14, 2, 3, 4, 5, 5]'),
	(16, 17, '[3, 4, 5, 6, 7, 5]'),
	(17, 18, '[4, 5, 6, 7, 8, 5]'),
	(18, 19, '[5, 6, 7, 8, 9, 5]'),
	(19, 20, '[6, 7, 8, 9, 10, 5]'),
	(21, 22, '[8, 9, 10, 11, 12, 5]'),
	(24, 1, '[4, 2, 5]'),
	(26, 21, '[3, 2, 5, 6, 7, 8]'),
	(28, 24, '[21, 22, 23, 5, 25, 26]'),
	(29, 25, '[21, 22, 23, 5, 24, 25]'),
	(30, 26, '[21, 22, 23, 5, 24, 25]'),
	(31, 28, '[21, 22, 23, 24, 25, 26]'),
	(32, 29, '[21, 22, 5, 24, 25, 26]'),
	(33, 30, '[21, 23, 5, 24, 25, 26]'),
	(34, 31, '[21, 22, 23, 5, 24, 26]'),
	(35, 32, '[21, 22, 23, 5, 24]'),
	(37, 34, '[22, 23, 5, 24, 25]');

-- Volcando estructura para tabla control_escolar.salones
CREATE TABLE IF NOT EXISTS `salones` (
  `id_salon` int(11) NOT NULL AUTO_INCREMENT,
  `id_edificio` int(11) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  PRIMARY KEY (`id_salon`),
  KEY `id_edificio` (`id_edificio`),
  CONSTRAINT `id_edificio` FOREIGN KEY (`id_edificio`) REFERENCES `edificio` (`id_edificio`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla control_escolar.salones: ~14 rows (aproximadamente)
DELETE FROM `salones`;
INSERT INTO `salones` (`id_salon`, `id_edificio`, `nombre`) VALUES
	(1, 3, 'C1'),
	(2, 3, 'C2'),
	(3, 3, 'C3'),
	(4, 1, 'A1'),
	(5, 1, 'A2'),
	(6, 3, 'C4'),
	(7, 5, 'E1'),
	(8, 1, 'A3'),
	(9, 2, 'B1'),
	(10, 3, 'C5'),
	(11, 4, 'D1'),
	(12, 5, 'E2'),
	(13, 6, 'F1'),
	(14, 7, 'G1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
