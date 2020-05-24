-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2020 a las 17:42:48
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ng_games_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(30) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `dni` varchar(9) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` int(9) NOT NULL,
  `direccion` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `dni`, `correo`, `telefono`, `direccion`, `image`, `created_at`) VALUES
(303, 'Raul', 'Sanchez', '30239346G', 'RaulSanchez@gmail.com', 653310943, 'Julian de avila Nº2', '', '2020-05-04'),
(404, 'raul', 'sanchez', '30239346g', 'raulsredondo2@gmail.com', 653310943, 'c/ julian de avila Nº 2', '', '2020-05-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestos`
--

CREATE TABLE `presupuestos` (
  `id` int(50) NOT NULL,
  `nombre_cliente` text NOT NULL,
  `apellido_cliente` text NOT NULL,
  `created_at` date NOT NULL,
  `telefono` int(9) NOT NULL,
  `direccion` text NOT NULL,
  `precio_total` int(50) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presupuestos`
--

INSERT INTO `presupuestos` (`id`, `nombre_cliente`, `apellido_cliente`, `created_at`, `telefono`, `direccion`, `precio_total`, `dni`, `correo`) VALUES
(831, 'Raul', 'Sanchez', '2020-05-04', 653310943, 'Julian de avila Nº2', 3408, '30239346G', 'RaulSanchez@gmail.com'),
(862, 'Raul', 'Sanchez', '2020-05-04', 653310943, 'Julian de avila Nº2', 63, '30239346G', 'RaulSanchez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(50) NOT NULL,
  `nombre` text NOT NULL,
  `proveedor` varchar(30) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `created_at` date NOT NULL,
  `descripcion` text NOT NULL,
  `stock` int(50) NOT NULL,
  `precio` decimal(50,0) NOT NULL,
  `img` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `proveedor`, `image`, `created_at`, `descripcion`, `stock`, `precio`, `img`) VALUES
(161, 'bollo', 'panaderia juan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJxEI-0xWXSzTw8YtQ9m-fvZOQ2frHa7A0Ctvu86qUD5o__7xX&usqp=CAU', '2020-05-14', 'bollo', 200, '1', ''),
(139, 'bollos', 'panaderia juan', '', '2020-05-14', '', 4, '1', ''),
(36, 'raton', 'Ferretería Jesús', '', '2020-05-14', 'sdasdasd', 20, '20', ''),
(434, 'monitor', 'Ferretería Jesús', '', '2020-05-14', '', 10, '30', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_presupuestos`
--

CREATE TABLE `productos_presupuestos` (
  `id` int(50) NOT NULL,
  `nombre` text NOT NULL,
  `precio` decimal(30,0) NOT NULL,
  `cantidad` int(30) NOT NULL,
  `precio_total` decimal(50,0) NOT NULL,
  `id_presupuesto` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos_presupuestos`
--

INSERT INTO `productos_presupuestos` (`id`, `nombre`, `precio`, `cantidad`, `precio_total`, `id_presupuesto`) VALUES
(1, 'bollos', '1', 10, '10', 831),
(2, 'sdsdadasd', '3243', 1, '3243', 831),
(3, 'HYPER X', '50', 1, '50', 862),
(4, 'bollos', '1', 10, '10', 862);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `calle` text NOT NULL,
  `telefono` int(9) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `calle`, `telefono`, `image`, `created_at`, `descripcion`) VALUES
(365, 'panaderia juan', 'alonso estepa N2', 2147483647, '', '2020-05-04', 'buena panaderia nos sirve de todo'),
(239, 'Ferretería Jesús', 'Antiono manuel N345', 935237533, '', '2020-05-08', ''),
(188, 'raul', 'julian de avila', 954639855, '', '2020-05-14', 'kjashdjkashdjkh');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos_presupuestos`
--
ALTER TABLE `productos_presupuestos`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos_presupuestos`
--
ALTER TABLE `productos_presupuestos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
