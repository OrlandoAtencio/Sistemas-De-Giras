-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2025 a las 03:40:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `girastecnicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacoraaccesos`
--

CREATE TABLE `bitacoraaccesos` (
  `AccesoID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `FechaAcceso` datetime DEFAULT current_timestamp(),
  `IP` varchar(50) DEFAULT NULL,
  `Navegador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitacoraaccesos`
--

INSERT INTO `bitacoraaccesos` (`AccesoID`, `UsuarioID`, `FechaAcceso`, `IP`, `Navegador`) VALUES
(1, 4, '2025-11-25 06:24:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(2, 4, '2025-11-25 07:29:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(3, 4, '2025-11-25 07:30:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(4, 4, '2025-11-25 07:50:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(5, 4, '2025-11-25 07:59:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(6, 4, '2025-11-25 08:00:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(7, 4, '2025-11-25 08:09:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(8, 4, '2025-11-25 08:10:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(9, 4, '2025-11-25 09:27:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(10, 4, '2025-11-25 09:30:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(11, 4, '2025-11-25 09:50:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(12, 4, '2025-11-25 09:58:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(13, 4, '2025-11-25 10:03:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(14, 4, '2025-11-25 10:59:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(15, 1, '2025-11-25 11:03:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa'),
(16, 4, '2025-11-25 11:42:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `ComentarioID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `GiraID` int(11) DEFAULT NULL,
  `Texto` text DEFAULT NULL,
  `FechaComentario` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id` bigint(20) NOT NULL,
  `nombreEstudiante` varchar(100) NOT NULL,
  `apellidoEstudiante` varchar(100) NOT NULL,
  `emailEstudiante` varchar(150) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `numeroComprobante` varchar(100) NOT NULL,
  `archivoComprobante` longblob NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `tipoArchivo` varchar(100) NOT NULL,
  `estado` enum('PENDIENTE','APROBADO','RECHAZADO') DEFAULT 'PENDIENTE',
  `fechaSubida` datetime DEFAULT current_timestamp(),
  `fechaAprobacion` datetime DEFAULT NULL,
  `motivoRechazo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `FacultadID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`FacultadID`, `Nombre`) VALUES
(1, 'Ingeniería en Sistemas Computacionales'),
(2, 'Ingeniería Electrónica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giras`
--

CREATE TABLE `giras` (
  `GiraID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Lugar` varchar(100) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `OrganizadorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `giras`
--

INSERT INTO `giras` (`GiraID`, `Nombre`, `Fecha`, `Lugar`, `Descripcion`, `OrganizadorID`) VALUES
(1, 'Visita a Cable & Wireless', '2025-11-20', 'Panamá', 'Recorrido por centro de datos', 1),
(2, 'Tour a UTP', '2025-12-01', 'Campus Tocumen', 'Exploración de laboratorios de redes', 2),
(9, 'Visita Técnica a Planta de Tratamiento', '2025-11-12', 'Ciudad de Panamá', 'Visita técnica guiada a la planta de tratamiento para reforzar conocimientos sobre procesos industriales. Los estudiantes podrán observar el funcionamiento de equipos, sistemas de control y procesos de purificación. [MONTO=15] [TRANSPORTE=NO] [HORA=8:00 AM]', 1),
(10, 'Visita Técnica al Canal de Panamá', '2026-01-25', 'Centro de Visitantes de Miraflores', 'Recorrido técnico y guiado por el Canal de Panamá para observar esclusas, centro de control y operación. Los estudiantes conocerán la historia, ingeniería y logística de una de las obras más importantes del mundo. Incluye transporte ida y vuelta desde la UTP. [MONTO=35] [TRANSPORTE=SI] [HORA=9:30 AM]', 1),
(11, 'Gira Académica UTP Chiriquí', '2026-03-10', 'Centro Regional de Chiriquí - UTP', 'Gira académica al Centro Regional de la UTP en Chiriquí para conocer laboratorios, proyectos de investigación y vinculación con la comunidad. Los estudiantes participarán en talleres prácticos y conocerán las instalaciones del campus. Incluye transporte en autobús y refrigerio. [MONTO=55] [TRANSPORTE=SI] [HORA=6:00 AM]', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `InscripcionID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `GiraID` int(11) DEFAULT NULL,
  `FechaInscripcion` datetime DEFAULT current_timestamp(),
  `Estado` varchar(50) DEFAULT NULL CHECK (`Estado` in ('Registrado','Cancelado','Confirmado'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`InscripcionID`, `UsuarioID`, `GiraID`, `FechaInscripcion`, `Estado`) VALUES
(2, 2, 2, '2025-11-24 17:13:27', 'Registrado'),
(3, 3, 2, '2025-11-24 18:26:29', 'Registrado'),
(4, 4, 2, '2025-11-24 21:13:38', 'Registrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizadores`
--

CREATE TABLE `organizadores` (
  `OrganizadorID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `FacultadID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizadores`
--

INSERT INTO `organizadores` (`OrganizadorID`, `Nombre`, `Correo`, `FacultadID`) VALUES
(1, 'Ana Torres', 'ana.torres.actualizado@up.ac.pa', 1),
(2, 'Carlos Méndez', 'carlos.mendez@up.ac.pa', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `ContrasenaHash` varchar(256) NOT NULL,
  `Rol` varchar(50) DEFAULT NULL CHECK (`Rol` in ('Estudiante','Organizador','Administrador')),
  `FechaRegistro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioID`, `Nombre`, `Correo`, `ContrasenaHash`, `Rol`, `FechaRegistro`) VALUES
(1, 'Mario Barsallo', 'mario.barsallo@up.ac.pa', 'hash123', 'Administrador', '2025-11-24 17:13:27'),
(2, 'Cristopher Hull', 'cristopher.hull@up.ac.pa', 'nuevoHash789', 'Estudiante', '2025-11-24 17:13:27'),
(3, 'Yo NISE', 'yonise@utp.ac.pa', '$2y$10$QDhrfqAob2/mPfGtQlXdFOklr0ePqUzFoYgtdHvPY9IbX7OoQqe1O', 'Estudiante', '2025-11-24 18:25:50'),
(4, 'Juan Mulino', 'mulino@utp.ac.pa', '123456', 'Estudiante', '2025-11-24 20:51:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacoraaccesos`
--
ALTER TABLE `bitacoraaccesos`
  ADD PRIMARY KEY (`AccesoID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`ComentarioID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `GiraID` (`GiraID`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailEstudiante` (`emailEstudiante`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `idx_email` (`emailEstudiante`),
  ADD KEY `idx_cedula` (`cedula`),
  ADD KEY `idx_estado` (`estado`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`FacultadID`);

--
-- Indices de la tabla `giras`
--
ALTER TABLE `giras`
  ADD PRIMARY KEY (`GiraID`),
  ADD KEY `OrganizadorID` (`OrganizadorID`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`InscripcionID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `GiraID` (`GiraID`);

--
-- Indices de la tabla `organizadores`
--
ALTER TABLE `organizadores`
  ADD PRIMARY KEY (`OrganizadorID`),
  ADD KEY `FacultadID` (`FacultadID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioID`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacoraaccesos`
--
ALTER TABLE `bitacoraaccesos`
  MODIFY `AccesoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `ComentarioID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `FacultadID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `giras`
--
ALTER TABLE `giras`
  MODIFY `GiraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `InscripcionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `organizadores`
--
ALTER TABLE `organizadores`
  MODIFY `OrganizadorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bitacoraaccesos`
--
ALTER TABLE `bitacoraaccesos`
  ADD CONSTRAINT `bitacoraaccesos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`GiraID`) REFERENCES `giras` (`GiraID`);

--
-- Filtros para la tabla `giras`
--
ALTER TABLE `giras`
  ADD CONSTRAINT `giras_ibfk_1` FOREIGN KEY (`OrganizadorID`) REFERENCES `organizadores` (`OrganizadorID`);

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`GiraID`) REFERENCES `giras` (`GiraID`);

--
-- Filtros para la tabla `organizadores`
--
ALTER TABLE `organizadores`
  ADD CONSTRAINT `organizadores_ibfk_1` FOREIGN KEY (`FacultadID`) REFERENCES `facultades` (`FacultadID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
