-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 09-03-2023 a las 01:05:29
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estanco1997AntonioCalzado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `verification_code` varchar(64) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`username`, `pass`, `name`, `email`, `role`, `verification_code`, `enabled`, `image`) VALUES
('AntonioCal', '$2a$10$lD92qcgDtM38YvrYwnx8UeE2RTtGNxE.3ZmGP78Hr9dLqJ65WI21q', 'Antonioo', 'antonioocalzado022@gmail.com', 'USER', 'WGoLlcPrYESbX2rg7GBEM1L5oKViIF5ftmQeTzxAXdjvHgVuodoCDefvJUHO4Nro', b'1', '0'),
('antonioFumeta', '$2a$10$PE/noaNZ2YvsWB2ZIWi6IOLvogvXlE63loyJznV2A1hJv9UnKhZsK', 'antonioFumeta ', 'antonioFumeta@gmail.com', 'USER', 'vHvA7i3DAZD84dctKbfNQuGsSUe3EZV02LeGeMi7fajkkqKZrNEGeVemZCPPX2g3', b'1', '0'),
('inma', '$2a$10$8sxZ4H5unQDi4xLx.xi7LOiun/IDoq7BGekzMBvy3lcvuKT1xZzWa', 'inma', 'antoniocalzado02@gmail.com', 'USER', 'O71bXqRF1yFxZ7baJoB879uTwcxEUNmfV5NXUvpzSmT7FS2ppxj5DR1ikfdtGUT8', b'1', 'http://res.cloudinary.com/dbxmpz6qa/image/upload/v1678321169/qys340ixvnnv8peucwmt.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
