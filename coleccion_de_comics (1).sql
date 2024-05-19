-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2024 a las 23:27:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coleccion_de_comics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `ID_Autor` int(11) NOT NULL,
  `NombreAutor` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`ID_Autor`, `NombreAutor`) VALUES
(1, 'Stan Lee'),
(2, 'Jack Kirby');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `ID_Autor` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Fecha_Publicacion` date NOT NULL,
  `Nacionalidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`ID_Autor`, `Nombre`, `Fecha_Publicacion`, `Nacionalidad`) VALUES
(1, 'alejandro', '2004-01-12', 'venezolano'),
(2, 'alejandro', '2004-01-12', 'venezolano'),
(3, 'alejandro', '2004-01-12', 'venezolano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comics`
--

CREATE TABLE `comics` (
  `ID_Comic` int(11) NOT NULL,
  `Titulo` text NOT NULL,
  `Fecha_Publicacion` date NOT NULL,
  `ID_Genero` int(11) NOT NULL,
  `Nro_Edicion` text NOT NULL,
  `ID_Autor` int(11) NOT NULL,
  `ID_Editorial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `ID_Editoriales` int(11) NOT NULL,
  `NombreEditorial` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`ID_Editoriales`, `NombreEditorial`) VALUES
(1, 'MARVEL'),
(2, 'DC Comics');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `ID_Editoriales` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Pais` text NOT NULL,
  `Año_Fundacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`ID_Editoriales`, `Nombre`, `Pais`, `Año_Fundacion`) VALUES
(1, 'MARVEL', 'Estados Unidos', '1939-10-10'),
(2, 'DC Comics', 'Estados Unidos', '1934-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `ID_Genero` int(11) NOT NULL,
  `NombreGenero` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`ID_Genero`, `NombreGenero`) VALUES
(1, 'Accion'),
(2, 'Drama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nro_edicion`
--

CREATE TABLE `nro_edicion` (
  `ID_NroEdicion` int(11) NOT NULL,
  `Nro_Edicion` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nro_edicion`
--

INSERT INTO `nro_edicion` (`ID_NroEdicion`, `Nro_Edicion`) VALUES
(1, '1'),
(2, '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`ID_Autor`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`ID_Autor`),
  ADD KEY `ID_Autor` (`ID_Autor`);

--
-- Indices de la tabla `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`ID_Comic`),
  ADD UNIQUE KEY `ID_Comic_4` (`ID_Comic`),
  ADD KEY `ID_Comic` (`ID_Comic`,`ID_Autor`),
  ADD KEY `ID_Comic_2` (`ID_Comic`,`ID_Editorial`),
  ADD KEY `ID_Autor` (`ID_Autor`),
  ADD KEY `ID_Editorial` (`ID_Editorial`),
  ADD KEY `ID_Genero` (`ID_Genero`),
  ADD KEY `ID_Genero_2` (`ID_Genero`),
  ADD KEY `ID_Comic_3` (`ID_Comic`),
  ADD KEY `ID_Comic_5` (`ID_Comic`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`ID_Editoriales`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`ID_Editoriales`),
  ADD KEY `ID_Editoriales` (`ID_Editoriales`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_Genero`),
  ADD KEY `ID_Genero` (`ID_Genero`),
  ADD KEY `ID_Genero_2` (`ID_Genero`);

--
-- Indices de la tabla `nro_edicion`
--
ALTER TABLE `nro_edicion`
  ADD PRIMARY KEY (`ID_NroEdicion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `ID_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `ID_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comics`
--
ALTER TABLE `comics`
  MODIFY `ID_Comic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `ID_Editoriales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `ID_Editoriales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `nro_edicion`
--
ALTER TABLE `nro_edicion`
  MODIFY `ID_NroEdicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`ID_Autor`) REFERENCES `autores` (`ID_Autor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comics`
--
ALTER TABLE `comics`
  ADD CONSTRAINT `comics_ibfk_1` FOREIGN KEY (`ID_Autor`) REFERENCES `autores` (`ID_Autor`),
  ADD CONSTRAINT `comics_ibfk_2` FOREIGN KEY (`ID_Editorial`) REFERENCES `editoriales` (`ID_Editoriales`),
  ADD CONSTRAINT `comics_ibfk_3` FOREIGN KEY (`ID_Genero`) REFERENCES `genero` (`ID_Genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comics_ibfk_4` FOREIGN KEY (`ID_Comic`) REFERENCES `nro_edicion` (`ID_NroEdicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD CONSTRAINT `editorial_ibfk_1` FOREIGN KEY (`ID_Editoriales`) REFERENCES `editoriales` (`ID_Editoriales`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
