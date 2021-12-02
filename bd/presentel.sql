-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2021 a las 20:28:31
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `presentel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `tipo`, `fecha`, `id_estudiante`, `id_grado`) VALUES
(3, '2', '2021-11-08', 4, 13),
(4, '1', '2021-11-07', 4, 13),
(5, '3', '2021-11-07', 5, 13),
(6, '1', '2021-12-02', 4, 13),
(7, '1', '2021-12-02', 5, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque_cal`
--

CREATE TABLE `bloque_cal` (
  `id` int(11) NOT NULL,
  `nom_cal` varchar(80) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bloque_cal`
--

INSERT INTO `bloque_cal` (`id`, `nom_cal`, `id_grado`) VALUES
(1, 'ingles', 70),
(2, 'qyechua', 70),
(3, 'Ciencias', 70),
(4, 'Literatura', 70),
(5, 'Ed. Fisica', 70),
(6, 'ingles', 69),
(7, 'Literatura', 69),
(8, 'Ed. Fisica', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `profesor` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`, `profesor`) VALUES
(25, 'ingles', 'pepe'),
(26, 'qyechua', 'juan'),
(28, 'Literatura', 'Maximilo Huamani Yepis'),
(29, 'Ed. Fisica', 'Juan Lacho Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre`) VALUES
(1, 'activo'),
(2, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `genero` varchar(20) NOT NULL,
  `fecha_nac` varchar(10) NOT NULL,
  `apoderado` varchar(100) DEFAULT NULL,
  `num_cel` varchar(50) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_reg` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `dni`, `apellido_paterno`, `apellido_materno`, `nombre`, `genero`, `fecha_nac`, `apoderado`, `num_cel`, `direccion`, `estado`, `fecha_reg`, `user_id`) VALUES
(3, '123', 'lopez', 'martinez', 'maria del carmen castillo', 'Masculino', '15/02/2000', 'Carlos Lopez Martinez', '14538857', 'cr23bn63a10sur', 'activo', '2021-11-08', 0),
(4, '3546', 'castro', 'salas', 'andres', 'Masculino', '15/02/2002', 'carlos andres castro salas', '3105881255', 'cr23bn63a10sur', 'activo', '2021-11-08', 0),
(5, '235', 'lupe', 'sofi', 'lilia', 'Femenino', '15/02/2000', 'lilia sofi lupe', '3102134', 'cll70#45-20', 'activo', '2021-11-08', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `est_gra`
--

CREATE TABLE `est_gra` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `est_gra`
--

INSERT INTO `est_gra` (`id`, `id_estudiante`, `id_grado`) VALUES
(4, 4, 13),
(5, 5, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `fav` int(1) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre`, `nivel`, `fav`, `id_prof`) VALUES
(13, '2242755', 'II', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gra_cu`
--

CREATE TABLE `gra_cu` (
  `id_gra_cu` int(11) NOT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `curso` int(11) NOT NULL,
  `cu` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id_nivel` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `nombre`) VALUES
(1, 'I'),
(2, 'II'),
(4, 'III');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_prof` int(11) NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(80) NOT NULL,
  `num_cel` varchar(20) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_prof`, `dni`, `nombres`, `apellidos`, `num_cel`, `especialidad`, `email`, `direccion`) VALUES
(9, 12345678, 'Daniel', 'danielito dadielito', '458796521', 'ComputaciÃ³n e InformÃ¡tica', 'profesor@gmail.com', 'Calle los arces 102'),
(10, 44582510, 'juan carlos', 'Quispe Mamani', '974584216', 'Ingles', 'profesor@gmail.com', 'Calle los arces 102'),
(11, 785428, 'Jhon', 'apellidos editados', '587412569', 'Matematicas', 'johon@hotmail.com', 'Calle los arces 102'),
(12, 854712547, 'Elvia', 'Marroquin Cardenas', '458741256', 'Literatura', 'elvia@hotmail.com', 'Calle los arces 102');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `kind` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_prof`, `name`, `lastname`, `username`, `password`, `email`, `image`, `status`, `kind`, `created_at`) VALUES
(1, 0, 'Administrador', 'admin', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin241@gamil.com', NULL, 1, 1, '2018-07-15 13:36:00'),
(27, 9, 'Daniel', 'danielito dadielito', '12345678', '4c80d78769a425ac383c23e2578b0ad56a0a6806', 'profesor@gmail.com', NULL, 1, 0, '2018-08-12 13:19:03'),
(28, 10, 'juan carlos', 'Quispe Mamani', '44582510', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'profesor@gmail.com', NULL, 1, 0, '2021-11-03 16:13:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `bloque_cal`
--
ALTER TABLE `bloque_cal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`) USING BTREE;

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `est_gra`
--
ALTER TABLE `est_gra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Indices de la tabla `gra_cu`
--
ALTER TABLE `gra_cu`
  ADD PRIMARY KEY (`id_gra_cu`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `curso` (`curso`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_prof`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `bloque_cal`
--
ALTER TABLE `bloque_cal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `est_gra`
--
ALTER TABLE `est_gra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `gra_cu`
--
ALTER TABLE `gra_cu`
  MODIFY `id_gra_cu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `est_gra`
--
ALTER TABLE `est_gra`
  ADD CONSTRAINT `est_gra_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `est_gra_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
