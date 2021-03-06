-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2020 a las 02:42:59
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_php_poo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Manga corta'),
(2, 'Tirantes'),
(3, 'Manga Larga'),
(4, 'Sudaderas'),
(5, 'Lucha Libre'),
(6, 'Gorras'),
(7, 'Chaquetas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_pedidos`
--

CREATE TABLE `lineas_pedidos` (
  `id` int(255) NOT NULL,
  `pedido_id` int(255) NOT NULL,
  `producto_id` int(255) NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lineas_pedidos`
--

INSERT INTO `lineas_pedidos` (`id`, `pedido_id`, `producto_id`, `unidades`) VALUES
(1, 3, 5, 1),
(2, 4, 5, 1),
(3, 5, 5, 1),
(4, 6, 5, 1),
(5, 6, 6, 1),
(6, 6, 7, 1),
(7, 6, 2, 1),
(8, 7, 7, 3),
(9, 7, 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `coste` float(200,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `provincia`, `localidad`, `direccion`, `coste`, `estado`, `fecha`, `hora`) VALUES
(3, 6, 'Madrid', 'Madrid', 'Alcala nÂ°1 Piso 2, puerta c', 50.00, 'confirm', '2020-07-02', '19:12:10'),
(4, 6, 'Madrid', 'Madrid', 'Alcala nÂ°1 Piso 2, puerta c', 50.00, 'confirm', '2020-07-02', '19:19:15'),
(5, 6, 'Madrid', 'Madrid', 'Alcala nÂ°1 Piso 2, puerta c', 50.00, 'confirm', '2020-07-04', '17:43:18'),
(6, 6, 'Madrid', 'Madrid', 'Alcala nÂ°1 Piso 2, puerta c', 100.00, 'ready', '2020-07-04', '18:34:21'),
(7, 8, 'Barcelona', 'El prat', 'Calle Gran Via 8 Piso 1, puerta 6', 90.00, 'sended', '2020-07-04', '19:35:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` float(100,2) NOT NULL,
  `stock` int(255) NOT NULL,
  `oferta` varchar(2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `stock`, `oferta`, `fecha`, `imagen`) VALUES
(1, 1, 'Box logo supreme', 'Box logo supreme dd', 100.00, 20, NULL, '2020-06-29', NULL),
(2, 1, 'Camiseta Vans', 'Vans gris poliester', 20.00, 2333, NULL, '2020-06-29', NULL),
(5, 7, 'Camiseta PUMA 5', 'Camiseta PUMA DSFF 3242', 50.00, 50, NULL, '2020-06-30', 'qqq.jpg'),
(6, 1, 'Camiseta Rayas Azules', 'Camiseta Rayas Azules desc', 10.00, 20, NULL, '2020-07-04', 'ghd.jpg'),
(7, 3, 'Camiseta Nike', 'Camiseta Nike Desc', 20.00, 20, NULL, '2020-07-04', 'uuu.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`, `imagen`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', 'contraseña', 'admin', NULL),
(2, 'dfc', 'ded', 'dsc@sac.com', '$2y$04$mN6Umrg2l8XrsbptVNwWVOqKRadYqg0gZGmTI71vcma0tRukWxpM2', 'user', 'null'),
(3, 'dewdwe', 'dew', 'dew@cds.c', '$2y$04$YlCB4MlN9qqz0mNq5Kb0gebulF.zLpauV6JLTz7xFZykUOWLriwDa', 'user', 'null'),
(4, 'frefre', 'fref', 'MAIL@mail.com', '$2y$04$z02oa9AD40s96CJxkPQpnu1L1g2J/aKUyueW/qu/hjp7q6IliOdk.', 'user', 'null'),
(5, 'fregfe', 'fergf', 'mai@mvre.com', '$2y$04$Qs4WuJXpZcZmdN8P90kk2ufBTNaoXHHACUyOzfdq1C1Q.zqPbLvYa', 'user', 'null'),
(6, 'juan', 'lopez', 'juan@juan.com', '$2y$04$GJ/BTXlGYEgVdQbVih1XEuu8reegU5vLGooNkPVK8Vlf4uBGi24/q', 'admin', 'null'),
(7, 'paco', 'paco', 'paco@paco.com', '$2y$04$FeHjYkO99xA07UpzqQ1m/OUpvAB3uNnlBvvxSpRxh0cC1VD3KsIfW', 'user', 'null'),
(8, 'David', 'Lopez', 'david@david.com', '$2y$04$OgN5oythLqn9Akig2jH8..b0MxbE6vT0mA67yPP2QB7Cy0nu73/Ye', 'user', 'null');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_linea_pedido` (`pedido_id`),
  ADD KEY `fk_linea_producto` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_usuario` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria` (`categoria_id`);

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
-- AUTO_INCREMENT de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD CONSTRAINT `fk_linea_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `fk_linea_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
