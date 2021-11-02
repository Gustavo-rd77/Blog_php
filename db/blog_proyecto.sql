-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2021 a las 20:23:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Accion'),
(2, 'Rol'),
(3, 'Deportes'),
(4, 'Plataformas'),
(5, 'MMO RPG'),
(6, 'Nuevos Juegos'),
(7, 'TRUCOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` mediumtext,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `usuario_id`, `categoria_id`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 1, 1, 'Novedades de GTA5 online', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed leo nulla. Aliquam semper vehicula finibus. Cras rutrum magna a ipsum volutpat, ut tempor velit vulputate. Aenean lacinia ut elit ac pretium. Mauris nec eros luctus, porta nunc eget, suscipit ipsum. Donec nisi odio, hendrerit ac tincidunt vel, gravida nec libero. Praesent hendrerit urna at felis ornare, sit amet venenatis mauris semper. Nunc quam ex, volutpat vel nisl ut, scelerisque accumsan ligula. Duis interdum venenatis rhoncus. Nulla malesuada quam ut sem aliquam efficitur. Sed aliquam tortor tellus, dictum varius mauris porta ac. Phasellus ultricies, ipsum vitae laoreet interdum, massa sem sagittis ante, sit amet tincidunt metus mi at enim. Integer massa dolor, lobortis in nibh auctor, gravida hendrerit nisi. Vivamus ex urna, cursus vel arcu a, molestie dignissim erat.', '2021-09-02'),
(2, 2, 2, 'LOL', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed leo nulla. Aliquam semper vehicula finibus. Cras rutrum magna a ipsum volutpat, ut tempor velit vulputate. Aenean lacinia ut elit ac pretium. Mauris nec eros luctus, porta nunc eget, suscipit ipsum. Donec nisi odio, hendrerit ac tincidunt vel, gravida nec libero. Praesent hendrerit urna at felis ornare, sit amet venenatis mauris semper. Nunc quam ex, volutpat vel nisl ut, scelerisque accumsan ligula. Duis interdum venenatis rhoncus. Nulla malesuada quam ut sem aliquam efficitur. Sed aliquam tortor tellus, dictum varius mauris porta ac. Phasellus ultricies, ipsum vitae laoreet interdum, massa sem sagittis ante, sit amet tincidunt metus mi at enim. Integer massa dolor, lobortis in nibh auctor, gravida hendrerit nisi. Vivamus ex urna, cursus vel arcu a, molestie dignissim erat.', '2021-09-09'),
(3, 3, 3, 'FIFA 2021', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed leo nulla. Aliquam semper vehicula finibus. Cras rutrum magna a ipsum volutpat, ut tempor velit vulputate. Aenean lacinia ut elit ac pretium. Mauris nec eros luctus, porta nunc eget, suscipit ipsum. Donec nisi odio, hendrerit ac tincidunt vel, gravida nec libero. Praesent hendrerit urna at felis ornare, sit amet venenatis mauris semper. Nunc quam ex, volutpat vel nisl ut, scelerisque accumsan ligula. Duis interdum venenatis rhoncus. Nulla malesuada quam ut sem aliquam efficitur. Sed aliquam tortor tellus, dictum varius mauris porta ac. Phasellus ultricies, ipsum vitae laoreet interdum, massa sem sagittis ante, sit amet tincidunt metus mi at enim. Integer massa dolor, lobortis in nibh auctor, gravida hendrerit nisi. Vivamus ex urna, cursus vel arcu a, molestie dignissim erat.', '2021-09-01'),
(4, 2, 1, 'Assasins Noticias', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed leo nulla. Aliquam semper vehicula finibus. Cras rutrum magna a ipsum volutpat, ut tempor velit vulputate. Aenean lacinia ut elit ac pretium. Mauris nec eros luctus, porta nunc eget, suscipit ipsum. Donec nisi odio, hendrerit ac tincidunt vel, gravida nec libero. Praesent hendrerit urna at felis ornare, sit amet venenatis mauris semper. Nunc quam ex, volutpat vel nisl ut, scelerisque accumsan ligula. Duis interdum venenatis rhoncus. Nulla malesuada quam ut sem aliquam efficitur. Sed aliquam tortor tellus, dictum varius mauris porta ac. Phasellus ultricies, ipsum vitae laoreet interdum, massa sem sagittis ante, sit amet tincidunt metus mi at enim. Integer massa dolor, lobortis in nibh auctor, gravida hendrerit nisi. Vivamus ex urna, cursus vel arcu a, molestie dignissim erat.', '2021-09-21'),
(5, 3, 3, 'WOW online', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed leo nulla. Aliquam semper vehicula finibus. Cras rutrum magna a ipsum volutpat, ut tempor velit vulputate. Aenean lacinia ut elit ac pretium. Mauris nec eros luctus, porta nunc eget, suscipit ipsum. Donec nisi odio, hendrerit ac tincidunt vel, gravida nec libero. Praesent hendrerit urna at felis ornare, sit amet venenatis mauris semper. Nunc quam ex, volutpat vel nisl ut, scelerisque accumsan ligula. Duis interdum venenatis rhoncus. Nulla malesuada quam ut sem aliquam efficitur. Sed aliquam tortor tellus, dictum varius mauris porta ac. Phasellus ultricies, ipsum vitae laoreet interdum, massa sem sagittis ante, sit amet tincidunt metus mi at enim. Integer massa dolor, lobortis in nibh auctor, gravida hendrerit nisi. Vivamus ex urna, cursus vel arcu a, molestie dignissim erat.', '2021-09-07'),
(6, 2, 3, 'PES 2020', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed leo nulla. Aliquam semper vehicula finibus. Cras rutrum magna a ipsum volutpat, ut tempor velit vulputate. Aenean lacinia ut elit ac pretium. Mauris nec eros luctus, porta nunc eget, suscipit ipsum. Donec nisi odio, hendrerit ac tincidunt vel, gravida nec libero. Praesent hendrerit urna at felis ornare, sit amet venenatis mauris semper. Nunc quam ex, volutpat vel nisl ut, scelerisque accumsan ligula. Duis interdum venenatis rhoncus. Nulla malesuada quam ut sem aliquam efficitur. Sed aliquam tortor tellus, dictum varius mauris porta ac. Phasellus ultricies, ipsum vitae laoreet interdum, massa sem sagittis ante, sit amet tincidunt metus mi at enim. Integer massa dolor, lobortis in nibh auctor, gravida hendrerit nisi. Vivamus ex urna, cursus vel arcu a, molestie dignissim erat.', '2021-09-13'),
(7, 3, 1, 'HALO 5', 'NUEVO HALO ', '2021-09-22'),
(10, 4, 6, 'HALO INFINITI', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis dictum massa, non gravida massa. Sed vel magna non sem sollicitudin dignissim eget in nulla. Integer molestie nibh quis cursus accumsan. Aenean ac tortor fermentum, condimentum risus vel, finibus elit. Duis a elit imperdiet mauris efficitur varius in eu neque. Nulla sed ex ac nulla elementum aliquet eu a nisl. Nunc rhoncus odio felis, et sodales risus viverra vitae. Maecenas eget nisl convallis, rutrum magna ut, dapibus leo. Cras pharetra nulla vel pharetra posuere. Sed hendrerit nulla tempor leo aliquet laoreet. Phasellus tempor ultrices turpis, mollis bibendum lorem accumsan ac. Etiam est nulla, vestibulum egestas elementum ut, sodales nec magna.', '2021-10-13'),
(12, 3, 7, 'CALL OF DUTY ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque nunc arcu, ac semper metus laoreet ut. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse pretium dolor ligula, eu elementum risus ullamcorper dapibus. Sed luctus condimentum orci at sagittis. Nam ut turpis justo. Nunc cursus enim vitae justo congue iaculis. Vestibulum lectus diam, malesuada sed aliquet a, vestibulum ut quam. Morbi faucibus, ex non luctus ullamcorper, lacus mi fringilla eros, a convallis quam risus eget lacus.', '2021-10-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `fecha`) VALUES
(1, 'GAEL ', 'SALAZAR ', 'gael@gael.com', '123', '2021-09-16'),
(2, 'Jóse Uriel', 'Salazar Rodriguez', 'gustavo.salazar.rd@gmail.com', '$2y$04$DWdi/GzrxqpXBkFHbby1qOh9DCVF0.R/nZYJZyUa6.9RGBSchUztO', '2021-09-20'),
(3, 'Gustavo', 'Salazar Rodriguez', 'gustavo.salazar.rd@outlook.com', '$2y$04$0clF5ga7w2IHPWtPKr5si.QNONe0YvzWBMfGDeoBH6XK2maMJEqZW', '2021-09-20'),
(4, 'administrador', 'admin', 'admin@admin.com', '$2y$04$SzaNcdnNM4mRAsASTymUKeojRF4dm7CmNk/dUffDcI7S9h/uRdoRi', '2021-10-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_entrada_usuario` (`usuario_id`),
  ADD KEY `fk_entrada_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `fk_entrada_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_entrada_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
