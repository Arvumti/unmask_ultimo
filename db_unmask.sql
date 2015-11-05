-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2015 a las 04:38:41
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_unmask nueva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alias`
--

CREATE TABLE IF NOT EXISTS `alias` (
`idAlias` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `alias`
--

INSERT INTO `alias` (`idAlias`, `nombre`, `password`, `correo`, `pais`, `estado`, `created_at`, `updated_at`) VALUES
(2, 'ok', 'ok', 'ok', 'Mexico', 'Veracruz', '2015-03-29 02:48:25', '2015-03-29 02:48:25'),
(33, 'xlllyx', 'sisgobefucraman', 'xlllyx', NULL, NULL, '2015-05-30 20:34:44', '2015-05-30 20:34:44'),
(34, 'tjthouhid', 'x10son11', 'tjthouhid', NULL, NULL, '2015-06-05 20:43:06', '2015-06-05 20:43:06'),
(35, 'd1mich', '1469', 'd1mich', NULL, NULL, '2015-06-06 22:48:21', '2015-06-06 22:48:21'),
(36, 'trembita100', 'philips190wv', 'trembita100', NULL, NULL, '2015-06-07 20:37:24', '2015-06-07 20:37:24'),
(37, 'Mestre', 'warcraft', 'Mestre', NULL, NULL, '2015-06-14 13:11:44', '2015-06-14 13:11:44'),
(38, 'kkkkkkk', 'unmasker', 'kkkkkkk', NULL, NULL, '2015-06-23 08:52:50', '2015-06-23 08:52:50'),
(39, 'pojmen911', 'qwerty911', 'pojmen911', NULL, NULL, '2015-07-24 15:46:37', '2015-07-24 15:46:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amores`
--

CREATE TABLE IF NOT EXISTS `amores` (
`idAmor` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `amores`
--

INSERT INTO `amores` (`idAmor`, `idAlias`, `idPerfil`, `tipo`, `created_at`, `updated_at`) VALUES
(13, 2, 1, 1, '2015-04-28 22:12:39', '2015-04-28 22:12:39'),
(14, 2, 10, 1, '2015-05-04 17:01:52', '2015-05-04 17:01:52'),
(15, 35, 22, 2, '2015-06-06 22:50:49', '2015-06-06 22:50:49'),
(16, 2, 22, 1, '2015-07-08 18:23:57', '2015-07-08 18:23:57'),
(17, 36, 22, 2, '2015-07-20 11:01:17', '2015-07-20 11:01:17'),
(18, 2, 38, 1, '2015-10-31 18:27:09', '2015-10-31 18:27:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apodos_publicos`
--

CREATE TABLE IF NOT EXISTS `apodos_publicos` (
`idApodoPublico` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `apodo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `apodos_publicos`
--

INSERT INTO `apodos_publicos` (`idApodoPublico`, `idPerfil`, `idAlias`, `apodo`, `created_at`, `updated_at`) VALUES
(13, 22, 2, 'El Ferras', '2015-05-18 22:28:49', '2015-05-18 22:28:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
`idComentario` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_fotos`
--

CREATE TABLE IF NOT EXISTS `comentarios_fotos` (
`idComentarioFoto` int(10) unsigned NOT NULL,
  `idFotoPost` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_medias`
--

CREATE TABLE IF NOT EXISTS `comentarios_medias` (
`idComentarioMedia` int(10) unsigned NOT NULL,
  `idMedia` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_posts`
--

CREATE TABLE IF NOT EXISTS `comentarios_posts` (
`idComentarioPost` int(10) unsigned NOT NULL,
  `idPost` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_subfotos`
--

CREATE TABLE IF NOT EXISTS `comentarios_subfotos` (
`idComentarioSubfoto` int(10) unsigned NOT NULL,
  `idSubcomentarioFoto` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confiables`
--

CREATE TABLE IF NOT EXISTS `confiables` (
`idConfiable` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `idRel` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `confiable` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=75 ;

--
-- Volcado de datos para la tabla `confiables`
--

INSERT INTO `confiables` (`idConfiable`, `idAlias`, `idRel`, `tipo`, `confiable`, `created_at`, `updated_at`) VALUES
(27, 2, 19, 3, 1, '2015-04-02 22:21:44', '2015-04-02 22:21:44'),
(28, 2, 19, 4, 0, '2015-04-02 22:21:46', '2015-04-02 22:21:46'),
(29, 2, 31, 5, 1, '2015-04-02 22:24:32', '2015-04-02 22:24:32'),
(30, 2, 30, 5, 1, '2015-04-02 22:28:17', '2015-04-02 22:28:17'),
(31, 2, 32, 5, 1, '2015-04-02 22:28:21', '2015-04-02 22:28:21'),
(32, 2, 36, 5, 1, '2015-04-02 22:42:55', '2015-04-02 22:42:55'),
(33, 2, 21, 3, 1, '2015-04-02 22:43:13', '2015-04-02 22:43:13'),
(34, 2, 22, 3, 1, '2015-04-03 01:11:01', '2015-04-03 01:11:01'),
(35, 2, 23, 3, 1, '2015-04-03 01:39:09', '2015-04-03 01:39:09'),
(36, 2, 23, 4, 0, '2015-04-03 01:40:22', '2015-04-03 01:40:22'),
(37, 2, 41, 5, 1, '2015-04-03 01:44:00', '2015-04-03 01:44:00'),
(38, 2, 8, 6, 1, '2015-04-03 02:15:20', '2015-04-03 02:15:20'),
(39, 2, 8, 7, 1, '2015-04-03 02:15:27', '2015-04-03 02:15:27'),
(40, 2, 0, 8, 1, '2015-04-03 02:15:34', '2015-04-03 02:15:34'),
(46, 2, 1, 6, 1, '2015-04-04 06:25:39', '2015-04-04 06:25:39'),
(47, 2, 0, 5, 1, '2015-04-04 06:39:56', '2015-04-04 06:39:56'),
(48, 2, 38, 5, 1, '2015-04-04 06:50:14', '2015-04-04 06:50:14'),
(49, 2, 25, 4, 1, '2015-04-04 23:31:53', '2015-04-04 23:31:53'),
(50, 2, 40, 5, 1, '2015-04-04 23:32:33', '2015-04-04 23:32:33'),
(51, 2, 9, 6, 1, '2015-04-04 23:37:21', '2015-04-04 23:37:21'),
(52, 2, 30, 4, 1, '2015-04-05 02:28:18', '2015-04-05 02:28:18'),
(53, 2, 10, 6, 1, '2015-04-05 04:38:39', '2015-04-05 04:38:39'),
(54, 2, 30, 3, 1, '2015-04-05 05:47:03', '2015-04-05 05:47:03'),
(55, 2, 5, 7, 1, '2015-04-05 06:02:08', '2015-04-05 06:02:08'),
(56, 2, 5, 6, 1, '2015-04-05 06:02:11', '2015-04-05 06:02:11'),
(57, 2, 32, 4, 1, '2015-04-05 06:11:35', '2015-04-05 06:11:35'),
(58, 2, 32, 3, 1, '2015-04-05 06:11:37', '2015-04-05 06:11:37'),
(59, 2, 55, 5, 1, '2015-04-05 06:12:54', '2015-04-05 06:12:54'),
(60, 2, 57, 5, 1, '2015-04-05 06:13:15', '2015-04-05 06:13:15'),
(61, 2, 10, 7, 0, '2015-04-05 06:32:21', '2015-04-05 06:32:21'),
(62, 2, 8, 8, 1, '2015-04-05 06:37:32', '2015-04-05 06:37:32'),
(63, 2, 6, 8, 1, '2015-04-05 06:37:47', '2015-04-05 06:37:47'),
(64, 2, 12, 6, 1, '2015-04-05 20:32:33', '2015-04-05 20:32:33'),
(65, 2, 37, 3, 1, '2015-04-06 00:01:17', '2015-04-06 00:01:17'),
(66, 2, 21, 4, 1, '2015-04-08 20:45:19', '2015-04-08 20:45:19'),
(67, 2, 49, 3, 1, '2015-04-11 03:31:34', '2015-04-11 03:31:34'),
(68, 2, 33, 5, 1, '2015-04-11 03:32:24', '2015-04-11 03:32:24'),
(69, 2, 34, 5, 0, '2015-04-11 03:32:30', '2015-04-11 03:32:30'),
(70, 2, 50, 3, 1, '2015-04-12 17:48:43', '2015-04-12 17:48:43'),
(72, 2, 9, 3, 1, '2015-04-14 22:40:14', '2015-04-14 22:40:14'),
(73, 2, 126, 3, 1, '2015-07-09 18:40:38', '2015-07-09 18:40:38'),
(74, 2, 2, 7, 1, '2015-08-07 01:33:21', '2015-08-07 01:33:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
`idEstado` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`idEstado`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Durango', '2015-03-29 02:48:25', '2015-03-29 02:48:25'),
(2, 'prueba', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_posts`
--

CREATE TABLE IF NOT EXISTS `fotos_posts` (
`idFotoPost` int(10) unsigned NOT NULL,
  `idPost` int(10) unsigned NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `fotos_posts`
--

INSERT INTO `fotos_posts` (`idFotoPost`, `idPost`, `foto`, `created_at`, `updated_at`) VALUES
(1, 125, 'e_1507081413091436382789081.jpg', '2015-07-08 19:13:09', '2015-07-08 19:13:09'),
(2, 127, 'e_1507101725171436567117016.jpg', '2015-07-10 22:25:17', '2015-07-10 22:25:17'),
(3, 127, 'e_1507101725171436567117090.jpg', '2015-07-10 22:25:17', '2015-07-10 22:25:17'),
(4, 127, 'e_1507101725171436567117347.jpg', '2015-07-10 22:25:17', '2015-07-10 22:25:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_publicas`
--

CREATE TABLE IF NOT EXISTS `fotos_publicas` (
`idNombrePublico` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `fotos_publicas`
--

INSERT INTO `fotos_publicas` (`idNombrePublico`, `idPerfil`, `idAlias`, `foto`, `created_at`, `updated_at`) VALUES
(12, 22, 2, 'f_1505181759591431989999993.jpg', '2015-05-18 22:59:59', '2015-05-18 22:59:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascaras`
--

CREATE TABLE IF NOT EXISTS `mascaras` (
`idMascara` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `mascaras`
--

INSERT INTO `mascaras` (`idMascara`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Ratero', '2015-03-29 02:48:26', '2015-03-29 02:48:26'),
(2, 'Corrupto', '2015-03-29 02:48:26', '2015-03-29 02:48:26'),
(3, 'Infiel', '2015-03-29 02:48:26', '2015-03-29 02:48:26'),
(4, 'Filantropo', '2015-03-29 02:48:26', '2015-03-29 02:48:26'),
(5, 'Ladron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Altruista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Amigo Leal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Socio Fiel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Abuso de Celebridad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Violador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Jefe Injusto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Acoso Escolar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Corrupcion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Ninfomania', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascaras_perfiles`
--

CREATE TABLE IF NOT EXISTS `mascaras_perfiles` (
`idMascaraPerfil` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idMascara` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascaras_publicas`
--

CREATE TABLE IF NOT EXISTS `mascaras_publicas` (
`idMascaraPublica` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `mascaras_publicas`
--

INSERT INTO `mascaras_publicas` (`idMascaraPublica`, `idPerfil`, `idAlias`, `nombre`, `created_at`, `updated_at`) VALUES
(31, 22, 2, 'Ladron', '2015-05-18 22:28:49', '2015-05-18 22:28:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medias`
--

CREATE TABLE IF NOT EXISTS `medias` (
`idMedia` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_01_19_183540_create_paises_table', 1),
('2015_01_19_183644_create_ubicaciones_table', 1),
('2015_01_19_184935_create_alias_table', 1),
('2015_01_19_185504_create_perfiles_table', 1),
('2015_01_19_185958_create_ranks_table', 1),
('2015_01_19_190332_create_comentarios_table', 1),
('2015_01_19_190533_create_mascaras_table', 1),
('2015_01_19_190640_create_medias_table', 1),
('2015_01_21_165913_create_mascaras_perfiles_table', 1),
('2015_03_09_181158_create_relaciones_table', 1),
('2015_03_18_230650_create_posts_table', 1),
('2015_03_19_153914_create_fotos_posts_table', 1),
('2015_03_19_163703_create_ranks_posts_table', 1),
('2015_03_24_015149_create_estados_table', 1),
('2015_03_26_225907_create_comentariosPosts_table', 1),
('2015_03_28_193532_create_comentarios_fotos_table', 1),
('2015_03_28_193709_create_ranks_fotos_table', 1),
('2015_03_31_012022_create_comentarios_medias_table', 2),
('2015_04_01_021301_create_ranks_medias_table', 2),
('2015_04_01_022924_create_confiables_table', 2),
('2015_04_01_202351_create_subcomentarios_table', 3),
('2015_04_01_223358_create_subcomentarios_fotos_table', 3),
('2015_04_02_180115_create_comentarios_subfotos_table', 4),
('2015_04_02_180303_create_ranks_subfotos_table', 4),
('2015_04_02_184436_create_ranks_subcomentarios_table', 4),
('2015_04_07_163545_create_mascaras_publicas_table', 5),
('2015_04_07_163721_create_redes_publicas_table', 5),
('2015_04_09_125444_create_perfiles_publicos_table', 6),
('2015_04_11_143128_create_ranks_perfiles_tables', 7),
('2015_04_13_144106_add_link_posts_table', 8),
('2015_04_13_145110_add_link_subcomentarios_table', 8),
('2015_04_17_132010_update_perfiles_add_apellidos', 9),
('2015_04_17_133211_create_apodos_publicos_table', 10),
('2015_04_17_134321_create_perfiles_foto_table', 11),
('2015_04_17_164533_create_nombres_publicos_apellidos', 12),
('2015_04_17_192111_create_fotos_publicos_table', 13),
('2015_04_26_234836_create_amores_table', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombres_publicos`
--

CREATE TABLE IF NOT EXISTS `nombres_publicos` (
`idNombrePublico` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odio_amor`
--

CREATE TABLE IF NOT EXISTS `odio_amor` (
  `idVoto` int(10) NOT NULL,
  `idPerfil` int(10) NOT NULL,
  `idAlias` int(11) NOT NULL,
  `odio` int(11) NOT NULL,
  `amor` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
`idPais` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`idPais`, `nombre`, `created_at`, `updated_at`) VALUES
(22, 'Mexico', '2015-04-13 20:17:36', '2015-04-13 20:17:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
`idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mascaras` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confesion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret_pub` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `apaterno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amaterno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`idPerfil`, `idAlias`, `nombre`, `mascaras`, `confesion`, `facebook`, `twitter`, `instagram`, `secret`, `secret_pub`, `foto`, `pais`, `estado`, `municipio`, `ciudad`, `colonia`, `created_at`, `updated_at`, `apaterno`, `amaterno`) VALUES
(22, 2, 'Felipe', 'Ladron', '', '', '', '', '', 'SUPER RUPA SE ROBA TOKIO', 'p_1505181728491431988129657.jpg', 'Mexico', 'Veracruz', 'Xalapa', 'Rio', '', '2015-05-18 22:28:49', '2015-07-10 22:25:16', 'Ferra ', 'Gómez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles_publicos`
--

CREATE TABLE IF NOT EXISTS `perfiles_publicos` (
`idPerfilPublico` int(10) unsigned NOT NULL,
  `idPerfilBase` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `idPerfilRelacion` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`idPost` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `secret` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `confesion` varchar(2550) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_evi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=128 ;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`idPost`, `idAlias`, `idPerfil`, `secret`, `confesion`, `foto`, `link`, `tipo`, `created_at`, `updated_at`, `link_evi`) VALUES
(1, 2, 22, 'Me robe una cadena adiamantada y mate a mi compa', 'Me robe una cadena adiamantada y mate a mi compa', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(125, 2, 22, 'ROBO CADENA ADIAMANTADA Y MATO A SU AMIGO', 'ROBO CADENA ADIAMANTADA Y MATO A SU AMIGO', '', '', 4, '2015-05-18 22:59:35', '2015-05-18 22:59:35', ''),
(126, 35, 22, 'test', 'Test', '', '', 4, '2015-06-06 22:51:46', '2015-06-06 22:51:46', ''),
(127, 2, 22, 'SUPER RUPA SE ROBA TOKIO', 'ESTE ES BIEN RUPA', '', 'qMEsF3zHZus', 4, '2015-07-10 22:25:16', '2015-07-10 22:25:16', 'http://www.wearesabbath.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
`idRank` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks_fotos`
--

CREATE TABLE IF NOT EXISTS `ranks_fotos` (
`idRank` int(10) unsigned NOT NULL,
  `idFotoPost` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks_medias`
--

CREATE TABLE IF NOT EXISTS `ranks_medias` (
`idRankMedia` int(10) unsigned NOT NULL,
  `idMedia` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks_perfiles`
--

CREATE TABLE IF NOT EXISTS `ranks_perfiles` (
`idRankPerfil` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks_posts`
--

CREATE TABLE IF NOT EXISTS `ranks_posts` (
`idRank` int(10) unsigned NOT NULL,
  `idPost` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ranks_posts`
--

INSERT INTO `ranks_posts` (`idRank`, `idPost`, `idAlias`, `corazon`, `estrella`, `blike`, `carita`, `cake`, `caca`, `craneo`, `bug`, `gota`, `enojo`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 127, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015-08-10 23:17:18', '2015-08-10 23:17:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks_subcomentarios`
--

CREATE TABLE IF NOT EXISTS `ranks_subcomentarios` (
`idRankSubcomentario` int(10) unsigned NOT NULL,
  `idSubcomentario` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranks_subfotos`
--

CREATE TABLE IF NOT EXISTS `ranks_subfotos` (
`idRankSubfoto` int(10) unsigned NOT NULL,
  `idSubcomentarioFoto` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `corazon` int(11) NOT NULL,
  `estrella` int(11) NOT NULL,
  `blike` int(11) NOT NULL,
  `carita` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `caca` int(11) NOT NULL,
  `craneo` int(11) NOT NULL,
  `bug` int(11) NOT NULL,
  `gota` int(11) NOT NULL,
  `enojo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_publicas`
--

CREATE TABLE IF NOT EXISTS `redes_publicas` (
`idRedPublica` int(10) unsigned NOT NULL,
  `idPerfil` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaciones`
--

CREATE TABLE IF NOT EXISTS `relaciones` (
`idRelacion` int(10) unsigned NOT NULL,
  `idPerfilBase` int(10) unsigned NOT NULL,
  `idPerfilRelacion` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcomentarios`
--

CREATE TABLE IF NOT EXISTS `subcomentarios` (
`idSubcomentario` int(10) unsigned NOT NULL,
  `idAlias` int(10) unsigned NOT NULL,
  `idPost` int(10) unsigned NOT NULL,
  `comentario` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_evi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `subcomentarios`
--

INSERT INTO `subcomentarios` (`idSubcomentario`, `idAlias`, `idPost`, `comentario`, `video`, `created_at`, `updated_at`, `link_evi`) VALUES
(1, 2, 126, 'dsdsasdsasadasd', '', '2015-07-08 19:14:40', '2015-07-08 19:14:40', ''),
(2, 2, 127, 'saddsdffdfsdfsdfssfd', '3eacYVrD4fA', '2015-07-10 22:26:38', '2015-07-10 22:26:38', 'https://www.behance.net/sabbathvisuals');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcomentarios_fotos`
--

CREATE TABLE IF NOT EXISTS `subcomentarios_fotos` (
`idSubcomentarioFoto` int(10) unsigned NOT NULL,
  `idSubcomentario` int(10) unsigned NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `subcomentarios_fotos`
--

INSERT INTO `subcomentarios_fotos` (`idSubcomentarioFoto`, `idSubcomentario`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 2, 'e_1507101726381436567198771.jpg', '2015-07-10 22:26:38', '2015-07-10 22:26:38'),
(2, 2, 'e_1507101726381436567198876.jpg', '2015-07-10 22:26:38', '2015-07-10 22:26:38'),
(3, 2, 'e_1507101726381436567198880.jpg', '2015-07-10 22:26:38', '2015-07-10 22:26:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcountry`
--

CREATE TABLE IF NOT EXISTS `tcountry` (
  `COUNTRY_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tcountry`
--

INSERT INTO `tcountry` (`COUNTRY_ID`, `NAME`) VALUES
(1, 'USA'),
(2, 'Canada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgender`
--

CREATE TABLE IF NOT EXISTS `tgender` (
  `GENDER_ID` smallint(6) NOT NULL DEFAULT '0',
  `NAME` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tgender`
--

INSERT INTO `tgender` (`GENDER_ID`, `NAME`) VALUES
(1, 'Female'),
(2, 'Male');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpeople`
--

CREATE TABLE IF NOT EXISTS `tpeople` (
  `PEOPLE_ID` int(11) NOT NULL DEFAULT '0',
  `NICKNAME` varchar(16) DEFAULT NULL,
  `FIRST_NAME` varchar(24) DEFAULT NULL,
  `LAST_NAME` varchar(24) DEFAULT NULL,
  `STREET` varchar(70) DEFAULT NULL,
  `CITY` varchar(28) DEFAULT NULL,
  `ZIP` varchar(16) DEFAULT NULL,
  `COUNTRY` int(11) DEFAULT NULL,
  `PHONE` varchar(24) DEFAULT NULL,
  `WORK_PHONE` varchar(24) DEFAULT NULL,
  `MOBILE_PHONE` varchar(24) DEFAULT NULL,
  `GENDER` smallint(6) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `PROFILE_CAPTION` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tpeople`
--

INSERT INTO `tpeople` (`PEOPLE_ID`, `NICKNAME`, `FIRST_NAME`, `LAST_NAME`, `STREET`, `CITY`, `ZIP`, `COUNTRY`, `PHONE`, `WORK_PHONE`, `MOBILE_PHONE`, `GENDER`, `BIRTHDAY`, `PROFILE_CAPTION`, `EMAIL`) VALUES
(9, 'Rational', 'Darren', 'Morgenstern', '39 Roehampton Ave.', 'Toronto', 'M2P1R4', 1, '416-487-2210', '1234567', '', 2, '1963-12-21', 'I May Be Spoken 4 But I Speak 4 Myself.', 'darren@housecapades.com'),
(10, 'Sensuous Kitten', 'Mary', 'Premmer', '876 Clive Ave', 'York Region', 'm2p1r4', 1, '905-771-2178', '', '', 1, '1977-09-12', 'I''m having trouble with my computer..send a message!', 'dmorgenstern@rogers.com'),
(11, 'Sweet Cheeks 23', 'Marissa', 'Mayles', '214 Old Yonge', 'Toronto', '', 1, '416-512-2200', '', '', 1, '1978-05-18', 'Any Discreet Serious Men out there?', 'marissa_mayles@hotmail.com'),
(12, 'sexygal', 'Jennifer', 'Rosenberg', '37 Castle Harbour lane', 'Toronto', 'M4G 2L5', 1, '905 8813570', '416 4801614', '', 1, '1976-01-11', 'can you handle it?', '600@ashleymadison.com'),
(13, 'Butterfly', 'Butterfly', 'Jones', 'W 23rd St', 'Toronto', 'm5b2p1', 1, '555-555-5555', '', '', 1, '1967-04-05', 'Not sure what I want yet', 'tanya_dercach@courtesysupportteam.net'),
(15, 'honeybunch', 'C1', 'C1', '1535 young st', 'Toronto', '', 1, '4169671111', '', '', 1, '1971-06-27', 'Are you man enough for my appetite?', '200@ashleymadison.com'),
(16, 'nick', 'Dave', 'Johnson', '1234  forest hill', 'Toronto', '', 1, '4167091412', '4163381212', '4169671111', 2, '1970-11-11', 'looking good,feeling great.....now let''s communicate', 'davestra_@hotmail.com'),
(17, 'princess', 'B02', 'B02', '367 Sheppard Avenue', 'Toronto', 'm4r 5t6', 1, '416-224-9757', '416-654-1645', '', 1, '1978-02-14', 'Looking for prince charming', '400@ashleymadison.com'),
(18, 'Lauren', 'Lauren', 'Freed', '78 gretman cresent', 'Thornhill', '', 1, '905 764 9748', '416 480 11 88', '', 1, '1978-03-25', 'I love to make new friends', 'laurenfreedman@ashleymadison.com'),
(19, 'Mandy', 'Amanda', 'Weisbrod', '29 Blue Field Way', 'North York', '', 1, '416-756-9564', '', '', 1, '1976-08-24', 'Can You Read My Mind?', 'amandaweis29@hotmail.com'),
(20, 'Misty Bleau', 'Liz', 'Barbery', '1422 Mississauga Valley Blvd', 'Miss', '', 1, '905-276-4846', '', '', 1, '1966-03-07', 'Let''s start as friends..', 'misty_bleau@yahoo.com'),
(21, 'Alley OOPS!', 'Alley', 'Birch', '77 Glen Echo Dr.', 'Toronto', '', 1, '418-445-4308', '', '', 1, '1970-12-26', 'Be Gentle! I''m new at this.', 'alleyoop1978@hotmail.com'),
(22, 'Blue Eyes', 'Linda', 'Carrington', '14 Brewer Pl.', 'Keswick', '', 1, '905-476-4992', '', '', 1, '1976-07-13', 'Let''s Have Coffee and....?', 'lindacarrington76@hotmail.com'),
(23, 'Dutchess', 'Anar', 'Fija', '1800 Martingrove', 'Etobicoke', '', 1, '416-749-1728', '', '', 1, '1961-03-18', 'Discretion a must!', 'anarfigigigi@hotmail.com'),
(24, 'corinder', 'Corey', 'Babahinder', '5', 'Toronto', 'm4s1z4', 1, '4160000000', '', '', 1, '1969-03-05', 'Let''s meet in Vegas!', 'info@groovemusiccanada.com'),
(26, 'Alli', 'Alison', 'Cosburn', '98 Gully Drive', 'Toronto', '', 1, '416-266-3345', '', '', 1, '1969-06-03', 'Hi Guys!', 'acosburnrules@sympatico.ca'),
(27, 'Oh Donna', 'Donna', 'Chin', '3700 Keele St.', 'Toronto', '', 1, '0000000', '', '', 1, '1972-02-19', 'No Disrespect please - just honesty', 'dchin513@yahoo.com'),
(28, 'DEMI', 'Dmitra', 'Dulkhia', '100 cAVELL', 'Toronto', '', 1, '416-513-3031', '', '', 1, '1969-10-15', 'Any One For Phone Chat?', 'demidulkhia@sympatico.ca'),
(29, 'Gorgeous Doris', 'Doris', 'Forero', '4 Markhall', 'Toronto', '', 1, '416-236-5693', '', '', 1, '1965-11-05', 'Catch My Interest If U Can...', '459y778@hotmail.com'),
(30, 'wende', 'Wendy', 'Razauskas', '270 Scarlett', 'Etobicoke', '', 1, '416-767-1330', '', '', 1, '1960-05-06', 'No Games Please.', 'wenderazauskas@hotmail.com'),
(31, 'Not Too Shabby', 'R', 'Shaabani', 'rgoiror', 'Toronto', '', 1, '0000000', '', '', 1, '1972-09-10', 'I''d love to meet a caucasion man for...', 'shabbydoo54854@hotmail.com'),
(32, 'kitty', 'Rebecca', 'Shultz', '54 Willowbrook rd', 'Toronto', '55555555', 1, '905 764-8525', '416 486-2258', '416 716-4396', 1, '1969-09-09', 'I need to be satisfied', '600@ashleymadison.com'),
(33, 'fuzzy peach', 'Lindsey', 'Freedman', '89 Apple rd', 'Toronto', '5555555', 1, '416 365-2365', '', '416 561-3652', 1, '1957-03-13', 'I am looking for you', 'foxybrown411@hotmail.com'),
(36, 'Beachesjohn', 'John', 'Davidson', '177 Wheeler Ave.', 'Toronto', 'M5V2X5', 1, '416-676-3862', '', '', 2, '1968-03-23', 'Dinner for two, and then...', 'moviejcd@aol.com'),
(37, 'mr exec', 'Victor', 'Deschenes', '917 nipissing road c', 'Toronto', 'L9T5E3', 1, '905-875-0023', '905-875-0023', '', 2, '1961-12-04', 'mature and fun looking for younger!!', 'expediteminus@yahoo.ca'),
(38, 'ray', 'Ray', 'Barr', '252 blair rd', 'Stouffville', 'l4g 7v9', 1, '905-642-1998', '', '', 2, '1952-04-25', 'sexy ladies please step foward', 'raybarr@sympatico.ca'),
(39, 'Open to..', 'Rennie', 'Ward', '325 jessie St', 'Scar', '', 1, '416-756-4876', '', '', 1, '1976-07-10', 'Any Suggestions to get my interest?', 'rebabovinese@hotmail.com'),
(40, 'Unappreciated', 'Wanda', 'Remmie', '393 heskor ave', 'Brampton', '', 1, '906-475-0508', '', '', 1, '1969-08-08', 'This is very exciting', 'rennieobserver@yahoo.com'),
(41, 'Strut', 'Marcia', 'Struthers', '145 Eglinton Ave E', 'Toronto', '', 1, '(416)424-8581', '', '', 1, '1962-04-11', '"Looking for some fun!"', 'marcm2k@hotmail.com'),
(42, 'DAN', 'Larry', 'Hoover', '3200 DUFFERIN ST', 'Toronto', 'M6A3B2', 1, '4162560300', '', '', 2, '1957-03-06', 'Searching?', 'douped@hotmail.com'),
(43, 'DishDaf', 'C7', 'C7', '2474 The West Mall', 'Toronto', '', 1, '416 478 2456', '', '', 1, '1968-02-10', 'Looking for realistic men', '200@ashleymadison.com'),
(44, 'Angel', 'C8', 'C8', '856 The Queensway Ave', 'Toronto', '', 1, '416 895 6568', '', '', 1, '1973-09-26', 'Looking for erotic sex & Romance', '200@ashleymadison.com'),
(45, 'Misssexxy2u2', 'C6', 'C6', '14 Driftwood Ave', 'Toronto', '', 1, '416 630 6587', '', '', 1, '1975-07-20', 'Thick Chocolate Tai.....', '200@ashleymadison.com'),
(46, 'leanie', 'C5', 'C5', '1547 Scarborough Road East', 'Scarborough', '', 1, '416-875-8624', '', '', 1, '1957-05-09', 'Hot Blonde''s Lust is insatiable', '200@ashleymadison.com'),
(47, 'Mojo', 'B11', 'B11', '93 Grandravine Dr', 'North York', 'm5b 7h5', 1, '416-630-6521', '', '', 1, '1968-04-29', 'Lolita for Mature Teddy Bears', '400@ashleymadison.com'),
(48, 'smiles', 'B12', 'B12', '925 Jane St.', 'Toronto', 'm5b 7h5', 1, '416 857 9878', '', '', 1, '1975-02-14', 'Adding Some Spice', '400@ashleymadison.com'),
(49, 'hotspot', 'B10', 'B10', '1 Fountainhead Rd', 'Toronto', 'n6h 7g5', 1, '416 738 8478', '', '', 1, '1981-08-26', 'can you take me to a hotspot?', '400@ashleymadison.com'),
(50, 'Ms. Scarlett', 'B08', 'B08', '145 Chalk Farm Ave', 'Toronto', '123456', 1, '416-985 8564', '', '', 1, '1971-01-29', 'I dare you.', '400@ashleymadison.com'),
(51, 'Curly', 'B09', 'B09', '859 Grand Ravine Dr.', 'Toronto', 'm2n 3r3', 1, '416-968-9857', '', '', 1, '1977-11-06', 'Cum Join me for some fun....', '400@ashleymadison.com'),
(53, 'wildbanana', 'Salem', 'Solomon', '399 Markham Road', 'Scarborough', 'M1J3C9', 1, '416 2920220', '', '', 2, '1970-01-15', 'No hold bared', 'porojo@hotmail.com'),
(54, 'Dick', 'Richard', 'Clare', '297Belfield St.', 'London', '', 1, '4345441', '8575197', '8575197', 2, '1951-05-30', 'Easygoing&Openminded', 'mcoward@odyssey.on.ca'),
(55, 'Friendly Visitor', 'Mark', 'Dicesare', 'RR 1 Cambridge', 'Cambridge', '0000', 1, '416-991-8550', '', '', 2, '1961-09-06', 'Hello', 'darren@morgenstern.com'),
(56, 'Kip', 'Andy', 'Abbott', '1409 Yonge St.', 'Toronto', '', 1, '416-934-1775', '', '647-284-4424', 2, '1970-12-06', 'Hello there,', 'btgi88@hotmail.com'),
(57, 'monkeybusiness', 'Scott', 'Yamada', '191 Colbeck st.', 'Toronto', 'M9A3A4', 1, '416-760-7255', '416-760-7255', '', 2, '1971-11-01', 'I''m up to no good', 'sdy191@gmail.com'),
(58, 'zamorano', 'Carlos', 'Rojas', '230 woolner ave', 'Toronto', 'm6n2p3', 1, '416 769 3116', '', '416 526 1302', 2, '1971-05-06', 'hello, trying this for the 1st time', 'cjs_home@hotmail.com'),
(59, 'shreena', 'Shreena', 'Yusuff', '1313 Dixon Rd', 'Etobicoke', '', 1, '416-492-9763', '416-791-9961', '', 1, '1972-12-23', 'contact me', 'msr_1324@hotmail.com'),
(60, 'bigjay74', 'Jay', 'Smith', '42 danforth ave', 'Toronto', '', 1, '4164563422', '.', '.', 2, '1974-10-09', 'I''m a stud that can last longer than the energizer bunny', 'brandished@rogers.com'),
(61, 'funkit', 'Carl', 'Spencer', '12 Huson rd', 'Brampton', 'l7a-2m8', 1, '416 727 0392', '', '', 2, '1967-03-12', 'open to anything', 'jahmbox@rogers.com'),
(62, 'Sexy Sarah', 'Sarah', 'Markboro', '48 Defranco', 'Pickering', '', 1, '905-271-5954', '', '', 1, '1959-10-18', 'Hello to you!', 'darren@morgenstern.com'),
(63, 'neutrino', 'Alex', 'Georgakis', '7045 Wiseman', 'Montreal', '', 1, '514-495-1291', '', '', 2, '1977-12-03', 'New member... still exploring', 'a_georgakis@hotmail.com'),
(64, 'Vanguy', 'Dan', 'Esplen', '6837 Station Hill Drive', 'Burnaby', '', 1, '604-515-0606', '', '', 2, '1956-11-19', 'no head games', 'dan_esplen@hotmail.com'),
(66, 'Tickle Me Dimi', 'Demetrios', 'Gicas', '38 Highland Cres.', 'Toronto', '', 1, '(416) 730-1371', '(416) 336-8419', '(416) 801-0810', 2, '1973-02-28', 'Move over Rover and let Dimi take over!!!', 'crazytal@aol.com'),
(67, 'vixen', 'B202 Vixen', 'B202 Greene', '123 1st Ave', 'Montreal', 'L2v1h3', 1, '5555555555', '', '', 1, '1974-04-03', 'older men are a real turn on', '400@ashleymadison.com'),
(68, 'gianni', 'Lucio', 'Soprano', '23 hedge', 'Montreal', 'h9w 1x1', 1, '514-630-5251', '', '', 2, '1966-06-20', 'lets get together', 'ddanza@hotmail.com'),
(69, 'miketoronto68', 'Mike', 'B', '6161 Bathurst', 'North York', 'M2R1Z6', 1, '416-664-3215', '416-259-7885', '416-294-6217', 2, '1968-10-22', 'Single, Cute & Funny', 'miketoronto68@hotmail.com'),
(70, 'BeachBummm', 'Bryan', 'Trieb', '63 Montvale Dr.', 'Toronto', 'M1M 3E5', 1, '416.726.2052', '', '', 2, '1970-11-29', '...just back from Europe..', 'firesign1970@hotmail.com'),
(72, 'Papichulo', 'Mario', 'Martinez', '2801 jane st. apt#614', 'Toronto', '', 1, '416 633-6858', '', '', 2, '1980-02-14', 'Latinlover', 'papichulo_1428@hotmail.com'),
(73, 'Married&Bored', 'Anthony', 'Gatherall', '312 carnarvon st.', 'Victoria', 'v9a4r4', 1, '604 520 6688', '604 565 2903', '604 520 3232', 2, '1967-03-10', 'I think we are in ths same boat, it''s time to sink or swim', 'aj67g@hotmail.com'),
(74, 'Elwood7', 'Ethan', 'Fletcher', '2282 westminster dr', 'London', 'N6N1L7', 1, '680 9911', '', '', 2, '1973-04-02', 'cum swallow me', 'ethan750@hotmail.com'),
(75, 'billyb', 'Bill', 'Beckett', '307 Colunbia', 'New Westminster', '', 1, '604-313-0428', '', '', 2, '1952-07-07', 'Looking for discreet encounters', 'anotherbillyb@hotmail.com'),
(76, 'outhere', 'Chris', 'Michalski', '37 Sun Valley drive', 'Toronto', 'M6S4P7', 1, '4165627940', '', '', 2, '1971-02-26', 'looking for fun for two', 'nnn_999@hotmail.com'),
(77, 'climberman', 'Mike', 'Homes', '#6-11455-201a street', 'Maple Ridge', '', 1, '604-460-0808', '', '', 2, '1964-01-23', 'i am definately worth a look', 'climberman2000@yahoo.com'),
(78, 'funlover', 'Denis', 'Leahy', '5201 Papineau', 'Montreal', '', 1, '450-695-3285', '', '', 2, '1963-01-01', 'share good times', 'gohikingca@yahoo.com'),
(79, 'westendtoronto', 'Jeanguy', 'Daigle', '7216 airport road', 'Mississauga', '', 1, '905-671-3197', '', '', 2, '1965-10-16', 'deperate times call for desperate measures', 'geester@sympatico.ca'),
(80, 'tinman104', 'Jeff', 'Singer', '1316 40th st', 'Parkersburg', '', 1, '304-485-6024', '304-422-5495', '', 2, '1953-10-04', 'looking to please!!!', 'jeffsinger@charter.net'),
(81, 'southeurope', 'Jasmin', 'Kovacevic', '1984 tyler trce', 'Lawrenceville', '', 1, '6782412679', '770 9897788', 'none', 2, '1969-09-01', 'just for fun', 'ga1997jk@hotmail.com'),
(82, 'midnitepainter', 'Jeff', 'Butcher', '204 bayview', 'Newmarket', 'l4p2t2', 1, '9891443', '', '8989326', 2, '1964-11-25', 'life''s too short not to!!', 'midnitepainter@hotmail.com'),
(83, 'bus', 'Jake', 'Gaston', 'ottawa', 'Ottawa', '', 1, '6132853212', '6135856965', '', 2, '1974-02-16', 'discret encounter', 'bus0058@hotmail.com'),
(84, '22fireman', 'Jim', 'Podgorski', '25823 mulberry', 'Farmington', '48375', 1, '248 396-4132', '', '', 2, '1965-03-17', 'Daytime erotic fun found here', 'hotfireman19650@yahoo.com'),
(85, 'shalom', 'Ed', 'Saso', '722 torbram', 'Mississauga', '', 1, '905 568 2668', '', '416 277 1819', 2, '1960-10-10', 'eee', 'ea1819@hotmail.com'),
(86, 'PILOT DEAN', 'Dean', 'Pepper', '2 STUART STREET', 'Cobourg', 'K9A 3S4', 1, '905-372-3030', '', '', 2, '1956-08-04', 'CUM FLY AWAY WITH ME', 'deanpepper@hotmail.com'),
(87, 'a_riot', 'Paul', 'Graham', '9 Madison AVe', 'Toronto', 'M5A 5C7', 1, '416.455.3245', '', '', 2, '1973-04-14', 'Pretty women will be my downfall...lol', 'a_riot@yahoo.com'),
(88, 'Slade', 'Jim', 'Summers', 'RR1 Elmer', 'London', '', 1, '519-860-6246', '', '', 2, '1954-08-22', 'Very open minded.....', 'xxxstar24@hotmail.com'),
(89, 'damonjams', 'James', 'Main', '10631 madrona Drive', 'Victoria', 'v8l5l8', 1, '656-7892', '', '', 2, '1977-09-29', 'hi all', 'damonjams@hotmail.com'),
(90, 'Angel Eyes', 'Necian', 'Payne', '180 Kennedy', 'Hamilton', 'l4J jq8', 1, '9050000000', '', '', 1, '1977-07-06', 'If I tell you what I want. Can you deliver?', '700@ashleymadison.com'),
(91, 'JetFlyer44', 'Jim', 'Lillico', '610 Bullock', 'Markham', 'M1N 2N6', 1, '416-998-0678', '', '', 2, '1966-09-06', 'Hello', 'jetflyer44@hotmail.com'),
(92, 'Kits Guy', 'Craig', 'Joncas', '#10 - 9151 Forest Grove Dr.', 'Burnaby', 'V5A 3Z5', 1, '(604) 420-6864', '', '', 2, '1965-10-09', 'You will never know till you try!', 'cjonc75@hotmail.com'),
(93, 'schweetheart', 'Arturo', 'Velazquez', '350 Davis Drive', 'Newmarket', '', 1, '905)898 0326', '905)898 0326', '905)868 0651', 2, '1972-03-11', 'latin lover4u to have', 'arturoelseco@aol.com'),
(94, 'firewater', 'Jeffery', 'Johnson', '29 Deerwood', 'Aliso Viejo', '92656', 1, '949/448-7215', '949/443-5835', '', 2, '1960-02-11', 'you''ve come to the right place', 'jeffmuzk@yahoo.com'),
(95, 'Maurice', 'Andy', 'Taylor', '177 Cederville Av', 'Toronto', '', 1, '416 934 1775', '', '416 934 9765', 2, '1970-12-07', 'Here I am', 'btginv@hotmail.com'),
(96, 'GriffenX', 'Tristan', 'T', '210 Queensquay', 'Toronto', 'M2H0A1', 1, '(416)453-3934', '', '', 2, '1973-11-29', 'A fun loving Young Executive', 'funtristan5@yahoo.com'),
(97, 'Maurice 2', 'Andy', 'Taylor', '177 Cederville Av', 'Toronto', '', 1, '416 934 1775', '', '416 934 9765', 2, '1970-12-07', 'Here I am', 'btginv@hotmail.com'),
(98, 'Erici', 'Eric', 'Cyr', '7431 Christophe Colomb', 'Montreal', 'h2R2s8', 1, '514.276.5755', '', '', 2, '1968-06-03', 'Let''s have fun', 'cyre@aei.ca'),
(99, 'halandri', 'Ted', 'Pappas', '125 main st', 'Toronto', '', 1, '416-720-0240', '', '', 2, '1972-02-04', 'goodlooking seeking adventure', 'tpantoulias@rogers.com'),
(100, 'Married47', 'Dave', 'Fraser', '3 Curry Cr', 'Georgetown', 'L7G 5N1', 1, '905-702-5821', '', '', 2, '1954-12-03', 'Looking to spice up my life and yours', 'daves3000@hotmail.com'),
(101, 'Geoffrey', 'George', 'Fran', '95 Foxridfge St', 'Toronto', 'M5A2P6', 1, '4167671254', '', '', 2, '1952-10-06', 'Hi there', 'tgf48@hotmail.com'),
(102, 'goodlife', 'Dale', 'Willett', '2120 west end', 'Nashville', '37203', 1, '615-341-5056', '615-341-5056', '', 2, '1963-04-04', 'I love to play and have fun', 'dale.willett@cat.com'),
(103, 'Athamasca', 'Athamasca', 'Thalamasca', '123 first', 'Montreal', 'H3Z 2H1', 1, '555-567-8901', '', '', 2, '1977-05-18', 'The tall dark mysterious stranger... is me!', 'athamasca@hotmail.com'),
(104, 'Pilen1010', 'Carl', 'Manucci', '200 clarkway road', 'Brampton', 'm9v 3b8', 1, '416-439-1000', '', '', 2, '1969-07-12', 'Show Me How To Please', 'pilen1010@gmail.com'),
(105, 'GimmyFever', 'Gimmyfever', 'Hudson', '123 1st Ave', 'Vancouver', 'V3m 2F5', 1, '555-555-5555', '', '', 1, '1967-02-06', 'Come and light my fire....', 'tanya_dercach@courtesysupportteam.net'),
(106, 'KamaSutraQueen', 'Karma', 'Sanjee', '123 1st Ave', 'Toronto', 'm5b2p1', 1, '555-555-5555', '', '', 1, '1973-02-04', 'Thanks for a great time........you know who you are!', 'tanya_dercach@courtesysupportteam.net'),
(107, 'LuckyStar', 'B203 Luckystar', 'B203 Smith', '123 1st Ave', 'Montreal', 'm5b2p1', 1, '555-555-5555', '', '', 1, '1966-06-03', 'If you like chocolate, take a taste of this.....', '400@ashleymadison.com'),
(109, 'Toronto__Man29', 'Gerard', 'Macdonald', '2301 derry rd east', 'Mississauga', '', 1, '905-814-9969', '', '', 2, '1972-02-23', 'Looking for a good woman', 'gerard__md@hotmail.com'),
(110, 'Windy', 'Reginald', 'Petch', '104 MacEwan Park Manor NW', 'Calgary', 'T3K 4G6', 1, '403 607-3795', '', '', 2, '1941-04-08', 'Anyone up for intimate times', 'ftmacman@hotmail.com'),
(111, 'HardandHandy4u', 'Patrick', 'C', '8212 2nd ave', 'N Bergen', '', 1, '2018680129', '', '', 2, '1974-07-11', 'Are you lookin for what I''ve got?', 'irish_hard@hotmail.com'),
(112, 'Craig', 'Lee', 'Wilcox', '15864 Via Rivera', 'San Lorenzo', '', 1, '510-418-0201', '510-418-0201', '510-418-0201', 2, '1965-06-30', 'Just a guy in boxers', 'jeffers_craig@hotmail.com'),
(113, 'jack', 'Jack', 'Smith', '123 ashridge ct', 'Miss', '', 1, '9056257600', '', '', 2, '1954-11-20', 'willing to wash and wax your kitchen floor !', 'isbackjack31@hotmail.com'),
(114, 'bradley', 'Joseph', 'Lysaght', '1523 w. virginia ave.', 'Phoenix', '', 1, '6022622043', '6022206481', '', 2, '1954-07-23', 'lookin'' for somethin'' special', 'jflipsag@msn.com'),
(115, 'Biff', 'Wilf', 'Thyssen', '731 Campbell Ave', 'Fergus', '', 1, '5197872175', '5198212851', '5193621079', 2, '1956-07-05', 'Looking for all the fun and passion', 'will756@hotmail.com'),
(116, 'soso', 'So', 'Palito', '543 derry', 'Toronto', '', 1, '416 358 3387', '', '', 1, '1962-12-18', 'I want you', 'soso@hotmial.com'),
(117, 'woody', 'Herman', 'Hoogerdijk', 'box 669', 'Coaldale', 't1m 1m6', 1, '345-5143', '', '', 2, '1968-09-08', 'looking for a little added fun', 'hlhooger@telusplanet.net'),
(118, 'Deco', 'Declan', 'Loughlin', '3000 Yonge st', 'Toronto', '', 1, '416 4801614', '', '', 2, '1975-12-27', 'Looking for older women', 'declan_loughlin@hotmail.com'),
(119, 'hiru', 'Mike', 'Vegas', '2324 rue masson', 'Montreal', '', 1, '514-256-3956', '', '514-8313467', 2, '1969-01-12', 'offer me', 'eagle70mtl@aol.com'),
(120, 'Mike', 'Mike', 'Rai', '5736 invergroden road', 'Mississauga', 'l5m 4p8', 1, '416-980-9869', '', '416-890-4477', 2, '1978-09-24', 'Single Indian Male Looking for Sex Any type of ladies', 'msr_1324@hotmail.com'),
(121, 'gilston', 'Simon', 'H', '44 Smith Ave', 'Toronto', 'm1m3h2', 1, '4160000000', '', '4167383555', 2, '1975-06-11', 'Seeking a sensual playmate for mutual pleasure.', 'brit1098@yahoo.com'),
(122, 'Living in T.O.', 'Sandra', 'Trower', '540-54 Caledonia Rd.', 'Toronto', '', 1, '416-787-5634', '', '', 1, '1965-09-03', 'I am open to suggestions.', 'darren@morgenstern.com'),
(123, 'Rickyracquet', 'Richard', 'Forget', '34 Murkar Cres', 'Whitby', 'l1n 8y5', 1, '905-571-4686', '', '', 2, '1953-06-06', 'Hi, Active guy looking for the best life has to offer', 'rickforget@mail2fan.com'),
(124, 'DAISY', 'Betty', 'Stileman', '54 goodlow', 'Oakville', '', 1, '905-545-7654', '', '', 1, '1971-09-05', 'SEND ME YOUR THOUGHTS', 'webmaster@ashleymadison.com'),
(125, 'Almost Ready', 'Gail', 'Prince', '4949 glouden', 'Oshawa', '', 1, '905-49433999', '', '', 1, '1977-04-22', 'I reserve the right to back out..', 'webmaster@ashleymadison.com'),
(126, 'Libby', 'Marcia', 'Srtuass', '56 ghent row', 'Burlington', '', 1, '76546555', '', '', 1, '1959-06-04', 'Are You The Tom Cruise Type?', 'webmaster@ashleymadison.com'),
(127, 'Kirk', 'Ferengi', 'Ferengi', '12 Bon Rd.', 'Toronto', '', 1, '416 987-9876', '', '416 678-7890', 2, '1975-08-09', 'Hot Young Stud', 'info@daedalian.com'),
(129, 'Rusty', 'Ethan', 'Nguyen', '105 westlodge ave.', 'Toronto', '', 1, '416-856-1996', '', '416-856-1996', 2, '1978-02-10', 'Fishing with no string.', 'embodyment@hotmail.com'),
(130, 'fantasyfulfiller', 'Todd', 'Milligan', '1185 ravine', 'Oshawa', 'L1H 4E1', 1, '905-706-9934', '', '', 2, '1966-07-18', 'NEW PIC...looking for SENSUAL and SEXUAL fun!!!', 'free5566@yahoo.com'),
(131, 'dede', 'Dede', 'Cox', '541 danforth ave.', 'Toronto', '', 1, '416-461-2208', '', '', 1, '1969-12-10', 'i want more', 'avalonmadison@hotmail.com'),
(132, 'pleasure36', 'Gord', 'Cooper', '157 queen street', 'Port Perry', '', 1, '905-985-6934', '', '', 2, '1964-05-30', 'pleasure takes two', 'foothills@sympatico.ca'),
(133, 'sensuale', 'Loren', 'Anic', '99edourad branly', 'Chateuguay', '', 1, '3640179', 'na', '9162177', 2, '1961-10-18', 'i m sensual  tender and strong masculin loving man  with hig sex', 'lorenzo12lorenzo@aol.com'),
(134, 'Lucky', 'Stephen', 'Mcconnell', 'PO Box 9241', 'Erie', '16505', 1, '814-450-0437', '', '', 2, '1963-04-24', 'Mr. Takes Forever', 'lucky1_55@hotmail.com'),
(135, 'logan', 'Dean', 'B', '5556 Coolbrook', 'Montreal', 'h4r 2k9', 1, '514-486-1400', '', '', 2, '1971-09-24', 'Attached male ready and able to please', 'louis_cypher71@hotmail.com'),
(136, '19756', 'Rik', 'Kir', '1996 laplante', 'Laval', 'h9j3b9', 1, '514-994-0538', '', '', 2, '1959-02-10', 'Soakin'' up the sun in Montreal ..', 'habshome@yahoo.com'),
(137, 'Haron', 'Harvey', 'Rogers', '7 Saunders Lane', 'Thronhill', 'L3T5K3', 1, '416-727-8295', '', '', 2, '1952-05-26', 'Getting to know you....', 'harveyrogers@hotmail.com'),
(138, 'GMONEY', 'Bryan', 'Belknap', '7385 FULLER RD', 'Port Byron', '13140', 1, '315-258-0233', 'NONE', '315-415-6385', 2, '1974-01-03', 'MAKING A WOMEN FEEL LIKE A QUEEN AND PLEASE HER IN EVERYWAY CAN', 'dewaynedmx@hotmail.com'),
(139, 'Wineman', 'Bill', 'Mcketrick', '1055 Bay St.', 'Toronto', 'M6S 3B1', 1, '416-817-0121', '416-515-9331', '', 2, '1953-08-12', 'Wine....women....and song !!(but not necessarily in that order!)', 'b.mcketrick@sympatico.ca'),
(140, 'sony29', 'Dan', 'Saulnier', '41 melissa', 'Toronto', '', 1, '905-528-2153', '', '', 2, '1972-12-08', 'Want a taste for life??', 'dsaulnier28@hotmail.com'),
(141, 'Prowler', 'Martin', 'Fullum', '17, Boul. St-Joseph', 'Ile Perrot', 'J7V 8P4', 1, '668-4151', '668-4151', '668-4151', 2, '1966-06-25', 'Crazy Sexy Cool', 'on_the_prowl33@hotmail.com'),
(142, 'spider', 'Michael', 'Macdonald', '62 hiley avenue', 'Ajax', '', 1, '(905)6833265', '', '', 2, '1963-09-19', 'hello', 'mike@hotmail.com'),
(143, 'GetDownMakeLove', 'Dave', 'Allison', '9582 Willowleaf Place', 'Burnaby', '', 1, '604 421 6653', '', '', 2, '1963-06-16', 'Down to earth and average BUT cutish, fun, and naughty!', 'kinkyandcute@hotmail.com'),
(144, 'Ricky27', 'Ricky', 'Soriano', '181 Tramble Lane', 'Toronto', 'm9v 2w9', 1, '416-930-2121', '', '', 2, '1974-01-01', 'I am 6 ft 1, 195 lbs athletic build, hazel eyes, nice tan...and.', 'ricky_sexy@hotmail.com'),
(145, 'wickedinBC', 'P', 'J', '1234 east 12th st', 'Vancouver', 'V5M 1J7', 1, '604-555-1212', '', '', 2, '1960-04-17', 'Sensuous asian looking for the right gal. Find "ME"', 'reserved_forme@hotmail.com'),
(146, 'Matt', 'Gary', 'Crawford', '6 Cudia Crescent', 'Toronto', 'M1M2W8', 1, '416 261-7895', '416 264-1393', '', 2, '1960-07-15', 'Passionate, intense and real', 'veryverycurious@hotmail.com'),
(147, 'Eric', 'Erez', 'Savion', '140 Erskine Ave.', 'Toronto', 'M4P1Z2', 1, '416 487-7045', '', '', 2, '1962-10-29', 'Let''s not waste any time - Let''s Talk', 'erez@rogers.com'),
(148, 'deaconblue', 'Ron', 'Kennison', '999 mickey mouse lane', 'Irvine', '99999', 1, '999-999-9999', '', '', 2, '1971-07-20', 'Help me show my wife the pleasures of anal.', 'rkenniso@proxymed.com'),
(149, 'BONES48', 'Brian', 'Conners', '48 Marco Sgotto Ave.', 'Woodbridge', '', 1, '416-748-6661', '', '', 2, '1963-06-05', 'Fun and Passion ,just like a strawberry dipped in chocolate...', 'ptplus@interlog.com'),
(151, 'Intrepid', 'Garth', 'Mcalister', '575 West 16th Avenue', 'Vancouver', 'v6a1e7', 1, '269-0263', '', '604 671-0969', 2, '1952-08-26', 'The grey fox', 'grath2u@hotmail.com'),
(152, 'trubble', 'S', 'Horn', 'xx toronto ave.', 'Aurora', 'h4d 6v3', 1, '4164559046', '', '', 2, '1970-06-16', 'Seeing things on a different perspective', 'sphorn99@hotmail.com'),
(153, 'Tomuch', 'Rob', 'Foresta', 'Durham', 'Durham', 'L1N 8L9', 1, '905-718-7138', '', '', 2, '1960-04-12', 'time to move on', 'robert_f44@hotmail.com'),
(154, 'Sam the Pirate', 'Robert', 'Hamburg', '660-650 Georgia St.W.', 'Bothell', '98011', 1, '604-941-1608', '604-683-7600', '', 2, '1946-06-09', 'Looking for fun Online', 'seafury46@hotmail.com'),
(155, 'ladie pleaser', 'Stephen', 'Katz', '217 harborview north', 'New York', '', 1, '516-318-6686', '718-377-3454', '516-318-6686', 2, '1979-12-09', 'sex machine here looking to please ladies', 'skatz@meridianresidential.com'),
(157, 'Orpheus', 'Peter', 'Stone', '123 Northam Drive', 'Montreal', 'H7X 3K7', 1, '450-689-8888', '450-689-0000', '', 2, '1966-08-13', 'Hi.', 'sinners_swing@hotmail.com'),
(158, 'HotFun4You2Nite', 'Dean', 'De Benedetto', '424 Breckenridge Lane NW', 'Edmonton', '', 1, '(780) 905-6397', '', '', 2, '1972-09-07', 'Looking for some fun times....', 'kraft_dinner35@hotmail.com'),
(160, 'mimmo', 'Domenic', 'Giannone', '8476 Joliot Curie', 'Montreal', 'H1E 4C3', 1, '514-881-8849', '514-731-0404', '514-803-0822', 2, '1968-03-01', 'looking for new adventure', 'domtl@hotmail.com'),
(161, 'NeeditWantit', 'Shawn', 'Prasaud', '44 King Street West', 'Toronto', 'M5H1H1', 1, '416-564-2845', '416-564-2845', '416-564-2845', 2, '1973-05-27', 'Looking for a Sex Buddy!!!', 'needitwantit@hotmail.com'),
(162, 'Asus', 'G', 'T', 'xx', 'Burlington', '', 1, 'x', 'x', 'x', 2, '1968-08-31', 'Looking for fun!', 'double__apex@hotmail.com'),
(164, 'lepricorn', 'Lepricorn', 'Lepricorn', '224 Varsity Estates Place NW', 'Calgary', 'T3B3B7', 1, '403-397-2948', '', '(403)397-2948', 2, '1967-11-03', 'Nothing ventured nothing gained', 'lepricornca@hotmail.com'),
(165, 'Swimmer', 'Steve', 'Jamison', '5160 Explorer Dr', 'Mississauga', '', 1, '905-629-8211', '', '', 2, '1967-02-03', 'Adventure and Excitement....', 'Gandr86791@aol.com'),
(166, 'gentle touch', 'Jean', 'Delorme', '635 couture', 'Montreal', 'j4g 1l8', 1, '514-247-7484', '450-679-0037', '514-247-7484', 2, '1970-04-11', 'if you want some discret & gentle', 'qualimetaux@hotmail.com'),
(167, 'spiffy1960', 'Sylvain', 'Lemay', '20 Elisé', 'Lachute', 'H9P 1G1', 1, '450-456-9086', '514-960-0987', '514-816-9801', 2, '1960-06-19', 'Very sensual and romantic!!', 'spiffy1960@hotmail.com'),
(168, 'GLADIATOR65', 'Shawn', 'Richardson', '3-209 wychwood', 'Toronto', 'm6c2t5', 1, '(416) 654-0282', '(416) 654-0282', '', 2, '1965-11-16', 'LET''S STEP OFF THE EDGE AND SEE WHAT HAPPENS', 'shawnrichardsonmaybe@hotmail.com'),
(170, 'wellwellwellwell', 'Rob', 'Sheridan', '2424hgdrg', 'Calgary', '', 1, '213 2093', '', '', 2, '1964-10-16', 'Looking for fun', 'pula1016@hotmail.com'),
(171, 'afternoonman', 'Derrick', 'Riedlinger', '588 carnation place', 'Victoria', 'v8z6g5', 1, '250 479 5002', '', '', 2, '1964-07-18', 'looking for afternoon fun', 'soren109@hotmail.com'),
(172, 'Tytanic', 'Ty', 'Chidlow', '100 Indian Rd', 'Toronto', 'm6r2v4', 1, '4165375000', '', '', 2, '1969-08-29', 'Hey there I''m new so be gentle...', 'tytanic@sympatico.ca'),
(173, 'Traveller', 'Alex', 'Oppengeim', '211 Pineway blvd.', 'Toronto', 'L4G6R3', 1, '416 xxxxxxx', '', '', 2, '1973-08-01', 'looking for sweet lady', 'shausmas@rambler.ru'),
(174, 'YURA', 'Ivan', 'Petrovic', '77 Lorraine Ave.', 'Kitchener', 'n2b2m8', 1, '519-896-6269', '', '', 2, '1969-03-16', 'Let me make you feel like a real woman', 'beba@hotmail.com'),
(175, '007', 'James', 'Bond', '26 dowswell', 'Toronto', '', 1, '416-292-0654', '', '', 2, '1970-09-20', '007', 'dr_drew07@hotmail.com'),
(176, 'Star Gazer', 'Rhonda', 'Illingworth', '595 benson', 'Newmarket', '654433', 1, '905-878-2119', '', '', 1, '1971-07-08', 'What do you see in me?', 'darren@morgenstern.com'),
(177, 'heybc', 'Chris', 'Frank', 'toronto', 'Scarbro', '', 1, '14165551212', '14165546666', '', 2, '1974-05-06', 'hey', 'cb@hotmail.com'),
(178, 'Oral', 'Derek', 'Ramd', '55 Bloor St W', 'Toronto', 'm6g2m4', 1, '', '', '', 2, '1968-02-15', 'I love pie', 'derekramd@hotmail.com'),
(179, 'Altman', 'Jase', 'Tanner', '507-2050 Scotia Street', 'Vancouver', 'V5T 4T1', 1, '604 709 4272', '', '', 2, '1959-01-28', 'Looking for a playmate', 'tjaca51@hotmail.com'),
(180, 'Consultant', 'Mike', 'Warren', '621 Consortium Court', 'London', 'N6E 2S8', 1, '519-685-9255', '', '', 2, '1954-02-28', 'Look no further.....', 'mwarren@mcwarren.com'),
(181, 'BROWN EYES', 'Bruno', 'Roisman', '400 WALMER ROAD', 'Toronto', 'M5P2X7', 1, '416-928-2975', '', '', 2, '1959-07-03', 'TALL AND FIT', 'broisman@pathcom.com'),
(182, 'leopard', 'Steve', 'D.', '10 Downing St.', 'T.o.', '', 1, '416-933-0735', '', '', 2, '1970-09-17', 'Seeeking slim smokers', 'stevef104@excite.com'),
(183, 'dirtyharry', 'John', 'Wait', '1002 yonge', 'Toronto', '', 1, '416-966-2722', '', '', 2, '1967-10-02', 'looking for a discret mate', 'wait11@excite.com'),
(184, 'Sunshine', 'B01', 'B01', '6 Forest Laneway', 'Vancouver', 'd4e 5g6', 1, '604-458-1746', '', '', 1, '1971-01-05', 'can you brighten my day', '400@ashleymadison.com'),
(185, 'Sweet Berry', 'B03', 'B03', '235 Maple Street', 'Burnaby', 'c5v 6t9', 1, '250-687-9756', '', '', 1, '1966-06-10', 'pick me', '400@ashleymadison.com'),
(186, 'Precious Jewel', 'B04', 'B04', '86 Napier Street', 'Kelowna', 'b5t 7j8', 1, '250-768-4434', '', '', 1, '1974-09-29', 'a diamond in the rough', '400@ashleymadison.com'),
(187, 'peeches', 'C4', 'C4', '1572 law', 'Surrey', '', 1, '6045258941', '', '', 1, '1966-04-06', 'come rock my world', '200@ashleymadison.com'),
(188, 'tinman1042002', 'Ronald', 'Singer', '1316 40th st', 'Parkersburg', '', 1, '(304) 485-6024', '(304) 485-6024', '', 2, '1953-10-04', 'very lovable, very discreet', 'jeffsinger@charter.net'),
(189, 'Delicious', 'Necian', 'Payne', '67 Powell Avenue', 'Vancouver', 'b6g 7j8', 1, '604-356-7760', '', '', 1, '1970-04-20', 'would you like to take a bite', '700@ashleymadison.com'),
(190, 'Brian', 'Brian', 'Mccoleman', '900 Central Park Dr', 'Georgetown', 'L7G-1M5', 1, '9054587517', '416 7214482', '416 721-4482', 2, '1962-03-20', 'Take me I''m yours.....', 'berniehboyle@hotmail.com'),
(191, 'alexxx', 'Justin', 'Smith', '124 front street', 'Toronto', 'm3j 2h2', 1, '4163625411', '', '', 2, '1971-10-21', 'hellooo ladiesss', 'alexgoft@yahoo.ca'),
(192, 'bunny', 'C3', 'C3', '391 lawrence ave E', 'Toronto', '125465b', 1, '4168523567', '', '', 1, '1968-03-04', 'i''m all yours now', '200@ashleymadison.com'),
(193, 'etoile', 'B06', 'B06', '178 Roche Street', 'Montreal', '', 1, '514-864-8976', '', '', 1, '1962-05-01', 'all alone in the night sky', '400@ashleymadison.com'),
(194, 'Eclipse', 'B07', 'B07', '6 Cameron St', 'Brampon', 'm5b 7h5', 1, '416-365-9864', '', '', 1, '1972-11-04', 'i am the sun looking for my moon', '400@ashleymadison.com'),
(195, 'DIEGO6', 'Diego', 'Alejandro', '330 SOUTHEDGEWARE RD', 'St Thomas', '', 1, '---------', '---------', '', 2, '1972-10-27', 'WOULD LIKE TO HAVE FUN', 'charmed144@hotmail.com'),
(196, 'CzechMe75', 'Paul', 'Toste', '1448 Bakehurst cres', 'Oakville', 'L6J6T4', 1, '(905)617-4517', '', '416-390-3835', 2, '1975-04-12', 'Stop here i''m guaranteed to please!', 'slady79@hotmail.com'),
(197, 'pet', 'C2', 'C2', '269 Dawson Road', 'Guelph', 'm487526', 1, '5192638514', '', '', 1, '1970-09-07', 'come out my fire', '200@ashleymadison.com'),
(198, 'romanceman', 'Philip', 'Danceman', '161 W. lakeshore Dr', 'Rockaway', '', 1, '201 573 7769', '', '', 2, '1950-06-04', 'passion means living life', 'p_danceman@hotmail.com'),
(199, 'sex_pistol', 'Jesse', 'Maybe', '7135 zelzah ave', 'Reseda', '', 1, '8183456798', '', '', 2, '1977-11-01', 'hey, it''s worth looking...', 'lingus1977@hotmail.com'),
(201, 'jam-can', 'Jamie', 'Brown', '735 dynes Rd.', 'Burlington', '', 1, '905-634-4582', '', '', 2, '1975-05-06', 'just looking for some fun ;o)', 'jab634@hotmail.com'),
(203, 'CoronaExtra', 'James', 'Gerrits', '89 Westwood rd', 'Hamilton', 'L8S1J1', 1, '763-6118', '', '', 2, '1975-01-29', 'Who''s up for a little fun on the side?', 'idefendedyou@hotmail.com'),
(204, 'kingjoker', 'Pat', 'Mcgrath', '33 rushbroke.ave', 'Toronto', '', 1, '416 4663-741', '', '', 2, '1976-11-25', 'good man who knows how to do bad things', 'www.kingjoker73@yahoo.com'),
(205, 'alex', 'Dino', 'Lipani', '7 Kalmar cres.', 'Richmond Hill', '', 1, '4167020933', '', '', 2, '1971-05-27', 'looking to find what I''m not getting at home', 'dinol916@hotmail.com'),
(206, 'vic559', 'Victor', 'Chan', '360 Finchdene Sq', 'Scarborough', '', 1, '416-298-8092', '', '647-273-0822', 2, '1961-09-09', 'Hei, hot lunch is ready to serve', 'vic559@excite.com'),
(207, 'secret -one', 'Rob', 'Scott', '91 edgewood cres.', 'Oshawa', 'l9l 1b6', 1, '905-261-7840', '', '', 2, '1968-03-19', 'afternoon delight', 'explorevx6@hotmail.com'),
(208, 'Mr. Toronto', 'Terry', 'Vaudry', '78 Highcroft Rd.', 'Toronto', 'M4E 3N5', 1, '416-678-9995', '', '416-678-9995', 2, '1970-09-09', 'An attractive 30s man looking for an ongoing sensual friendship.', 'tvaudry@nalsi.com'),
(209, 'leo', 'Ted', 'Jetten', '905 Northend crt', 'Newmarket', '', 1, '416 5665067', '', '', 2, '1958-08-03', 'looking for love', '0427leo@hotmail.com'),
(210, 'Nippi', 'Bino', 'Kaprueucih', '17 king st', 'Toronto', '22222', 1, '416 8750399', '', '', 2, '1965-01-17', 'looking to rock your world', '400@ashleymadison.com'),
(211, 'TallnDark37', 'Adam', 'Cook', '14205 Melrose Drive', 'Surrey', 'V3V2W1', 1, '604-594-9410', '604-437-4433', '604-817-3633', 2, '1964-05-05', '6ft4in and well worth the climb!', 'matt_jackovich@hotmail.com'),
(212, 'Supercop', 'Greg', 'Clee', '285 Patricia Drive', 'Toronto', '', 1, '905-833-5954', '', '', 2, '1970-09-04', 'Does anyone need arresting? I know it is corny', 'supercop12000@yahoo.ca'),
(213, 'tallish', 'Jonathan', 'Savan', '72 winnifred Avenue', 'Toronto', 'm5a 2t2', 1, '416-434-8809', '', '', 2, '1953-12-27', 'tall fit & creative in so many ways !', 'glimmerglammer@gmail.com'),
(214, 'French Romantic', 'Renee', 'Bloc', '9409 st chiques', 'Laval', '', 1, '514-5433322', '', '', 1, '1971-09-29', 'French men with big hearts wanted here', 'darren@morgenstern.com'),
(215, 'fredir', 'George', 'Szucs', '4461 fREDMIR', 'Montreal', 'h9a 2r6', 1, '514=685-2641', '', '', 2, '1958-12-30', 'Montreal Guy', 'wszucs@videotron.ca'),
(216, 'Monkeyboy', 'Cliff', 'Long', '3208 Juniper Road', 'Okanagan', 'V2A 6E8', 1, '250-496-5021', '250-490-3909', '250-809-6650', 2, '1964-01-07', 'Looking for discreet fun', 'cliffriders@hotmail.com'),
(217, 'Silkyslim', 'Steven', 'Morris', '142 W Maryland Ave', 'Upper Darby', '19082', 1, '610-284-4079', '', '', 2, '1976-05-25', 'Looking for new and exciting experiences', 'vondoom55@verizon.net'),
(218, 'Lanky', 'Paul', 'Smith', '1143 Draper Avenue', 'Kingston', 'k7k7j4', 1, '613-549-8646', '', '613-329-4407', 2, '1967-08-04', 'Welcome to Fantasy Island!', 'schaamitty@hotmail.com'),
(219, 'Mstrmx', 'Mark', 'Sipe', 'RR1 Box 163', 'Dearborn', '48124', 1, '8125497660', '', '', 2, '1966-03-21', 'Seeking Excitement', 'mstrmx_66@yahoo.com'),
(220, 'Dew_Drops', 'Steve', 'Stevens', '123 Main St.', 'Calgary', 't2v 3x5', 1, '416-595-5959', '', '', 2, '1970-03-06', 'How Dew you Dew...', 'st_even00@hotmail.com'),
(221, 'Muggs', 'Dave', 'Munro', '1040 Norsman', 'Toronto', '55445454646', 1, '416 809 2548', '', '', 2, '1961-05-25', 'looking for casual', '400@ashleymadison.com'),
(222, 'IM4real-ru?', 'Scott', 'King', '6050 Oak Tree Blvd', 'Cleveland', '44131', 1, '216-520-5933', '216-642-7342', '216-702-2958', 2, '1962-11-10', 'Mutual fun, excitement, respect and satisfaction only - no games', 'kings@norfalco.com'),
(223, 'SweetThang', 'Sweetthang', 'Smith', '123 1st Ave', 'Calgary', 'm5b2p1', 1, '5555555555', '', '', 1, '1972-03-06', 'Lookin'' For a Little Lovin''', 'tanya_dercach@courtesysupportteam.net'),
(224, 'TwiceShy', 'Twiceshy', 'Lee', '123 1st Ave', 'Lethbridge', 'm5b2p1', 1, '5555555555', '', '', 1, '1968-01-06', 'I''m new, how are you?', 'tanya_dercach@courtesysupportteam.net'),
(225, 'tender heart', 'Yahoo', 'Oioi', 'ooio', 'Calgary', '', 1, '403-00000000', '', '', 1, '1976-06-09', 'hi cowboys!', 'webmaster@ndnregistry.com'),
(226, 'LeeLee', 'Leelee', 'Smith', '123 1st Ave', 'Calgary', 'm5b2p1', 1, '5555555555', '', '', 1, '1967-07-05', 'Wants and Needs', 'tanya_dercach@courtesysupportteam.net'),
(227, 'Katt', 'Tanya', 'Dercach', '123 1st Ave', 'Calgary', 'T1r 3P2', 1, '555-555-5555', '', '', 1, '1969-08-28', 'Hi there', 'tanya_dercach@courtesysupportteam.net'),
(228, 'Lions', 'Les', 'Sayers', '4500 Jane St', 'Downsview', 'M3N 2K6', 1, '416-704-0652', '', '', 2, '1958-10-09', 'Looking for pleasure, I hope you are. It''s what I love to give.', 'sayersl@hotmail.com'),
(229, 'BigShow', 'Sean', 'Degraaff', '46 Forest Manner Rd #1', 'Toronto', '', 1, '416-895-0431', '', '', 2, '1976-06-03', 'Open to anything', 'seandegraaff@hotmail.com'),
(230, 'funtime', 'Geoff', 'Gonsalves', '75 radwell cres', 'Ajax', 'M1V2J4', 1, '416 839 3631', '', '', 2, '1969-12-22', 'like to have fun', 'vstar10@hotmail.com'),
(231, 'Kyle', 'Oliver', 'Kioke', 'RR1', 'South River', '', 1, '705-749-6281', '', '', 2, '1976-10-03', 'Come check me out........', 'tristan425@hotmail.com'),
(234, 'Paul', 'Randy', 'Bruder', '22 Conover Court', 'Brampton', 'l6w1l3', 1, '416-880-7513', '', '', 2, '1958-02-23', 'Lookin For Fun', 'randyb6@hotmail.com'),
(235, 'Nice Touch', 'Ron', 'Camilleri', '1061 Beechnut Road', 'Oakville', 'L6J 7P1', 1, '(905)829-9636', 'none', '(416)274-4088', 2, '1964-03-01', 'looking for you', 'rcamilleri@cogeco.ca'),
(236, 'Lond8', 'Shane', 'Styll', '100 King street west', 'Toronto', 'M4L 3E2', 1, '416 306 4230', '', '', 2, '1970-08-08', 'Hi How are you?', 'lond8_b@hotmail.com'),
(237, 'brazen lover', 'Gordon', 'Hiltzs', '220 golfview ave', 'Toronto', 'm1c5b9', 1, 'na', 'na', '416 712 7732', 2, '1972-11-03', 'looking for play mate are you game', 'gmerpaw@hotmail.com'),
(238, 'Hannigan43', 'Brent', 'Hanson', '93 Myrtle Ave', 'Hamilton', 'L8K1V9', 1, '905-528-9836', '', '', 2, '1963-05-16', 'Not trying to talk anyone off a ledge.', 'bhanson@tripemco.com'),
(239, 'Charmin''Carmen', 'C9', 'C9', '12456', 'Toronto', '', 1, '416-484-4568', '', '', 1, '1961-08-08', 'Let''s see where the fun is.', '200@ashleymadison.com'),
(240, 'jersey', 'B13', 'B13', '1452 5street', 'Toronto', 'm4p 1e4', 1, '416-545-5555', '', '', 1, '1975-04-22', 'I''m a fanatic when it comes to sports', '400@ashleymadison.com'),
(241, 'Mits', 'C10', 'C10', '177 Redpath Ave. 3902', 'Toronto', '', 1, '(416)544-9717', '', '(416)544-9717', 1, '1958-06-01', 'I''m into all sorts of complicated devices', '200@ashleymadison.com'),
(242, 'Starry', 'B15', 'B15', '177 Redpath Ave. 3902', 'Montreal', '123456', 1, '(416)544-9717', '', '(416)544-9717', 1, '1965-08-05', 'I want to live a different life.', '400@ashleymadison.com'),
(243, 'Juniper', 'C13', 'C13', '177 Redpath Ave. 3902', 'Montreal', '', 1, '(416)544-9717', '', '(416)544-9717', 1, '1980-06-26', 'Where would you like to be caressed?', '200@ashleymadison.com'),
(244, 'Wrangler', 'B14', 'B14', '177 Redpath Ave. 3902', 'Calgary', '234567', 1, '(416)544-9717', '', '(416)544-9717', 1, '1962-07-10', 'I dare you to dare me.', '400@ashleymadison.com'),
(245, 'Bish', 'C12', 'C12', '177 Redpath Ave. 3902', 'Edmonton', '', 1, '(416)544-9717', '', '(416)544-9717', 1, '1967-03-28', 'I do eat meat on good friday.', '200@ashleymadison.com'),
(246, 'Babs', 'C14', 'C14', '177 Redpath Ave. 3902', 'Vancouver', '', 1, '(416)544-9717', '', '(416)544-9717', 1, '1969-08-22', 'I''m a bitch, but I''m your type of bitch.', '200@ashleymadison.com'),
(247, 'Kookla', 'C11', 'C11', '177 Redpath Ave. 3902', 'Vancouver', '', 1, '(416)544-9717', '', '(416)544-9717', 1, '1967-02-17', 'I like to play dress-up', '200@ashleymadison.com'),
(248, 'etobicokeguy', 'Lew', 'Williams', '3044 Bloor St. W, suite 113', 'Toronto', 'M8X2Y8', 1, '416-230-0225', '', '', 2, '1971-10-04', 'something extra', 'my_cabin@hotmail.com'),
(249, 'pfm1998', 'Frank', 'M', '123 Lane Drive', 'Thornhill', 'M2J 3T6', 1, '9058325151', '', '4165745050', 2, '1963-06-29', 'SEEKING DISCRETE RELATIONSHIP', 'pfm1998@yahoo.com'),
(250, 'rayray', 'Ray', 'Yusko', 'P.O. Box 362', 'Mt. Pleasant', '', 1, '724-542-7509', '', '', 2, '1963-07-12', 'Very Discreet Gentleman Looking For Romantic Times and Fun!!', 'yuskorayray@aol.com'),
(251, 'saint400', 'Mike', 'Smith', '24 lascelles blvd', 'Toronto', 'm4v 2b8', 1, '416-854-6805', '416-854-6805', '416-854-6805', 2, '1977-02-11', 'Indepent', 'saint_gino@hotmail.com'),
(252, 'Ned', 'Ned', 'Ned', '2770 Jane Street', 'Toronto', '', 1, '(416) 347-8700', '', '', 2, '1970-12-12', 'Hello..how can I help you?', 'best_friends_first@hotmail.com'),
(253, 'sweetlove', 'Kevin', 'Boisse', '161 Church st', 'Toronto', '', 1, '905 4609452', '', '', 2, '1972-12-08', 'Looking for love', 'gvfire@hotmail.com'),
(254, 'Pleasure4u', 'Keith', 'Cowden', '1154 Heald Ave', 'Victoria', 'v9a 5j8', 1, '920-5558', '', '', 2, '1958-09-08', '"Seeking passionate woman to please!!!"', 'stoker50@hotmail.com'),
(255, 'othelo26', 'Denis', 'Simard', '230 Normand', 'Morin-heights', 'J0R1H0', 1, '450-226-3075', '', '', 2, '1970-06-05', 'Hello, i would like to explore you!', 'othelo26@hotmail.com'),
(256, 'Bogart', 'Paul', 'Borsellino', '261 Nairn drive', 'Toronto', '', 1, '416 651 2264', '', '', 2, '1956-01-01', 'Looking for fun and intelligent', 'eclipse420420@hotmail.com'),
(257, 'GUYLOOKING', 'Yemi', 'Howard', '250 Webb Drive', 'Toronto', 'L1L1L1', 1, '416-888-8888', '', '', 2, '1975-03-03', 'It''s a new day ...', 'young_sexy_guy@hotmail.com'),
(258, 'bellville', 'Mark', 'Linman', '1485 Whites rd', 'Bellville', 'K8P4K3', 1, '416 485 9636', '', '', 2, '1964-08-16', 'just looking for fun', 'g5531@hotmail.com'),
(259, 'JASPER', 'Mike', 'Ryan', '23 TRENCH ST', 'Richmond Hill', 'L4C 4C2', 1, '905-884-6266', '416-473-3127', '416-473-3127', 2, '1957-04-22', 'your afternoon delight', 'mike.ryan@sympatico.ca'),
(260, 'Haldar', 'Rob', 'Haldane', '18 Bach Ave', 'Whitby', '', 1, '416-983-1330', '', '', 2, '1969-01-30', 'Married but bored....', 'rhaldane@sympatico.ca'),
(261, 'want_u', 'Joe', 'Caugh', '186 St. George St', 'Toronto', 'm4c2p5', 1, '416-967-1111', '', '', 2, '1960-07-04', 'fine wine, great food and u', 'caffeine_01@lycos.com'),
(262, 'Handsome Italian', 'Luigi', 'Cal', '5 Starview Cresent', 'Guelph', '', 1, '519-765-9119', '', '', 2, '1966-11-30', 'Sensual,passionate,exploritive,creative Itatian lover seeks you!', 'syours1@hotmail.com'),
(263, 'Mustaaang', 'Carl', 'Decoste', '12 Megahn drive', 'Toronto', 'l7g5g6', 1, '416-999-9146', '', '', 2, '1959-07-01', 'Anything you want', 'carl.decoste@mt.com'),
(264, 'wet & Wild', 'Ady', 'Kirsh', '548 alexandra wood crt', 'Toronto', 'M4J 2C6', 1, '416 561 3552', '', '', 1, '1965-07-28', 'Are you ready to slip and slide', 'eclipse420420@hotmail.com'),
(265, 'jade', 'Jody', 'Kroft', '854 brookshire av', 'Toronto', 'M4F 2H8', 1, '416 731 3510', '', '', 1, '1960-04-08', 'can you brighten up my day?', 'eclipse420420@hotmail.com'),
(266, 'jockboy', 'Brad', 'Warren', '8 madison Av', 'Toronro', '', 1, '416 7380865', '', '', 2, '1972-04-09', 'Looking for Fun', 'eclipse420420@hotmail.com'),
(267, 'marko', 'Micheal', 'Argo', '259 forest dr', 'Woodbridge', '', 1, '416 5220403', '', '', 2, '1970-11-30', 'looking for intimate and discrete encounters', 'eclipse420420@hotmail.com'),
(268, 'marco', 'Micheal', 'Argo', '259 forest dr', 'Woodbridge', '', 1, '416 5220403', '', '', 2, '1970-11-30', 'looking for intimate and discrete encounters', 'eclipse420420@hotmail.com'),
(269, 'Lola', 'Lola', 'Smith', '123 1st Ave', 'Miami', 'm5b2p1', 1, '555-555-5555', '', '', 1, '1960-08-14', 'Meet me at the Copa....', 'tanya_dercach@courtesysupportteam.net'),
(270, 'Oh Sheila', 'Ohsheila', 'Brady', '123 1st Ave', 'Regina', 'm5b2p1', 1, '555-555-5555', '', '', 1, '1966-07-30', 'Let me love you til the morning comes...', 'tanya_dercach@courtesysupportteam.net'),
(271, 'Roxanna', 'Tanya', 'Dercach', '123 1st Ave', 'Winnipeg', 'm5b2p1', 1, '555-555-5555', '', '', 1, '1961-05-21', 'Are You The One For Me?', 'tanya_dercach@courtesysupportteam.net'),
(272, 'fungal', 'Jennifer', 'Anisten', '585 rodeo dr', 'Brooklyn', '', 1, '416 7773434', '', '', 1, '1968-05-05', 'I am all you need', 'jen@ashleymadison.com'),
(273, 'Sensual Man', 'Pierre', 'Goody', 'Robie St', 'Halifax', 'b3m4l4', 1, '902 867 3431', '', '', 2, '1969-03-01', 'Seeking mental & physical stimulation-are you looking for same?', 'shawnt_911@hotmail.com'),
(274, 'Mr. Blue', 'Peter', 'Beshay', '4862A Av. Lacombe', 'Montreal', 'H3W 1R5', 1, '514-823-2636', '', '514-823-2636', 2, '1974-05-10', 'Igniting our desire..', 'mr_blue4u@hotmail.com'),
(275, 'PAS', 'Andre', 'Sisman', '80 Wilce Drive', 'Ajax', '', 1, '905-683-1991', '', '647-221-7758', 2, '1973-12-07', 'Horny, oral sex expert', 'sisman80@yahoo.com'),
(276, 'D-Tee', 'Shane', 'Altenstad', '1721 Conacher Cres.', 'Pickering', 'L1X 2T4', 1, '905 686 1333', '416 228 3506', '416 910 4130', 2, '1969-09-24', 'I''d be happy to email you my pics after you read below....', 'shanealtenstad@hotmail.com'),
(277, 'J.P.', 'Jim', 'Purdy', '170 Courcelette Road', 'Scarborough', 'M1N 2T2', 1, '416 690-9331', '', '416 857-5410', 2, '1952-01-23', 'I am a friendly, easy-going adventurer', 'guywhoswings@email.com'),
(278, 'Ralphie', 'Edward', 'Jetten', '905 Norsan Court', 'Toronto', 'L3T 7N4', 1, '416-566-5067', '', '', 2, '1958-08-03', 'Talk to Ralph', 'jetz58@hotmail.com'),
(279, 'flash', 'Darryl', 'Stanat', '3 DuMaurier Blvd', 'Toronto', '', 1, '4164828977', '', '', 2, '1976-10-28', 'Do you have the G.I. Joe Kung-Fu grip?', 'flash1976@hotmail.com'),
(280, 'Writeguy', 'Claudio', 'Pecora', '14-3650 Langstaff Rd suite147', 'Vaughan', '', 1, '4165672924', '', '', 2, '1971-10-07', 'Looking to meet some new faces', 'verdorofirebird@hotmail.com'),
(281, 'tammycat', 'Tammy', 'Catz', '35 skegby rd', 'Brampton', '', 1, '905-455-0307', '416-585-4928', '', 1, '1975-08-16', 'looking for a woman or couple', 'tammycat75@hotmail.com'),
(282, 'Suntsu', 'Willie', 'Dixon', '54 sand pit row', 'Montreal', 'h3j1e6', 1, '450-678-8254', '', '', 2, '1968-08-04', 'Hello', 'williedixon2@hotmail.com'),
(283, 'Roddy', 'Rodney', 'Armstrong', '83 John Walter Cres', 'Courtice', 'L1E 2W7', 1, '905 4329125', '416 4412781', '905 4299126', 2, '1965-01-09', 'WAITING FOR YOU', 'strongrod69@hotmail.com'),
(284, 'Hot French', 'Reg', 'Desrosiers', '5686 Glen Erin Drive', 'Mississauga', 'L5M 5J2', 1, '905-812-2221', '905-812-2221', '', 2, '1959-04-26', 'I am Clean, Generous and Open Minded!', 'regdesrosiers@hotmail.com'),
(285, 'kakamike', 'Stephan', 'Marks', '10 macey', 'Scarbough', '', 1, '416 686 9630', '', '', 2, '1979-09-22', 'warm charming and very very fan.', 'bobme90@hotmail.com'),
(286, 'drangonlance', 'Diego', 'Sturino', '35 farthinggale', 'Brampton', '', 1, '416 938 5679', '905 264 9423', '', 2, '1964-05-22', 'Looking for a little spice', 'dragonlace64@hotmail.com'),
(287, 'starj2000', 'Stephan', 'Marks', '10 macey', 'Scarbough', '', 1, '416 686 9630', '', '', 2, '1979-09-22', 'warm charming and very very fan.', 'bobme90@hotmail.com'),
(289, 'doc', 'Gib', 'Murdoch', '2034 Headonforest drive', 'Burlington', '', 1, '905 330 3348', '', '', 2, '1948-02-21', 'looking fun', 'g.murdoch@cogeco.ca'),
(290, 'Earl Blue', 'Earl', 'Smith', '185 Arbour Glen Cres', 'London', '', 1, '519-318-1682', '519-318-1682', '', 2, '1963-10-02', 'Love to be touched?', 'earlblue@hotmail.com'),
(291, 'arther', 'Scott', 'Neil', '21 Newton st', 'Hamilton', '', 1, '416 555 3333', '', '', 2, '1970-06-15', 'Looking for fun', 'jen@ashleymadison.com'),
(292, 'rob', 'Robert', 'Antoniadis', '17 Gully Drive', 'Scarborough', 'M1K 4W3', 1, '416-564-4219', '', '', 2, '1975-05-06', 'Hello....Ladies.', 'rmichael18@hotmail.com'),
(293, 'Mike1', 'David', 'Smith', '184 Kennard Ave', 'Toronto', '', 1, '416-230-6727', '', '', 2, '1975-05-06', 'Open to anything...', 'tanya@ashleymadison.com'),
(294, 'Jeff', 'Tim', 'Norris', '10 Davidson bld', 'Hamilton', '90210', 1, '627 3708', '', '', 2, '1972-12-04', 'Looking for something casual', '600@ashleymadison.com'),
(295, 'RealSmoothTouch', 'Tom', 'Cameron', '20 Water st North', 'Burlington', 'N2N2V8', 1, '519 749 1451', '', '', 2, '1962-02-10', 'Smooth touch leads to sensual endings', 'tom2tone@hotmail.com'),
(296, 'senseuwas', 'Tim', 'Larimer', '987 stateline road', 'Oak Grove', '', 1, '270-439-4874', '', '', 2, '1975-12-12', 'Looking for something new and exciting', 't_larimer@yahoo.com'),
(297, 'hottnlean', 'M', 'H', '123 nowhere rd', 'Toronto', '999999', 1, '(416) 654-6543', '(416) 654-6543', '99999', 2, '1961-05-13', 'Tall, dark, lean , hard & handsome', 'mark.hebert00@rogers.com'),
(298, 'hotnlean', 'M', 'H', '123 nowhere rd', 'Toronto', '', 1, '(416) 654-6543', '(416) 654-6543', '', 2, '1961-05-13', 'Tall, dark, lean , hard & handsome', 'mark.hebert00@rogers.com'),
(299, 'hottnhard', 'M', 'H', '123 nowhere rd', 'Toronto', '9999999', 1, '(416) 654-6543', '(416) 654-6543', '', 2, '1961-05-13', 'Tall,dark& handsome ... serious only...no liars', 'mark.hebert00@rogers.com'),
(300, 'lean', 'M', 'H', '123 nowhere rd', 'Toronto', '', 1, '(416) 654-6543', '(416) 654-6543', '', 2, '1961-05-13', 'Tall, dark, lean , hard & handsome', 'mark.hebert00@rogers.com'),
(301, 'tallnlean', 'M', 'H', '123 nowhere rd', 'Toronto', '', 1, '(416) 654-6543', '(416) 654-6543', '', 2, '1961-05-13', 'Tall, dark, lean , hard & handsome', 'mark.hebert00@rogers.com'),
(302, 'tallnleanere', 'M', 'H', '123 nowhere rd', 'Toronto', '', 1, '(416) 654-6543', '(416) 654-6543', '', 2, '1961-05-13', 'Tall, dark, lean , hard & handsome', 'mark.hebert00@rogers.com'),
(303, 'Jack1', 'Steven', 'Jackson', '4455 yonge suite 412', 'Toronto', '', 1, '416-979-1887', '', '', 2, '1960-12-12', 'Looking to meet....', 'stevenjackson@aol.com'),
(304, 'slick23', 'James', 'Gottschalk', '2700 aquitaine', 'Mississauga', '', 1, '9058144918', '', '4169103548', 2, '1976-05-03', 'atached seeking experince', 'gslick23@aol.com');
INSERT INTO `tpeople` (`PEOPLE_ID`, `NICKNAME`, `FIRST_NAME`, `LAST_NAME`, `STREET`, `CITY`, `ZIP`, `COUNTRY`, `PHONE`, `WORK_PHONE`, `MOBILE_PHONE`, `GENDER`, `BIRTHDAY`, `PROFILE_CAPTION`, `EMAIL`) VALUES
(305, 'sillyman', 'Silvano', 'Gemmiti', '123 Nevermind', 'Toronto', 'M6E4W7', 1, '416-6511234', '', '', 2, '1965-04-26', 'Single professional looking for fun', 'silv@globalserve.net'),
(306, 'icq', 'Garry', 'Lawton', 'contact me at garry@pnv.net', 'Seaforth', 'N0G 1W0', 1, '555-1212', 'garry@pnv.net', 'garry@pnv.net', 2, '1953-12-18', 'icq', 'garry@pnv.net'),
(307, 'shmngi', 'Justin', 'Nash', '720 lake dr s', 'Keswick', '', 1, '905 989 1421', '', '', 2, '1974-03-08', 'ready and willing!', 'shmngi2001@yahoo.ca'),
(308, 'darius', 'Darius', 'D''souza', '43 mannging drive', 'Toronto', '99999', 1, '416-495-8400', '416-756-7408', '', 2, '1965-01-01', 'looking4fun', 'kana37ca@yahoo.ca'),
(309, 'realgentleman', 'David', 'Dawney', '30 st claire av', 'Toronto', 'm4v 2a1', 1, '416 885 9847', '', '', 2, '1960-08-22', '"taking off the halo..life''s too short"', 'torontoguy41@hotmail.com'),
(310, 'Maurice69', 'Chris', 'Banick', '648 St James St.', 'London', '', 1, '(519) 858-5770', '(519) 858-5770', '', 2, '1960-08-23', 'Do you want to play?', 'chrisbanick@rogers.com'),
(311, 'BigBoy', 'Paul', 'Popovic', '100 Cosburn Ave', 'Toronto', 'M4J 2E5', 1, '(416)421-2746', '(905)676-4302', '(416)899-8005', 2, '1974-07-16', 'It''ll be our secret!', 'pkingp2002@yahoo.ca'),
(312, 'ETHAN', 'Ethanr', 'Ethanr', '543 fdfm', 'Toronto', '00000', 1, '099090000', '', '', 2, '1966-08-09', 'I am ready if U R', 'darren@morgenstern.com'),
(313, 'wildthing', 'Mark', 'Halpern', '9251-8 Yonge Street', 'Richmond Hill', '', 1, '416-884-0535', '416-884-0535', '416-884-0535', 2, '1965-09-13', 'Are you a lion that needs a tamer?', 'satan@satansplayhouse.com'),
(314, 'sweetlips', 'Christina', 'Barber', '432 Jansen Ave', 'London', '', 1, '519 858-5770', '', '519 660-9607', 1, '1975-10-13', 'Let my lips do the talking', 'hotlips654@hotmail.com'),
(316, 'Bamor', 'Barry', 'Morrison', '1 Toronto St', 'Toronto', '', 1, '416-865-1630', '416-777-1140', '', 2, '1946-01-10', 'LOOKING FOR LOVE', 'bamor@bloomberg.net'),
(317, 'Tommy106', 'Tom', 'Woinoski', '7077 Estoril Rd', 'Mississauga', '', 1, '905-812-8380', '905-333-4332', '', 2, '1961-08-24', 'It Only Gets Better From Here!', 'woinoskitom@hotmail.com'),
(318, 'TONY TUNA', 'Alex', 'Wong', '60 GLENHOME AVE', 'Markham', '', 1, '416-328-5873', '', '', 2, '1905-07-05', 'HOT BROWN MALE', 'serious110@excite.com'),
(319, 'funforever', 'Dm', 'Lawrence', '191 lake driveway west unit 316', 'Ajax', 'l1s7h9', 1, '905-686-3032', '905-686-3032', '', 2, '1968-01-09', 'Let''s live an adventure!!', 'deeemel@hotmail.com'),
(320, 'Reggiesound9', 'Mark', 'Lahaie', '36 Manor Park Cresant', 'GTA', 'N1G1A1', 1, '519-821-3167', '519-836-5600', '', 2, '1967-08-23', 'Happinesss begins with a call, Let''s make a date!!', 'mark9lahaie@hotmail.com'),
(321, 'puts', 'Peter', 'Robinson', 'suite 512 250 eglinton ave e', 'Toronto', 'm3n1v7', 1, '416-969-0681', '416-324-0720', '416-986-3037', 2, '1956-09-11', 'political afficianada', 'primeline61@hotmail.com'),
(322, 'scary', 'Larry', 'Dean', '2189 holt rd bowmanville', 'Canada', '', 1, '905 263 8369', '', '', 2, '1962-01-09', 'try it you wont be disapointed', 'abad 70 @ sympatico .com'),
(323, 'Luvs to please', 'Scott', 'Thompson', 'GTA', 'Gta', 'L9W 4X7', 1, '647-225-0457', '647-225-0457', '647-225-0457', 2, '1967-11-16', 'Let''s spice things up (with cayenne pepper)!!', 'sstoolbox@hotmail.com'),
(324, 'Flexstone', 'Matthew', 'Evans', '730 St. Clarens Ave. #809', 'Toronto', '', 1, '416-719-6477', '', '', 2, '1976-12-16', 'Hot Muscular male looking for an older passionate woman!', 'flexstone11@hotmail.com'),
(325, 'superman9', 'Srdjan', 'Sekulic', '18 Blackhorne cres', 'Kitchener', '', 1, '741-8544', '', '', 2, '1979-05-22', 'Come fly away with me!', 'oasis316@hotmail.com'),
(326, 'MANISH', 'Narendra', 'Sojitra', '705-20 Tuxedo court', 'Scarborough', '', 1, '416 289 3529', '', '', 2, '1953-06-01', 'Electrical Engineer', 'nsojitra@hotmail.com'),
(327, 'scorpio1492', 'Mike', 'Block', '1 Lois Lane', 'Queens', '0000', 1, '7188796877', '', '', 2, '1968-11-01', 'A hot male looking for discreet fun.', 'scorpio1492@hotmail.com'),
(328, 'silly puddy', 'Tommy', 'Baker', '453 Hill Street', 'Fredericton', 'e3b3v4', 1, '506-455-5576', '', '', 2, '1968-02-01', 'I love women!  Would love to find a special friend!', 'zavier1999@hotmail.com'),
(329, 'lilrusty', 'Paul', 'Jones', '36 patricia rd.', 'Stratord', 'N5A 7G9', 1, '519-274-4701', '', '', 2, '1964-06-08', 'very passionate and exciting', 'p_r_jones@hotmail.com'),
(330, 'Palmer', 'John', 'Palmer', '56 Sparks Street', 'Ottawa', 'K1P 5P7', 1, '726-3526', '538-6478', '', 2, '1960-07-23', 'Hello', 'palmer4u_2000@yahoo.com'),
(331, 'CarlJr', 'Carl', 'Junior', '1234 newman', 'Montreal', '', 1, '514 626-1234', '514 626-1234', '514 626-1234', 2, '1965-01-09', 'Meet Discreet', 'carljun@hotmail.com'),
(332, 'Sex4Two', 'Bruce', 'Carbone', '46 Hallsport DR', 'Toronto', 'M3M 2K7', 1, '416341-2400', '', '416-540-5417', 2, '1955-11-03', 'Discreet Fun Wanted', 'bck2wrk2@hotmail.com'),
(334, '2hot2handle', 'A1', 'A1', '229 vallue st.', 'Toronto', 'm8v1x4', 1, '416-777-0987', '', '', 1, '1979-05-07', '"Petite i am ! but all the better when it cums to Wild Sex!', 'suoprtisnsooosforo4f0fd@hotmail.com'),
(336, 'chrissy', 'C15', 'C15', '1198 steels ave w', 'Toronto', '', 1, '9056615482', '', '', 1, '1968-07-05', 'hi guys', '200@ashleymadison.com'),
(337, 'curl', 'Sharon', 'John', '564 st clair ave w', 'Toronto', '528471', 1, '4168524925', '', '', 1, '1965-04-09', 'whats up?', '200@ashleymadison.com'),
(338, 'jamie', 'A3', 'A3', '2001 rutes st.', 'Toronto', '00000000', 1, '416-990-6600', '', '', 1, '1975-06-07', 'welcome, let''s talk and share our most intimate experiences.', '100@ahsleymadion.com'),
(339, 'pearly', 'C17', 'C17', '1550 jane st', 'Toronto', '', 1, '4168624617', '', '', 1, '1970-08-02', 'how are you?', '200@ashleymadison.com'),
(340, 'suzyQ', 'A2', 'A2', '1 valley rd.', 'Toronto', '', 1, '416-889-5543', '', '', 1, '1976-07-05', 'ever fulfill your ultimate fantasy? I''m sure i can help:)', '100@ashleymadison.com'),
(341, 'penny', 'C18', 'C18', '465 eglinton ave w', 'Toronto', '', 1, '4169210152', '', '', 1, '1969-01-08', 'hi', '200@ashleymadison.com'),
(342, 'rosie', 'A4', 'A4', '14 gravel rd.', 'Toronto', 'k8u-5r5', 1, '905-223-8888', '', '', 1, '1981-01-04', 'let it be known, there is alway''s a way..)', '100@ashleymadison.com'),
(343, 'Passion', 'B16', 'B16', '12 easy st', 'Toronto', '123456', 1, '416-491-3876', '', '', 1, '1963-01-07', 'such a powerful emotion', '400@ashleymadison.com'),
(344, 'katch', 'C19', 'C19', '540 markam rd', 'Markam', '', 1, '9055821476', '', '', 1, '1967-03-07', 'here i am', '200@ashleymadison.com'),
(345, 'andy', 'Andy', 'Lall', '94 leacrest street', 'Brampton', 'L6s 3k6', 1, '416 462 5989', '', '416-571-1635', 2, '1956-12-11', 'Hello! Sweet bold barenaked ladies, I love to talk  and meet u!', 'cada99@yahoo.com'),
(346, 'Rogue', 'Sugar Crisp', 'I Promise To Answer All', '1234 toronto', 'North Of Toronto', 'l0g 1r0', 1, '416-414-7197', '', '', 2, '1968-07-23', 'Here for only 3 more days!!!!!!!!!', 'harleyyboyy@hotmail.com'),
(347, 'shy0ne37', 'Traci', 'Brown', 'Oshawa', 'Oshawa', '', 1, '905-579-2551', '', '', 1, '1961-05-29', 'Married White Woman curious about interracial', 'shy0ne37@hotmail.com'),
(348, 'greybill', 'Bill', 'Gallinger', '30 Malta Avenue', 'Brampton', 'L6Y 4S5', 1, '905-796-7768', '905-238-8837', '416-565-0783', 2, '1954-03-22', 'Romantic, discreet with lots of laughter', 'greybill2@yahoo.ca'),
(350, 'jenny4u', 'A5', 'A5', '3333 maple cr.', 'Markham', '', 1, '905-223-4433', '', '', 1, '1965-04-19', 'a little misbehav''n...and lovin it...', '100@ashleymadison.com'),
(351, 'cuddle69', 'A6', 'A6', '41 clam st.', 'Hamilton', '', 1, '905-556-2233', '', '', 1, '1963-01-01', 'a little shy,hope we can break the boundaries,', '100@ashleymadison.com'),
(352, 'pittsy', 'C20', 'C20', '2880 main', 'Hamilton', '', 1, '5198523619', '', '', 1, '1971-03-08', 'smile', '200@ashleymadison.com'),
(353, 'marv', 'C21', 'C21', '2880 main', 'Stoney Creek', '', 1, '5198523619', '', '', 1, '1976-03-08', 'smile at me and I''ll smile back', '200@ashleymadison.com'),
(354, 'niknak', 'A7', 'A7', '45 lavel st.', 'Montreal', '', 1, '514-557-8899', '', '', 1, '1983-12-06', 'need some healing hands...any offers', '100@ashleymadison.com'),
(355, 'Jonquil', 'B17', 'B17', '654 manille street', 'Montreal', '123456', 1, '514-236-9753', '', '', 1, '1971-07-28', 'a flower waiting to be picked', '400@ashleymadison.com'),
(356, 'britt', 'C22', 'C22', '555 lassale', 'Montreal', '', 1, '5148722533', '', '', 1, '1966-07-02', 'keep the spirit', '200@ashleymadison.com'),
(357, 'sunysideup', 'A8', 'A8', 'po box 34', 'Vancouver', '', 1, '604-908-223', '', '', 1, '1956-06-02', 'any one for hands-on experience:)', '100@hotmail.com'),
(358, 'brandy', 'C23', 'C23', '555 lassale', 'Montreal', '', 1, '5148722533', '', '', 1, '1966-07-02', 'talk to me guys', '200@ashleymadison.com'),
(359, 'Sweet Pea', 'B18', 'B18', '423 Young St', 'Toronto', '123456', 1, '416-491-9755', '', '', 1, '1955-10-02', 'come see how sweet i can be', '400@ashleymadison.com'),
(360, 'lizzy', 'C25', 'C25', '650 main st', 'Montreal', '', 1, '5148235984', '', '', 1, '1967-06-07', 'be passionate', '200@ashleymadison.com'),
(361, '2lips4u', 'A9', 'A9', '67 viewpoint', 'Edmonton', '', 1, '403-445-6678', '', '', 1, '1965-11-28', 'it is "I" who has the creativity,and u who will share in it..:)', '100@hotmail.com'),
(362, 'shackles31', 'Edward', 'Shea', '10 Boultbee ave', 'Toronto', '', 1, '416-333-2548', '', '416-333-2548', 2, '1970-10-06', 'I LIKE TOO FUCK WIVE''S', 'e_shea_@hotmail.com'),
(363, 'JJade', 'B19', 'B19', '1345 markham road', 'Markham', 'm7n 5x8', 1, '416-569-3759', '', '', 1, '1970-09-06', 'i''m a gem', '400@ashleymadison.com'),
(364, 'buns4u', 'A10', 'A10', '1111 sherbourne st.', 'Montreal', '', 1, '513-990-8800', '', '', 1, '1980-08-06', 'hello there...i won''t tell if you won''t??', '100@ashleymadison.com'),
(365, 'rita', 'C27', 'C27', '1550', 'Vancouver', '', 1, '6045821753', '', '', 1, '1961-02-01', 'hello there', '200@ashleymadison.com'),
(366, 'star', 'C29', 'C29', '252', 'Edmonton', '', 1, '2045169235', '', '', 1, '1964-09-08', 'hi', '200@ashleymadison.com'),
(367, 'bee', 'C30', 'C30', '252', 'Edmonton', '', 1, '2045169235', '', '', 1, '1964-09-08', 'hi', '200@ashleymadison.com'),
(368, 'Emerald', 'B20', 'B20', '546 wintergreens ave.', 'Vancouver', '', 1, '604-657-1555', '', '', 1, '1966-02-02', 'handle with care', '400@ashleymadison.com'),
(369, 'Shadow', 'B21', 'B21', '345 queen st', 'Toronto', '123456', 1, '416-661-2356', '', '', 1, '1976-04-23', 'excitement & mystery lies within', '400@ashleymadison.com'),
(370, 'Dream', 'B22', 'B22', '5643 eglington ave.', 'Toronto', 'm4b 6tg', 1, '416-661-7999', '', '', 1, '1972-08-22', 'emotions, sensations, images, ideas', '400@ashleymadison.com'),
(371, 'Freesia', 'B23', 'B23', '34 hesp street', 'Hamilton', '', 1, '905-776-9912', '', '', 1, '1960-06-29', 'sweet smelling', '400@ashleymadison.com'),
(372, 'Misty', 'B24', 'B24', '245 livin street', 'Edmonton', 'd6r 3s8', 1, '403-767-3343', '', '', 1, '1968-12-03', 'hi - message me if you like what you see', '400@ashleymadison.com'),
(373, 'Pearl', 'B25', 'B25', '243 verre rue', 'Montreal', 'V4F6H5', 1, '514-584-5994', '', '', 1, '1960-10-30', 'mistress of the sea', '400@ashleymadison.com'),
(374, 'Hard4U', 'Brian', 'Green', '83 Stanford Cres', 'Whitby', '', 1, '905-432-8072', '', '', 2, '1970-03-30', 'When you want it....just grab it', 'rock8072@rogers.com'),
(375, 'Mavrik', 'Mark', 'J', '620 Krug St.', 'Waterloo', '', 1, '581-8140', '', '', 2, '1955-08-15', 'Sensual, discrete man in search of like minded woman', 'mrk_2@yahoo.com'),
(376, 'Sugar Daddy', 'Craig', 'Copland', '1 Yonge St.', 'Toronto', 'M5E 1W7', 1, '905 831 7847', '416 214 4296', '416 569 2915', 2, '1950-10-24', 'Need somebody to look after you?', 'estgent@hotmail.com'),
(377, 'Joe', 'Gordon', 'Mackinnon', '14 Caldwell Cres', 'Brampton', '', 1, '416-817-2966', '', '', 2, '1941-09-26', 'Open to anything....', '500@ashleymadison.com'),
(379, 'durden', 'Thomas', 'Tate', '1 Colty Dr.', 'Markham', 'L6C 2W1', 1, '905-294-7218', '', '', 2, '1973-08-01', 'Intelligent, Creative, Spontanous', 'fife95@hotmail.com'),
(381, 'Carrie', 'Cara', 'Lefebvre', '3407 Clayton Rd.', 'Mississauga', 'L5L 4Z3', 1, '905-607-2024', '', '', 1, '1955-08-20', 'mature woman looking for a mature man.', 'clefeb@doglover.com'),
(382, 'Dutchman', 'Terry', 'Vanderende', '1170 Creekside dr.', 'Oakville', 'L6L 4Y9', 1, '416-576-8787', '', '416-576-8787', 2, '1963-06-26', 'I am a simple person who like the freedom of life', 'tvanderende@cogeco.ca'),
(383, 'bean', 'Paul', 'Dunn', 'rr 1 janetville', 'Janetville', '67744', 1, '705-875-3188', '', '705-875-3188', 2, '1959-10-01', 'call', 'bean105@excite.com'),
(384, 'Cind', 'Cindy', 'Childs', '878 Reytan Blvd', 'Pickering', '', 1, '905 839-2844', '', '', 1, '1960-08-15', 'All yours', 'veryverycurious@hotmail.com'),
(385, 'LOTRfan', 'Jeff', 'Mathieson', '56 castle Park Blvd', 'Regina', 'S4P 2W9', 1, '416-706-2103', '416-706-2103', '416-706-2103', 2, '1964-10-26', 'Attractive man from the city above Toronto', 'hotwoodbridgeman@yahoo.com'),
(386, 'Seeking More...', 'Alicia', 'Lorentz', '6081 Desson Ave', 'Niagara Falls', 'L2J 3V6', 1, '905-357-1123', '', '', 1, '1970-05-01', 'Seeking a passionate, confident, discreet, married man', 'lauren6081@hotmail.com'),
(387, 'Tongue', 'David', 'Long', '1 right here ave', 'Toronto', '', 1, '416-555-5555', '', '', 2, '1968-04-15', 'Tongue looking for a workout', 'dan5652002@yahoo.com'),
(388, 'Damien6t9', 'Tim', 'Mckone', 'General Delivery', 'Allenford', '', 1, '416-877-3677', '', '', 2, '1975-03-17', 'Friendly, Easy-going, Handsome', 'damien6t9@earthlink.net'),
(391, 'hotsauce', 'Michael', 'Teixeira', '346 Bur Oak Avenue', 'Unionville', 'L6C 2T9', 1, '905-927-0312', '905-731-3118', '416-523-5299', 2, '1951-02-07', 'Looking for quality and discretion - something long term!', 'hotpeppers11ca@yahoo.com'),
(392, 'spike', 'Spike', 'Lee', 'north york', 'Toronto', 'm2h1w5', 1, '4164179597', '', '', 2, '1966-12-15', 'are you not being fulfilled as you should be by husband???', 'spikermk07@hotmail.com'),
(395, 'allhands4u', 'A11', 'A11', '998  redgrove cr.', 'Toronto', '00000000', 1, '416-880-4439', '', '', 1, '1962-01-05', '"To all the Guy''s i loved before"....la la la la....', '100@ashleymadison.com'),
(396, 'cutiepie', 'A12', 'A12', '567 burbank ave.', 'Toronto', '0000000', 1, '416-667-3355', '', '', 1, '1979-06-28', 'just a "party animal",  let me know when and where???..)', '100@ashleymadison.com'),
(397, 'meeza', 'C31', 'C31', '583 weston', 'Toronto', '', 1, '4169852354', '', '', 1, '1958-11-09', 'loving,caring,understanding', '200@ashleymadison.com'),
(398, 'legs4u', 'A13', 'A13', '2109 jane st.', 'Toronto', '', 1, '416-990-5109', '', '', 1, '1969-09-28', 'glass of whine,hot bath and lots of.....:)', '100@ashleymadison.com'),
(399, 'wiggles', 'A14', 'A14', '23-3  hillside grove', 'Toronto', '', 1, '905-332-7765', '', '', 1, '1959-11-22', 'i''m older,educated,experienced but down right...HORNY!!!!', '100@ashleymadison.com'),
(400, 'linty', 'C32', 'C32', '520lawrence ave e', 'Toronto', '', 1, '4163256987', '', '', 1, '1961-12-31', 'passion awaits you', '200@ashleymadison.com'),
(401, 'tulips', 'A15', 'A15', '3 river rd', 'Markham', '', 1, '905-222-5543', '', '', 1, '1982-05-21', 'love to peel your banana..:)', '100@ashleymadison.com'),
(402, 'cutecheeks', 'A16', 'A16', '32 indian rd', 'Toronto', 'm3l1z2', 1, '905-223-8890', '', '', 1, '1968-03-22', '"keeping it together" with a pair of strong ......?', '100@ashleymadison.com'),
(403, 'franny', 'Sharon', 'John', '128 islington', 'Toronto', 'm4785236', 1, '4169852658', '', '', 1, '1970-12-08', 'satisfaction is all that matters', '200@ashleymadison.com'),
(404, 'lerose', 'A17', 'A17', '29 redcedarway', 'Montreal', '00000', 1, '514-556-1122', '', '', 1, '1974-09-26', 'there''s more to know about the french...lets talk.', '100@ashleymadison.com'),
(405, 'josee', 'A18', 'A18', '2233 chateau blvd', 'Montreal', '', 1, '514-554-2213', '', '', 1, '1968-12-05', 'why don''t we just get right to the point...:)', '100@ashleymadison.com'),
(406, 'nia', 'C34', 'C34', '119 oakwood', 'Toronto', 'm751269', 1, '4169862231', '', '', 1, '1969-05-06', 'be gentle', '200@ashleymadison.com'),
(407, 'brittney', 'A19', 'A19', '7 arrow rd.', 'Vancouver', '', 1, '604-332-0990', '', '', 1, '1961-05-22', 'My Name is Brittney. And u think she has a hot body??', '100@ashleymadison.com'),
(408, 'downunder', 'A20', 'A20', '69 rolinhay', 'Edmonton', '', 1, '403-221-7191', '', '', 1, '1960-03-09', 'hi boys, gotta light.....', '100@ashleymadison.com'),
(409, 'julie', 'C35', 'C35', '115 markam rd', 'Markam', 'm452369', 1, '9056584532', '', '', 1, '1956-06-03', 'just imagine us', '200@ashleymadison.com'),
(410, 'rocketvince', 'Vince', 'C.', 'Halifax', 'Vancouver', 'V6X3Z2', 1, '902-445-4452', '', '', 2, '1976-03-17', 'Looking for some sexy fun!', 'rocketvince@hotmail.com'),
(411, 'venus', 'C36', 'C36', '111 main', 'Hamilton', '', 1, '4168529631', '', '', 1, '1968-08-07', 'look no more', '200@ashleymadison.com'),
(412, 'jdnow', 'Joe', 'Samson', '1453 Yonge Street', 'Toronto', 'M9A 2M7', 1, '416-568-7898', '416-895-7548', '416-895-7548', 2, '1967-11-05', 'Tenderness, discretion and Satisfaction', 'jdnow2000@yahoo.com'),
(413, 'caramel', 'C37', 'C37', '555 lassale', 'Montreal', '', 1, '5148979256', '', '', 1, '1970-08-02', 'be good', '200@ashleymadison.com'),
(414, 'meg', 'C38', 'C38', '852', 'Montreal', '', 1, '5148062589', '5148732569', '', 1, '1967-07-01', 'try me', '200@ashleymadison.com'),
(415, 'lin', 'C39', 'C39', '4512', 'Victoria', '', 1, '6048529631', '', '', 1, '1957-05-08', 'hi there', '200@ashleymadison.com'),
(416, 'mac', 'C40', 'C40', '450', 'Edmonton', '', 1, '2045863258', '', '', 1, '1969-06-03', 'hi guys', '200@ashleymadison.com'),
(417, 'Socrates', 'Marcel', 'Proust', 'I8U St-Laurent', 'Montreal', '', 1, '514-212-3333', '', '514-323-4444', 2, '1964-02-04', 'The thinking woman''s choice', 'socrateslives@excite.com'),
(418, 'wonder', 'Stephen', 'Varga', '137 langstaff rd east', 'Toronto', 'l3t 3m6', 1, '416 274 7057', '416 274 7057', '416 274 7057', 2, '1965-04-05', 'hi im looking for friendship, romance and passion', 'slfslf123@hotmail.com'),
(419, 'Discrete One', 'Brent', 'Hurd', '200 Parkside dr. E', 'Orangeville', 'l9w 4k7', 1, '519-835-1711', '', '', 2, '1974-09-18', 'Here for fun nothing serious', 'brenthurd@hotmail.com'),
(421, 'great2bwith', 'Darryl', 'Richards', '1 Concorde GATE', 'North York', 'M3C 3N6', 1, '905 731 0133', '416-447-3235', '416-720-6432', 2, '1958-06-28', 'Fun, Friendship, Comfort & Passion', 'great2bwith2002@yahoo.ca'),
(422, 'goldNdiamonds', 'B26', 'B26', '1234 hurontario st', 'Toronto', '', 1, '416-661-3334', '', '', 1, '1971-05-15', '24 Carats Baby', '400@ashleymadison.com'),
(423, 'lacey', 'B27', 'B27', '1234 frank street', 'Montreal', 'v5g 8j6', 1, '514-284-3737', '', '', 1, '1976-08-22', 'be careful - im delicate', '400@ashleymadison.com'),
(424, 'tater', 'John', 'Ramirez', '5406 kinglet Ave', 'Mississauga', 'L5V 2C8', 1, '9058130039', '', '', 2, '1969-05-07', 'Good times, intimate pleasure, no strings.', 'tatoramirez@hotmail.com'),
(425, 'silvia', 'Amanda', 'Philip', 'p.o.box 125.toronto.ont', 'Richmondhill', '', 1, '210-4400', '', '', 1, '1960-06-02', 'store owner', 'nagat30@hotmail.com'),
(426, 'Crystall', 'B28', 'B28', '668 gerd street', 'Hamilton', '', 1, '905-368-9978', '', '', 1, '1975-05-04', 'Here I Am', '400@ashleymadison.com'),
(427, 'Violet', 'B29', 'B29', '55 arm street', 'Toronto', '', 1, '416-221-6645', '', '', 1, '1974-01-08', 'can you keep a secret?', '400@ashleymadison.com'),
(428, 'vince', 'Austin', 'Vaughan', '22', 'Toronto', '', 1, '416-222-2222', '', '', 2, '1960-09-25', 'Looking for interesting conversation', 'vaughanaustin@hotmail.com'),
(429, 'Blue Topaz', 'B30', 'B30', '44 redd avenue', 'Markham', '', 1, '416-667-9877', '', '', 1, '1978-07-01', 'is the right guy out there?', '400@ashleymadison.com'),
(430, 'El gatito', 'B31', 'B31', '456 waterdown drive', 'Vancouver', 'V5Y 1V4', 1, '604-564-0841', '', '', 1, '1969-11-01', 'esclavo del amor', '400@ashleymadison.com'),
(431, 'none', 'Brian', 'Lewis', '405 The West Mall', 'Toronto', '', 1, '416 620 3114', '416 620 3114', '', 2, '1958-10-10', 'A good, safe, sexy catch', 'steve_trofimchuk@parmalat.ca'),
(432, 'Opal', 'B32', 'B32', '2970 Don Mills', 'North York', '123456', 1, '416-491-6619', '', '', 1, '1954-03-30', 'lets put our imaginations together and see what happens', '400@ashleymadison.com'),
(433, 'whipcream', 'Barbara', 'Barlow', '4563 lawrence avenue', 'Toronto', 'm4h 7f5', 1, '416-661-9956', '', '', 1, '1968-02-01', 'who wants dessert?', '400@ashleymadison.com'),
(434, 'Treasure Box', 'B34', 'B34', '567 buner road', 'Lasalle', '', 1, '514-444-0980', '', '', 1, '1969-01-11', 'can you find the hidden jewels', '400@ashleymadison.com'),
(435, 'Ruby', 'B35', 'B35', '665 treetop road', 'Edmonton', '', 1, '403-767-9989', '', '', 1, '1961-07-27', 'lets do this', '400@ashleymadison.com'),
(436, 'fireinme55', 'Robin', 'Underwood', 'rr4', 'Orangeville', 'L9W 2Z1', 1, '519-940-4971', '', '519-939-6658', 2, '1955-06-11', 'What are you looking for?', 'iseeu@netrover.com'),
(437, 'tjaca100', 'Jase', 'Tanner', '507-2050 Scotia Street', 'Vancouver', '', 1, '604 709 4272', '', '', 2, '1959-01-28', 'Looking for whats missing', 'tjaca51@hotmail.com'),
(438, 'Gentleman', 'Paul', 'Zed', '5111 new street', 'Chatham-kent', 'N7L4V5', 1, '416 345 9201', '', '416 910 8993', 2, '1970-06-05', 'Boyish Grin-Devilish Mind', 'ginmartini70@hotmail.com'),
(440, 'Rooster', 'Paul', 'Roberts', '1 yonge street', 'Toronto', '', 1, '416 727 8558', '', '416 258 5382', 2, '1957-06-14', 'Put the fun back in dysFUNctional', 'bpaul@cmtoronto.com'),
(441, 'Starfish', 'Wayne', 'Garden', '340 Avenue Road', 'Toronto', '', 1, '416 923 4595', '', '', 2, '1973-01-31', 'I want what I can''t have at home!', 'teaman@hotmail.com'),
(443, 'Jane', 'Maureen', 'Matthew', '53 Flamingo Crescent', 'Regina', 'S4S 4L6', 1, '306-585-3017', '306-584-9198', '', 1, '1959-09-01', 'Explorer', 'innovalearning@sk.sympatico.ca'),
(446, 'tarzanboy2001', 'Joe', 'Duncanson', '2357 Labieux Rd.', 'Nanaimo', '', 1, '250-754-8278', '', '', 2, '1973-01-08', 'Looking for some discreet, kinky fun', 'tarzanboy19@hotmail.com'),
(449, '30Tarzanboy', 'Joe', 'Duncanson', '2357 Labieux Rd.', 'Nanaimo', '', 1, '250-754-8278', '', '', 2, '1973-01-08', 'Looking for some discreet, kinky fun', 'tarzanboy19@hotmail.com'),
(450, 'bullit', 'Sandra', 'Boomer', '185 cobblestone street', 'Toronto', '', 1, '416-259-7323', '', '', 1, '1974-03-08', 'where are you BIG boys', 'shakes_ca@yahoo.com'),
(451, 'Nice Guy', 'Gord', 'Cochrane', 'rthrt', 'Toronto', '', 1, '5675656', '', '', 2, '1963-02-03', 'Hi Ladies, I''m easy Going', 'webmaster@ashleymadison.com'),
(453, 'winner', 'Nancy', 'Denby', '881- 15th Avenue', 'Calgary', '', 1, '403-245-0714', '403-245-0714', '', 1, '1949-04-29', 'Fun and Leisurely Sex', 'great@shaw.ca'),
(454, 'ROCKY', 'Tim', 'Allen', '3 Mill ST', 'Brampton', '', 1, '905-452-3700', '', '416-464-8073', 2, '1956-03-11', 'IA''M WAITING', 'altim12345@aol.com'),
(455, 'mickyblueeyes', 'Michael', 'Mccrank', '29 church road', 'Gatineau', 'K2P 4J5', 1, '8196485762', '', '', 2, '1956-04-20', 'Think we can make a little fire!!!!', 'micrank@aol.com'),
(456, 'jake', 'Mike', 'Douglas', '15 king st E', 'Hamilton', '', 1, '905-727-0122', '', '', 2, '1969-03-07', 'looking for fun!', 'gamblerwins@yahoo.com'),
(457, 'VELCROMAN', 'Bhup', 'Singer', '86 WHITEHORN CRES', 'North York', '', 1, '416-502-9099', '', '', 2, '1964-05-23', 'ROMANTIC AT HEART', 'velcroman_@hotmail.com'),
(458, 'Jaymie', 'James', 'Donald', '10335-147 STREET', 'Edmonton', 't5t 5h5', 1, '780-451-4848', '', '', 2, '1962-12-07', 'An nice girls looking for a bit of spoiling??', 'hhenders@telusplanet.net'),
(460, 'jen', 'A21', 'A21', '56 mtpleasant dr.', 'Toronto', 'M7A 2W3', 1, '416-779-3388', '', '', 1, '1963-07-21', '***** Bite me...not too hard !! *****', '100@ashleymadison.com'),
(461, 'kimmy', 'C41', 'C41', '154 finch ave w', 'Toronto', 'm142568', 1, '4169823503', '', '', 1, '1967-08-03', 'show me the way guys', '200@ashleymadison.com'),
(462, 'tabitha', 'A22', 'A22', '99 welland st.', 'Torono', '000000', 1, '416-709-1111', '', '', 1, '1976-10-27', '"Just got back from Rome.....talk about ROMANTIC......"', '100@ashleymadison.com'),
(463, 'abbee', 'Sharon', 'John', '2835 young st', 'Toronto', '37l2j4', 1, '4168032596', '', '', 1, '1959-09-06', 'lets share', '200@ashleymadison.com'),
(464, 'class', 'A23', 'A23', '233 eden cr.', 'Toronto', '', 1, '416-990-6601', '', '', 1, '1959-10-05', 'looking to meet a classy gentlemen...to share my inner desires..', '100@ashleymadison.com'),
(465, 'cherry', 'C43', 'C43', '4550 sheppard ave w', 'Toronto', '', 1, '4162225835', '', '', 1, '1971-02-07', 'feel free with me', '200@ashleymadison.com'),
(466, 'peaches', 'A24', 'A24', '35 lyton st.', 'Toronto', '0000000', 1, '416-660-4900', '', '', 1, '1970-07-04', 'waiting for the right pickin...', '100@ashleymadison.com'),
(467, 'nikki', 'C44', 'C44', '1111 albion', 'Toronto', '', 1, '4165235555', '', '', 1, '1969-06-08', 'think you can handle me', '200@ashleymadison.com'),
(468, 'erotic4u', 'A25', 'A25', '2 apple dr.', 'Toronto', '', 1, '905-223-6657', '', '', 1, '1980-09-25', 'as i rub my lantern..wishing for my night and shining armour???', '100@ashleymadison.com'),
(469, 'suzie', 'C45', 'C45', '1563 markam', 'Markam', '', 1, '4161298735', '', '', 1, '1958-11-04', 'do you think you can satisfy me', '200@ashleymadison.com'),
(470, 'zena', 'C46', 'C46', '2228', 'Hamilton', '', 1, '5195682348', '', '', 1, '1970-03-06', 'love, trust,understanding', '200@ashleymadison.com'),
(471, 'notanlines', 'A26', 'A26', '90 maryhill dr.', 'Hamilton', '', 1, '905-223-0900', '', '', 1, '1961-03-25', 'its great to meet other people who have the same desires as i do', '100@ashleymadison.com'),
(473, 'sue', 'B200', 'B200', '795 lassale', 'Montreal', 'f5v7g9', 1, '5148932479', '', '', 1, '1971-12-04', 'your search ends here', '400@ashleymadison.com'),
(474, 'appetite4luv', 'A27', 'A27', '50 gardner ave', 'Montreal', '00000000-', 1, '514-999-9899', '', '', 1, '1978-02-26', 'so much to give and so little time to give it...:)', '100@ashleymadison.com'),
(475, 'shevy', 'C48', 'C48', '8536', 'Montreal', '', 1, '5148735968', '', '', 1, '1971-05-03', 'hi guys', '200@ashleymadison.com'),
(476, 'sash', 'C49', 'C49', '4562 kinggeorge', 'Surrey', '', 1, '6048889631', '', '', 1, '1967-09-03', 'be romantic', '200@ashleymadison.com'),
(477, 'bella', 'A28', 'A28', '7 lebra st.', 'Montreal', '', 1, '514-211-6777', '', '', 1, '1969-04-27', 'cum over to montreal...I''ll show u a good time..', '100@ashleymadison.com'),
(478, 'john', 'Waheed', 'Syed', '8 Big Red Ave', 'Ladysmith', 'V9G 1L6', 1, '416 412-7464', '905 513-7750', '647 274 6148', 2, '1969-02-05', 'Affection, passion, discretion...', 'johnh1997@hotmail.com'),
(479, 'reesa', 'C50', 'C50', '8995', 'Edmonton', '', 1, '2042123666', '', '', 1, '1969-09-05', 'lets satisfy each other', '200@ashleymadison.com'),
(480, 'bucc', 'Scott', 'Lamble', '109 phillip ave', 'Scarborough', '', 1, '416-266-5508', '416 752-1679 x 223', '', 2, '1965-02-03', 'married man looking for attached woman', 'slamble@growingfamily.com'),
(481, 'lolita', 'A29', 'A29', '566 john st.', 'Vancouver', '', 1, '604-776-3544', '', '', 1, '1972-08-28', 'are u the man for me???', '100@ashleymadison.com'),
(482, 'lolly', 'A30', 'A30', '77 usher st.', 'Edmonton', '', 1, '403-723-8877', '', '', 1, '1965-06-24', 'adventerous,discreet,always in need of one thing!!!', '100@ashleymadion.com'),
(483, 'sagaboy', 'Saga', 'Voy', 'hfuyr', 'Sun', '', 1, '1 868 456 3968', '', '', 2, '1973-10-29', 'hmmmmmmmmmmmmmmmmmm.........', 'aamron@yahoo.com'),
(484, 'French Lover', 'David', 'Boucher', '300 Juniper', 'Toronto', '', 1, '416-690-2323', '', '', 2, '1961-05-20', 'Un bel homme mature pour vous madame!', 'volevite@hotmail.com'),
(485, 'identboy', 'Smyth', 'Dave', '777 Memorial Ave', 'Orillia', 'L3V 7V3', 1, '329-6978', '329-6978', '', 2, '1966-07-10', 'The cop seeks a lady', 'dave.sibley@jus.gov.on.ca'),
(486, 'Sparkles', 'B36', 'B36', '756 gemini street', 'North York', '', 1, '416-491-8457', '', '', 1, '1963-12-19', 'lets see what happens', '400@ashleymadison.com'),
(487, 'Heartbeat', 'B37', 'B37', '2465 doll ave.', 'Toronto', '123456', 1, '416-857-9654', '', '', 1, '1953-09-28', 'lets get that heart pumping again', '400@ashleymadison.com'),
(488, 'Petals', 'B38', 'B38', '456 toronto st.', 'Chateauguay', '', 1, '514-995-7677', '', '', 1, '1957-01-09', 'lets get our imaginations rolling', '400@ashleymadison.com'),
(489, 'Shine', 'B39', 'B39', '45 lakeshore blvd.', 'Toronto', '', 1, '416-543-1543', '', '', 1, '1961-10-31', 'looking for fun', '400@ashleymadison.com'),
(490, 'Kitten', 'B40', 'B40', '45 rocky road', 'Red Deer', '123456', 1, '403-255-6672', '', '', 1, '1960-08-01', 'it takes a lot more than a ball of string to keep me entertained', '400@ashleymadison.com'),
(491, 'crypt_angel', 'Stewart', 'Kyle', '3847 lawrence ave east apt #1201', 'Toronto', 'm1g 1r5', 1, 'n/a', 'n/a', '647-999-4375', 2, '1974-07-30', 'goth looking for a sextoy...', 'crypt_angel666@hotmail.com'),
(492, 'jonny', 'John', 'Kenedy', '150 queen st West', 'Toronto', '', 1, '416 537-0000', '416 537-0026', '416 547-0104', 2, '1957-05-01', 'ENGINER', 'john999@look.ca'),
(493, 'Mr Grant', 'Hugh', 'Nugent', '12 Donjeux', 'Montreal', 'J6Z3C5', 1, '450-768-4381', '450-768-4381', '', 2, '1953-08-09', 'Mr Grant is in the building!!', 'thenuge@email.com'),
(494, 'Willy', 'William', 'Kajdocsy', '54 Heaslip Terrace', 'Scarborough', '', 1, '416-291-4863', '', '', 2, '1929-11-06', 'Willy is looking for you!', 'william.kajdocsy@sympatico.ca'),
(495, 'Storm', 'B41', 'B41', '3456 st. clair avenue', 'Toronto', '', 1, '416-661-8585', '', '', 1, '1965-03-07', 'stop - you found me', '400@ashleymadison.com'),
(496, 'mim', 'Domenic', 'Giannone', '8476 Joliot Curie', 'Montreal', 'h1e 4c3', 1, '514-881-8849', '514-731-0404', '514-803-0822', 2, '1968-03-01', 'looking for new adventure,', 'domnella@hotmail.com'),
(497, 'Raspberry', 'B42', 'B42', '4657 york street', 'Hamilton', '', 1, '905-438-8729', '', '', 1, '1963-09-26', 'is this what your looking for?', '400@ashleymadison.com'),
(498, 'DreamWeaver', 'Donald', 'Joyce', '14 Courton Drive', 'Scarborough', 'M1R1K8', 1, '416-605-8242', '', '', 2, '1958-06-12', 'Do It Now', 'donald.joyce@sympatico.ca'),
(499, 'Mint', 'B43', 'B43', '3645 markham road', 'Markham', '', 1, '416-334-5645', '', '', 1, '1955-06-08', 'look no further', '400@ashleymadison.com'),
(500, 'Breezy', 'B44', 'B44', '456 raindrop road', 'Coquitlam', '', 1, '250-224-8588', '', '', 1, '1957-05-24', 'live your life to the fullest', '400@ashleymadison.com'),
(501, 'Mittens', 'B45', 'B45', '453 rue losire', 'Laval', '', 1, '514-996-1119', '', '', 1, '1961-01-30', 'enjoy it while you still can', '400@ashleymadison.com'),
(502, 'Trevor', 'John', 'Kustermans', '229 Lakeshore Rd. E.', 'Mississauga', '', 1, '905-891-8164', '416-363-0274', '', 2, '1963-01-19', 'Mr. Eveready is waiting for you', 'www.johnkustermans@hotmail.com'),
(503, 'BJBJ', 'Barry', 'Ring', 'RR #1', 'Erin', 'N0B 1T0', 1, '519-833-0050', '', '', 2, '1945-11-16', 'Can eat all day', 'bjking@total.net'),
(504, 'frosty', 'John', 'Saunders', '1325 Lawence Ave', 'Mississauga', 'L4W2P5', 1, '416-862-', '', '', 2, '1966-03-16', 'lonely married guy.. Is that possible ?', 'frosty_beer@hotmail.com'),
(505, 'Ashley', 'Ashley', 'Brown', '23 sdfa', 'Laval', '', 1, '450-656-5566', '', '', 1, '1980-05-03', 'Hey', 'ashley@hotmail.com'),
(506, 'pju40', 'Peter', 'Ulbricht', '4108 Trapper Cr.', 'Mississauga', '', 1, '905-607-1717', '', '905-601-1391', 2, '1956-07-04', 'Selectively Seeking', 'pju40@yahoo.com'),
(507, 'sunny', 'Sunil', 'D', 'wewewe', 'Markham', 'L4C1C6', 1, '(613) 636 2546', '', '', 2, '1974-02-03', 'Hi girls, looking for a fun relationship', 'sunny_on68@hotmail.com'),
(508, 'HappyEnding', 'Michael', 'Gregory', '154 University Ave.', 'Toronto', '', 1, '416-204-2020', '', '416-809-3754', 2, '1970-01-03', 'Nothing but fine wine and bedroom fun!!', 'happy_ending@hotmail.com'),
(509, 'Famished', 'R', 'S', 'Toronto', 'Toronto', 'M1E 4S4', 1, '4161234567', '', '', 2, '1960-12-01', 'A Big Smile', 'hellohello78@hotmail.com'),
(511, 'sempre_bc', 'P', 'H', '2430 West 4th Ave', 'Vancouver', '', 1, '(604)273-1832', '', '', 2, '1974-01-08', 'Always', 'sempre_bc@hotmail.com'),
(512, 'Jakebaby', 'Blake', 'Steel', '1700 Woodbine Ave', 'Markham', 'L3R4G8', 1, '9054152206', '9054152206', '4169912206', 2, '1970-05-01', 'Looking for love in all the right places.', 'rickpearl@hotmail.com'),
(513, 'blackwolf1974', 'Ben', 'Dvoracek', 'Pembroke', 'Pembroke', '', 1, '613-639-3991', '', '', 2, '1974-03-14', 'Look''n to spice up my life and Howl at the Moon!', 'blackwolf1974@hotmail.com'),
(514, 'kimberlysue', 'Karen', 'Mitchell', 'Box 1944', 'Red Deer', 'T4R 1N9', 1, '403-340-3087', '', '', 1, '1973-05-06', 'Passion and Fun', 'kimberly_sue@hotmail.com'),
(515, 'A Gem 4 U', 'Joseph', 'Kosy', 'port hope', 'Port Hope', 'l1a 3v5', 1, '9057532475', '', '', 2, '1964-05-21', 'Partner in Crime....Where the boundaries never end', 'jmkeyou@hotmail.com'),
(516, 'Jaclyn', 'Rjtyt', 'Thrthtr', 'thrthrtryh', 'Belleville', '999888', 1, '464646456', '', '', 1, '1965-07-08', 'I want a boy I can train', 'dmorgenstern@rogers.com'),
(517, 'Nice Young Guy', 'Marco', 'Anglesio', '19 Lascelles Blvd', 'Montreal', 'h3c 2n8', 1, '4164832153', '', '', 2, '1974-10-30', 'Well-educated professional seeking ...?', 'marc_sm74@yahoo.com'),
(518, 'kev176', 'Kevin', 'Stewart', '4190 Springer rd.', 'Delaware', 'n0l1e0', 1, '519-652-4503', '519-246-9600 ex192', '', 2, '1962-01-07', 'Hi, looking for fun and excitement.', 'kevinstewart@execulink.com'),
(519, 'Auster', 'David', 'Hunt', '75 Fern Avenue', 'Toronto', 'M6R1K2', 1, '(416) 829-3940', '', '(416) 829-3940', 2, '1964-03-03', 'Looking for a grown-up Lisa Simpson type :-)', 'david_hunt@canada.com'),
(520, 'Tallguy', 'Todd', 'Moore', '36 High Park Ave.', 'Toronto', 'M6S4V2', 1, '416-751-5454', '', '', 2, '1967-11-17', 'Let''s Have Some Fun!', 'slowandeasytt2@gmail.com'),
(521, 'tash', 'C51', 'C51', '432 keele st', 'Ottawa', '', 1, '6132568912', '', '', 1, '1968-07-07', 'i''m yours to discover', '200@ashleymadison.com'),
(522, 'fang', 'C52', 'C52', '582', 'Ottawa', '', 1, '6135489325', '', '', 1, '1972-07-05', 'looking for fun', '200@ashleymadison.com'),
(523, 'cookiesNcream', 'B46', 'B46', '45 green street', 'Ottawa', 'n6h 7d4', 1, '613-878-5541', '', '', 1, '1972-01-12', 'Baby Got Front AND Back!', '400@ashleymadison.com'),
(525, 'raindrop', 'B47', 'B47', '6453 toad road', 'Toronto', '', 1, '416-555-1244', '', '', 1, '1962-08-18', 'lets talk and see what happens', '400@ashleymadison.com'),
(526, 'Rubytuesday', 'Kimble', 'Maguire', '34 Glenforest rd', 'Brampton', '', 1, '905-799-1809', '', '416-456-7767', 2, '1955-12-27', 'Afternoon delight', 'elbmikca@yahoo.com'),
(527, 'tori', 'C53', 'C53', '777', 'Kanata', '', 1, '5555222', '', '', 1, '1969-12-07', 'full of romance', '200@ashleymadison.com'),
(528, 'Sugar', 'B48', 'B48', '555 happy street', 'Kanata', '', 1, '519-584-9456', '', '', 1, '1965-05-16', 'sugar n spice and everything nice', '400@ashleymadison.com'),
(529, 'dally', 'C54', 'C54', '753', 'Kingston', '', 1, '9054853215', '', '', 1, '1968-05-01', 'sugar and spice and everything nice', '200@ashleymadison.com'),
(530, 'Peachy', 'B49', 'B49', '46 fake street', 'Burnaby', '', 1, '250-555-5354', '', '', 1, '1960-12-01', 'you could be the one', '400@ashleymadison.com'),
(531, 'fay', 'C55', 'C55', '788', 'Edmonton', '', 1, '2045636963', '', '', 1, '1967-06-04', 'lets get it on', '200@ashleymadison.com'),
(532, 'hannah', 'C56', 'C56', '566', 'Edmonton', '', 1, '2041236985', '', '', 1, '1970-03-06', 'hot and spicey', '200@ashleymadison.com'),
(533, 'CandyKisses', 'B50', 'B50', '23 jive avenue', 'Calgary', '00000', 1, '403-780-6758', '', '', 1, '1971-06-29', 'Looking for......', '400@ashleymadison.com'),
(534, 'mel', 'C57', 'C57', '126', 'Vancouver', '', 1, '6048523149', '', '', 1, '1966-04-19', 'whats up guys', '200@ashleymadison.com'),
(535, 'luckyy', 'B51', 'B51', '67 little street', 'Toronto', '123456', 1, '416-224-0505', '', '', 1, '1979-03-30', 'lets get lucky together', '400@ashleymadison.com'),
(536, 'jenny', 'C58', 'C58', '111', 'Burnaby', '', 1, '6045892314', '', '', 1, '1969-07-02', 'very passionate', '200@ashleymadison.com'),
(537, 'rina', 'C59', 'C59', '90 keele st', 'Toronto', '', 1, '4165325482', '', '', 1, '1969-05-09', 'lets tango', '200@ashleymadison.com'),
(538, 'lil''devil', 'B52', 'B52', '675 Mountain Road', 'Vancouver', 'r5y b4d', 1, '604-996-9967', '', '', 1, '1964-11-23', 'inveterate troublemaker seeks conspirator', '400@ashleymadison.com'),
(539, 'wilma', 'C60', 'C60', '562', 'Toronto', '', 1, '4169235614', '', '', 1, '1971-09-06', 'greetings', '200@ashleymadison.com'),
(541, 'Magic', 'B53', 'B53', '45 dimple drive', 'Kingston', '', 1, '905-767-1234', '', '', 1, '1972-09-21', 'the right time in the right place....', '400@ashleymadison.com'),
(542, 'gr8stack4u', 'A31', 'A31', '888 tower st.', 'Toronto', '999999999', 1, '514-555-9880', '', '', 1, '1968-06-29', 'He was cute and hung, but not all up there!!! Are u?', '100@ashleymadison.com'),
(543, 'Oceana', 'B54', 'B54', '67 ocean drive', 'Edmonton', '', 1, '780-656-1234', '', '', 1, '1959-02-28', 'hello, is it me your looking for', '400@ashleymadison.com'),
(544, 'SweetAngel', 'B55', 'B55', '26 creepy street', 'Ottawa', '123456', 1, '613-458-4865', '', '', 1, '1969-07-22', 'dont care to be lonely anymore', '400@ashleymadison.com'),
(545, 'pushinme', 'A32', 'A32', '609 redpath crt', 'Ottawa', '', 1, '514-666-0000', '', '', 1, '1976-12-05', 'topless on the beach......anyone looking..hope so:)', '100@ashleymadison.com'),
(546, '2slow2bad', 'A33', 'A33', '2 lynx st.', 'Kanata', '', 1, '905-442-8877', '', '', 1, '1960-05-09', 'got a few tricks up your sleeve?', '100@ashleymadison.com'),
(547, 'urngudhands', 'A34', 'A34', '3 littlerock dr.', 'Edmonton', '', 1, '403-777-4321', '', '', 1, '1962-01-06', 'I''m alittle shy,but tell me a story:)', '100@ashleymadison.com'),
(548, 'Mrs.goodntight', 'A35', 'A35', '90-1  etna cr.', 'Vancouver', 'm5t-s4w', 1, '604-332-6650', '', '', 1, '1969-07-29', 'lets make a wish......', '100@ashleymadison.com'),
(549, 'fun4u', 'A36', 'A36', '99 valley dr.', 'Burnaby', '', 1, '604-554-9981', '', '', 1, '1980-10-24', 'I don''t think it''s not classy not to wear panties?????', '100@ashleymadison.com'),
(550, 'forever', 'A37', 'A37', '4445 martin grove cr.', 'Toronto', '0000000', 2, '416-999-6799', '', '', 1, '1979-08-27', 'show me your photo, well take it from there....', '100@ashleymadison.com'),
(551, '2timesthefun', 'A38', 'A38', '5 redcedarway blv', 'Toronto', '', 2, '416-342-8800', '', '', 1, '1966-04-27', 'we''re bound to capture our intense passionate heat....', '100@ashleymadison.com'),
(552, '69nerrrr', 'A39', 'A39', '2111  greatlakes ave', 'Kingston', '', 2, '905-998-1109', '', '', 1, '1971-04-24', 'open to suggestions??????', '100@ashleymadison.com'),
(553, 'smoothlikesilk', 'A40', 'A40', '9 summergrove dr.', 'Edmonton', 'g6r-g6s', 2, '403-999-6566', '', '', 1, '1979-07-28', 'long golden curly hair,gently brushing up against smooth tanned.', '100@ashleymadison.com'),
(554, 'Bobby', 'Oiuytg', 'Oyg', 'olyyly', 'Toronto', '', 2, '9876987', '', '', 2, '1976-05-08', 'Let Me Light Your Fire', 'darren@morgenster.com'),
(555, 'RAINMAN', 'Derek', 'Peatling', '24 MCARTHUR HEIGHTS', 'Brampton', '', 2, '4167026699', '', '', 2, '1956-01-02', 'live for today', 'peatling@nutnbut.net'),
(556, 'Dante', 'Ken', 'Storimans', '11753 Sheppard Ave. E', 'Toronto', 'M1B 5M3', 2, '(416) 286-1493', '(416) 286-1493', '', 2, '1959-11-14', 'Its not the destination that matters', 'kenstorimans@sympatico.ca'),
(557, 'Dibi', 'Tony', 'Dibernardo', '860 Progress Court', 'Oakville', 'L6L 1K6', 2, '416-989-4039', '', '', 2, '1961-05-06', 'Looking for someone to share the passion', 'dibi24@hotmail.com'),
(558, 'excell', 'Jim', 'Toronto', 'toronto', 'Toronto', 'm3b 1v6', 2, '905 787 9500', '', '', 2, '1959-01-15', 'Would you like to share a special adventure together', 'winterock@hotmail.com'),
(559, 'treymack', 'Trey', 'Mack', '1840', 'Toronto', 'M1C 5B2', 2, '416 2668030', '416 8545972', '', 2, '1966-03-17', 'Hi 36 attractive black male slim muscular sincere and discreet', 'treymack@yahoo.com'),
(560, 'Energetic', 'Jonathan', 'Smith', '155 University Avenue', 'Toronto', 'M5H 3B7', 2, '416-123-4567', '416-867-9099x223', '', 2, '1961-08-10', 'IM Intelligent/Immaginative/Attractive/Witty/Giving RU?', 'jonathan123xyz@hotmail.com'),
(561, 'gx53', 'Mark', 'Davis', '117 Whitburn Cres.', 'Toronto', '', 2, '4166354590', '', '', 2, '1975-07-10', 'Attached but lonley', 'gx53@hotmail.com'),
(562, 'here4u', 'Paul', 'Dunn', 'rr 1 janetville', 'Lindsay/port Perry', '22222', 2, '705-875-3188', '', '705-875-3188', 2, '1960-10-01', 'just some fun no strings', 'bean105@excite.com'),
(563, 'Scorpio_Prince', 'Ron', 'Farraway', '10 Laura Ct.', 'Hamilton', '', 2, '905-515-4240', '', '', 2, '1972-10-23', 'A Prince with a bit of a sting', 'northern_prince@hotmail.com'),
(564, 'Mr. Kiss', 'Steven', 'Green', '32 Frank Endean Rd', 'Richmond Hill', '', 2, '905-780-0088', '', '', 2, '1955-06-28', 'Exciting, tender, real sweet, just the guy you want to meet!', 'steven1@ziplip.com'),
(565, 'Nicknameless', 'Rasheed', 'Jawad', '8 Princess Ave', 'North Gta', 'l3y1l5', 2, '4166762440', '4166762440', 'n/a', 2, '1972-11-01', 'More than a handful!', 'grasshunter1@hotmail.com'),
(566, 'babe', 'Sandy', 'Mandell', '58 apple creek rd', 'Toronto', 'M4L 2G2', 2, '416 555 2222', '', '', 1, '1967-07-27', 'I want to know you', '600@ashleymadison.com'),
(567, 'flower', 'Missy', 'Yolik', '585 kroft rd', 'Toronto', '', 2, '555 5588', '', '', 1, '1957-10-20', 'looking for something casual', 'jen@ashleymadison.com'),
(568, 'sweetwoman', 'Danica', 'Herman', '14 prince edward bld', 'Toronto', '444444', 2, '416 856 5212', '', '', 1, '1954-09-14', 'I am sweet...that''s all you need', 'jen@ashleymadison.com'),
(569, 'Gr8tful', 'Serjo', 'Guimaraes', '3351 Bertrand Rd', 'Mississauga', '00000', 2, '905-607-0552', '416-999-7375', '416-999-7375', 2, '1974-06-16', 'No time to waste!', 'only_if_you_knew@hotmail.com'),
(570, 'Princess lace', 'Ooiuhuo', 'Ohuhui', 'ihihhouiqq', 'Toronto', '000000', 2, '65443333', '', '', 1, '1980-11-12', 'Lovely in Lace', 'tanya_dercach@courtesysupportteam.net'),
(571, 'ready4u', 'Katy', 'Diamond', '555 old english lane', 'Toronto', '222222', 2, '416 232 5523', '', '', 1, '1970-05-05', 'I am ready4u', 'jen@ashleymadison.com'),
(572, 'maggie', 'Darci', 'Hill', '879 pride av', 'Toronto', 'K2L3M3', 2, '416 222 3333', '', '', 1, '1953-11-22', 'I am new at this', 'jen@ashleymadison.com'),
(573, 'Gordon', 'Jamie', 'Stewart', '941 Gordon Street Unit 25', 'Milton', 'L9T 5B7', 2, '905-334-0246', '905-693-8558', '', 2, '1977-04-04', 'Looking for some discreet fun!', 'gordon941@hotmail.com'),
(574, 'boytoy', 'Jessica', 'Dean', '63 castle st', 'Toronto', '3333333', 2, '416 898 8989', '', '', 1, '1973-03-11', 'do you want to play?', '600@ashleymadison.com'),
(575, 'Risky', 'Talie', 'Shooter', '74 dandy dr', 'Toronto', 'M1L 2K3', 2, '416 545 5454', '', '', 1, '1968-04-26', 'lets take a risk', 'jen@ashleyadison.com'),
(576, 'michie', 'Michelle', 'Rosen', '85 kig st', 'Missisagua', '55555', 2, '905 636 3636', '', '', 1, '1959-06-21', 'lets connect', 'jen@ashleymadison.com'),
(577, 'angel2', 'Julie', 'Freed', '62 walk way dr', 'Toronto', '555555', 2, '416 212 2121', '', '', 1, '1952-10-07', 'looking to meet', 'jen@ashleymadison.com'),
(578, 'ginger', 'Gina', 'Androco', '20 coral harbour', 'Hamilton', '2222222', 2, '519 878 8525', '', '', 1, '1965-01-22', 'I''ll show you a good time', '600@ashleymadison.com'),
(579, 'torman', 'George', 'Torman', '1 Sparks Ave. North York', 'Toronto', '', 2, '416 773 5819', '', '', 2, '1956-09-20', 'I am looking for something I miss in my life', 'gkqa@yahoo.ca'),
(580, 'bigbird', 'David', 'Fowler', '51 Highbrook st', 'Kitchener', 'n2e3n9', 2, '519 742 6959', '', '519 829 5303', 2, '1971-09-02', 'I am just looking for a good time , can you give it to me!!!!!?', 'newfdavid@netscape.net'),
(582, 'sagaboy25', 'Kljbdfik', 'Ikbjhfvib', 'lkjbvdi', 'Ijhbfv', '', 2, '7648857', '', '', 2, '1971-09-09', 'hmmmmmmmmmmmmmm', 'sagaboy@yahoo.com'),
(583, 'BBDanero', 'Robert', 'Perusco', '705 King Street West', 'Toronto', '', 2, '416 216-6722', '416 628-5700', '416-409-2208', 2, '1967-06-23', 'Looking for love in all the wrong places', 'rperus0511@rogers.com'),
(584, 'mc99', 'Mchael', 'Connor', '90 henderson ave unit 3', 'Richmond Hill', 'L4E 4l1', 2, '416-358-9943', '416-480-6100', '', 2, '1967-07-06', 'It''s ALL about Fun...and then some!!!;)', 'mkc99phd@hotmail.com'),
(585, 'JPMX', 'Brien', 'Buell', '723 Lakeshore Rd.', 'Toronto', '', 2, '416-9443422', '', '', 2, '1964-04-04', 'Looking to explore the joy of sex', 'jbmm@rocketmail.com'),
(586, 'Gregg_8', 'Greg', 'Warden', '654 Queen Street West', 'Toronto', '', 2, '416-777-5693', '', '', 2, '1964-05-07', 'A tall drink of water for a lovely woman', 'gregg_8@hotmail.com'),
(587, 'married44', 'John', 'M', '123', 'Scarborough', '', 2, '4165551212', '', '', 2, '1969-08-01', 'looking to meet today all alone in the office', 'married44@hotmail.com'),
(588, 'annie', 'C61', 'C61', '450', 'Ottawa', '', 2, '6132548930', '', '', 1, '1956-05-06', 'lets get our groove on', '200@ashleymadison.com'),
(589, 'brooke', 'C62', 'C62', '154', 'Ottawa', '', 2, '6132652213', '', '', 1, '1960-07-08', 'live life', '200@ashleymadison.com'),
(590, 'blake', 'C63', 'C63', '562', 'Kanata', '', 2, '9056872135', '', '', 1, '1968-03-06', 'join me for a joy ride', '200@ashleymadison.com'),
(591, 'happy', 'Lindsi', 'Smith', '987 bayview rd', 'Toronto', 'M2L 4L4', 2, '416 555 8989', '', '', 1, '1965-06-12', 'I''m looking to fill the void', '600@ashleymadison.com'),
(592, 'hollie', 'C64', 'C64', '111', 'Kingston', '', 2, '9052312235', '', '', 1, '1970-04-02', 'lets take advantage of what life is offering', '200@ashleymadison.com'),
(593, 'duel', 'C65', 'C65', '444', 'Calgary', '00000', 2, '2041568973', '', '', 1, '1958-09-04', 'who''s man enough for me?', '200@ashleymadison.com'),
(594, 'pam', 'C66', 'C66', '665', 'Edmonton', 'm254689', 2, '2045783694', '', '', 1, '1968-02-03', 'meet your match', '200@ashleymadison.com'),
(595, 'burlbill', 'Bill', 'Young', '620 prince william', 'Burl', '', 2, '905 333 1042', '', '', 2, '1966-01-25', 'Hi Ladies, 35m looking for a friend', 'burlrob@yahoo.com'),
(596, 'fibby', 'C67', 'C67', '555', 'Vancouver', '', 2, '6048792314', '', '', 1, '1960-10-05', 'confidence is important', '200@ashleymadison.com'),
(597, '1', '1', '1', '1', '1', '1', 2, '', '', '', 2, '1903-02-02', '1', 'bobbyboy25@hotmail.com'),
(598, 'nick-598', '', '', '', '', '', 2, '', '', '', 0, '0000-00-00', '', 'bobbyboy25@hotmail.com'),
(599, 'looking4554', 'Robert', 'Anderson', '1358 Bayshire', 'Oakville', '', 2, '905-337-0191', '', '', 2, '1957-05-05', 'Married man looking for some spice.', 'bobbyboy25@hotmail.com'),
(600, 'simpledesire', 'Helen', 'Hatzis', '18 victoria rd', 'Toronto', '', 2, '416 716 1616', '', '', 1, '1963-08-26', '"wanna talk"', 'jen@ashleymadison.com'),
(601, 'fen', 'C69', 'C69', '358', 'Toronto', '', 2, '4169823547', '', '', 1, '1964-08-03', 'lets go for it', '200@ashleymadison.com'),
(602, 'dreamgirl', 'Laura', 'Manell', '55 ravencliff rd', 'Toronto', '222222', 2, '416 686 3232', '', '', 1, '1971-03-15', 'I can make your dreams come true', '600@ashleymadison.com'),
(603, 'liv', 'C70', 'C70', '7996', 'Toronto', '', 2, '4169872354', '', '', 1, '1970-11-05', 'bring it on guys', '200@ashleymadison.com'),
(604, 'morning star', 'Karlene', 'Cobet', '21 hillcrest drive', 'Ottawa', 'M2K 3K3', 2, '512 666 3333', '', '', 1, '1970-08-17', 'fun-friend-lover', 'jen@ashleymadison.com'),
(605, 'passions', 'Terra', 'Blake', '37 main st', 'Kingston', '', 2, '518 222 222', '', '', 1, '1970-05-21', '"mmmmmmmmmmm"', 'jen@ashleymadison.com'),
(606, 'Hez', 'Hez', 'S', '123 Dunn Ave.', 'Toronto', 'M1R3G8', 2, '4161234567', '', '', 2, '1976-06-06', 'burtsbeez at hotm ail dot com', 'buertsbeez@hotmail.com'),
(607, 'blueey8', 'Greg', 'Murray', 'Suit 331', 'Owen Sound', 'N4K 4L2', 2, '519-538-4196', '', '', 2, '1953-12-11', 'Sensuous and independent. . . great sense of humour and class!', 'murray@multimedia.win.net'),
(608, 'mystical', 'B56', 'B56', '67 hill drive', 'Ottawa', 'v4r 5t1', 2, '613-584-9987', '', '', 1, '1976-09-24', 'let me cast a spell on you', '400@ashleymadison.com'),
(609, 'Cotton Candy', 'B57', 'B57', '34 red road', 'Burnaby', '123456', 2, '250-695-7474', '', '', 1, '1972-06-01', 'one taste and your hooked', '400@ashleymadison.com'),
(610, 'trinity', 'B58', 'B58', '458 niagara street', 'Kingston', '', 2, '905-670-8888', '', '', 1, '1968-12-18', 'the adventure begins or does it???', '400@ashleymadison.com'),
(611, 'Luscious', 'B59', 'B59', '44 hurontario street', 'Vancouver', '', 2, '604-645-9723', '', '', 1, '1965-05-17', 'wanna give it a try??', '400@ashleymadison.com'),
(612, 'snow angel', 'B60', 'B60', '3457 lakeshore blvd.', 'Toronto', '', 2, '416-255-9786', '', '', 1, '1974-07-20', 'lookin for a little TLC', '400@ashleymadison.com'),
(613, 'Orchid', 'B61', 'B61', '6754 Finch avenue', 'Toronto', 'm5b2p1', 2, '416-555-1234', '', '', 1, '1970-02-01', 'lets make a night to remember', '400@ashleymadison.com'),
(614, 'heaven on earth', 'B62', 'B62', '654 bertold lane', 'Kanata', '', 2, '905-675-9982', '', '', 1, '1972-10-18', 'you want it - i got it', '400@ashleymadison.com'),
(615, 'pook', 'Ken', 'Price', '496 donegal dr.', 'Burlington', '', 2, '905-637-7965', '905-336-3247', '', 2, '1964-07-17', 'live life to the fullest and enjoy!', 'kenprice_@msn.com');
INSERT INTO `tpeople` (`PEOPLE_ID`, `NICKNAME`, `FIRST_NAME`, `LAST_NAME`, `STREET`, `CITY`, `ZIP`, `COUNTRY`, `PHONE`, `WORK_PHONE`, `MOBILE_PHONE`, `GENDER`, `BIRTHDAY`, `PROFILE_CAPTION`, `EMAIL`) VALUES
(616, 'twanny', 'C68', 'C68', '562', 'Burnaby', '', 2, '6045892314', '', '', 1, '1970-09-04', 'go with the flow', '200@ashleymadison.com'),
(617, 'youvegotmale', 'B63', 'B63', '65 lake drive', 'Ottawa', 'v5t 6h7', 2, '613-778-5435', '', '', 1, '1966-01-28', 'I''ve got female', '400@ashleymadison.com'),
(618, 'springcherry', 'B64', 'B64', '564 waterdown avenue', 'Edmonton', '', 2, '403-996-3636', '', '', 1, '1967-04-18', 'have you got what it takes', '400@ashleymadison.com'),
(619, 'imdevine', 'B65', 'B65', '5848 bluecarp crescent', 'Red Deer', '', 2, '780-445-3645', '', '', 1, '1976-02-06', 'tempt me', '400@ashleymadison.com'),
(620, 'swede4u', 'A41', 'A41', '5 appletown lane', 'Toronto', '0000000', 2, '414-776-8854', '', '', 1, '1968-04-02', 'under the covers u will find me...', '100@ashleymadison.com'),
(621, 'slippery&wet', 'A42', 'A42', '667 redpath dr.', 'Toronto', '0000000', 2, '416-889-6655', '', '', 1, '1980-10-28', 'looking for a good lookin, healthy,clean and full of stamina MAN', '100@ashleymadison.com'),
(622, 'humptydumpty', 'A43', 'A43', '66 oak st.', 'Ottawa', '', 2, '512-880-2233', '', '', 1, '1974-05-18', 'as she bent over old rover drove her...', '100@ashleymadison.com'),
(623, '20233', 'A44', 'A44', '345 gerard blv', 'Ottawa', 'm6t-s3w', 2, '512-667-4355', '', '', 1, '1953-01-20', 'it''s almost impossible to find the "rite man", are u out there??', '100@ashleymadison.com'),
(624, 'tender tits', 'A45', 'A45', '7 richmond st.', 'Edmonton', '', 2, '403-990-1212', '', '', 1, '1979-03-28', 'i pick door number 2........', '100@ahsleymadison.com'),
(625, 'ladyluck', 'A46', 'A46', '6 backstreet cr', 'Edmonton', '', 2, '403-666-5567', '', '', 1, '1974-07-23', 'reveal to me your sexuall ultimate and passionate desires...', '100@ashleymadison.com'),
(626, 'alphaville', 'Kevin', 'Galazka', '2818 bayview', 'Toronto', '', 2, '416-526-8733', '905-762-0960', '416-526-8733', 2, '1967-06-04', 'I am capture your imagination', 'kevin@yorktrader.com'),
(627, 'BCbabe', 'Leslie', 'Rich', '83 hall rd', 'Vancouver', 'L3T 5X2', 2, '416 5558585', '', '', 1, '1966-04-30', 'Lets party', '700@ashleymadison.com'),
(628, 'Lindash', 'Linda', 'Burrell', '3824 main st', 'Maple', '', 2, '905-892-9087', '416-239-7555', '905-450-9855', 1, '1955-05-14', 'Right Here - Right Now!', 'lindash@yahoo.ca'),
(629, 'spicegirl', 'Margo', 'Pasley', '201 willowbrook rd', 'Edmonton', 'L3T 2N2', 2, '416 454 4545', '', '', 1, '1960-02-11', 'do you need a little spice in your life?', '400@ashleymadison.com'),
(630, 'linda69', 'Linda', 'Burrell', '3824 Main St', 'Maple', 'L4M 7T5', 2, '905 889-9756', '416-239-7555', '905-450-9855', 1, '1955-05-14', 'Right here-Right Now!', 'lindash69@yahoo.ca'),
(631, 'Mr. sully', 'Hallie', 'Kaft', '125 hlland street', 'Vancouver', 'v6v 1r4', 2, '604 222 3333', '', '', 2, '1962-07-14', 'can you make me laugh?', 'jen@ashleymadison.com'),
(632, 'sparky', 'Farrah', 'Litman', '41 charles st', 'Orangeville', '', 2, '632 233 2525', '', '', 1, '1964-05-21', '"melt in your mouth"', 'jen@ashleymadison.com'),
(633, 'Darkness Falling', 'Stuart', 'Oakley', '25 Holton Ave North', 'Hamilton', 'L8L 6H3', 2, '905 547-1378', '905 873-0111 514', '', 2, '1962-02-28', 'There is no better time than now', 'darknessfalli39@hotmail.com'),
(634, 'littledevil', 'Nancy', 'Skank', '151 hore st', 'Toronto', '5555555', 2, '146 555 5555', '', '', 1, '1964-08-08', 'Do you feel like being bad?', 'jen@ashleymadison.com'),
(635, 'deckard', 'Xaid', 'Wawoo', '20 Bay st', 'Toronto', 'M5H 4C7', 2, '905 222 3333', '', '416 111 2222', 2, '1968-03-19', '.. what a girl needs.', 'zahidm@myrealbox.com'),
(636, 'Zsuzsika', 'Suzanne', 'Clark', '623 Davenport  Rd.', 'Toronto', '', 2, '416 920-0224', '', '416 522-4228', 1, '1953-06-29', 'Looking for romance in great places!', 'sclark64@hotmail.com'),
(638, 'Ricky 26.2', 'Roderick', 'Schuller', '2035 South Millway', 'Mississauga', 'L5K1V9', 2, '9058287404', '905 3346498', '905 3346498', 2, '1961-10-31', 'Jus-friends...', 'runningsport@hotmail.com'),
(639, 'studdly', 'Robert', 'Thompson', '2802 Stephen Dr.', 'Brechin', '', 2, '705 426 7497', '', '', 2, '1938-03-29', 'A handsome prince, maybe...A Horny Toad, for sure.', 'rgt@csolve.net'),
(640, 'Mikey', 'Michael', 'Walker', '3030 Dundas St West', 'Toronto', 'M6E 3W5', 2, '416-762-7260', '', '416-617-8511', 2, '1955-12-18', 'Well endowed guy seeks attached lady', 'mwogo@hotmail.com'),
(641, 'Badboy', 'Paul', 'Wain', '54 Simcoe Street', 'Toronto', '', 2, '416 777 1845', '', '', 2, '1967-05-05', 'I''m looking for fun', 'paulwain67@hotmail.com'),
(642, 'cowgirl', 'Heather', 'Simons', 'P.O. Box 358', 'Ottawa', '', 2, '613-544-1111', '', '', 1, '1971-11-02', 'cowgirl interested in riding...', 'cowgirl5647@hotmail.com'),
(643, 'Masseur', 'Naz', 'Lani', '483 Bay Street', 'Toronto', 'M4W 1J7', 2, '416 353 8321', '416 353 8321', '', 2, '1966-06-07', 'Get an erotic massage today!', 'nazlal@hotmail.com'),
(644, '41nightonly', 'Dave', 'Lemee', '4267 kipling', 'Toronto', 'M9N1N2', 2, '', '', '', 2, '1965-09-05', 'all your dreams fullfilled 4 1 night only', 'jackyfrost_2000@yahoo.com'),
(645, 'aa84aa', 'J', 'C', '1 Burnhamthorpe Road', 'Etobicoke', '', 2, '416-937-9939', '', '', 2, '1972-12-10', 'Looking for intimacy? Inter-Racial Fantasy?', 'aa84@hotmail.com'),
(646, 'David', 'Paulo', 'Donato', '638 College St.', 'Toronto', 'M6G 1B4', 2, '416 831 3243', '', '', 2, '1962-07-16', 'romantic, intimate, fun loving', 'psilub@hotmail.com'),
(647, 'Glenno', 'Glenn', 'Dodd', '15 Churchill Drive south', 'Stouffville', '', 2, '(905)640-0487', '', '(416)526-3354', 2, '1958-04-19', 'Love to Orally Please a Woman', 'glenno2@hotmail.com'),
(648, 'dazlin', 'Dazlin', 'Don', 'ya right', 'Toronto', 'm9c3c6', 2, '4164164166', '', '', 2, '1961-06-08', 'always ready', 'dazlin@hotmail.com'),
(649, 'BiggerBoomer', 'Mark', 'Matthews', '40 Scollard', 'Toronto', '', 2, '(416)980-1827', '', '(416)401-1311', 2, '1968-09-20', 'Ultimate Male For Ultimate Female', 'biggerboomer@hotmail.com'),
(650, 'willdrafter', 'Sheldon', 'Steinberg', '623 Davenport Road', 'Toronto', 'M5R 1L2', 2, '(416) 920-4624', '', '', 2, '1951-12-19', 'Toronto lawyer seeks discrete meeting', 'willdrafter@yahoo.com'),
(651, 'Gman', 'Jeff', 'Jackson', '35 Allenhead Cres.', 'Brampton', '', 2, '9058404002', '9056603511', '4163153682', 2, '1969-10-12', 'Fun, laughter, great times allways!', 'dagman75@hotmail.com'),
(652, 'glupu', 'Gregory', 'Lupu', '39 Roe Hampton, apt 103', 'Toronto', '', 2, '416 4878181', '416 4878181', '', 2, '1965-12-01', 'Hi', 'glupu@hotmail.com'),
(653, 'sexy dude', 'Sam', 'Dhamsun', '599 brock avenue', 'new york', '11423', 2, '416-5887824', '416-5339684', '416-7258604', 2, '1971-11-29', 'a horny beast', 'dhalsun@hotmail.com'),
(654, 'African', 'Abdoul', 'Toure', '33 Hahn Pl.', 'Toronto', '', 2, '4162164542', '4164462437', '', 2, '1971-08-17', 'Hi There! I am a separated man and want to meet nice ladies occa', 'abdoulaye_t@hotmail.com'),
(655, 'DownTownGirl', 'Down', 'Smith', '123 1st Ave', 'Toronto', 'm5b2p1', 2, '5555555555', '', '', 1, '1970-04-05', 'Having computer problems, please bare with me.', 'tanya_dercach@courtesysupportteam.net'),
(656, 'Matrix88', 'Derwin', 'Wong', '3431 Grand Park Drive', 'Mississauga', 'L5B 4E3', 2, '416-817-8292', '416-368-0600', '', 2, '1963-07-21', 'Let''s Do Something Daring...', 'matrix88ca@yahoo.ca'),
(657, 'leww', 'Lewis', 'Williams', 'RR#3', 'Port Hope', '', 2, '905-3992324', '', '', 2, '1952-02-17', 'TLC', 'leww@hotmail.com'),
(658, 'hulk', 'Marc', 'Ballard', '71 macintosh', 'Toronto', '', 2, '416-654-7580', '', '', 2, '1965-03-09', 'HI there, single available guy..looking for dynamic ladies.', 'hulk19@netzero.net'),
(659, 'Blond_Bomber69', 'Kurt', 'Hemmer', '313 O''Neil Dr.', 'Sudbury', 'P3l 1J3', 2, '705-693-4807', '', '', 2, '1963-11-03', 'Hi, Just looking for a mischievous female', 'flyeagle007@hotmail.com'),
(660, 'Sunday', 'Mark', 'Kellan', '26 Devonshire Place', 'Toronto', '', 2, '416 893 3257', '', '416 893 3257', 2, '1975-04-02', 'Pampering, massage; I want to spoil you', 'matthew.sullivan@utoronto.ca'),
(661, 'lovelegs', 'Tom', 'Becker', '181jackson st', 'Hamilton', 'l8k5r3', 2, '522 6659', '', '', 2, '1950-01-09', 'a real teddy bear', 'tomass169@hotmail.com'),
(662, 'Bill', 'Bill', 'Martin', '1018 Finch Avenue West', 'Toronto', '00000', 2, '416-661-0779', '', '', 2, '1952-02-10', 'Dyin to meetcha', 'persuade@idirect.com'),
(663, 'drag16v', 'Jorge', 'Agiuiar', '10 hansenb rd', 'Brampton', '', 2, '905-457-3421', '905-457-0939', '', 2, '1973-12-19', 'looking for fun?', 'drag16valve@hotmail.com'),
(664, 'Pierre', 'Jacques', 'Bruyere', '10926-169A Av', 'Chilliwack', 'v2r2r5', 2, '780-476-1271', '', '', 2, '1954-02-05', 'The time to capture life''s essence may be upon you right now', 'jbjr35@hotmail.com'),
(665, 'valeries_spirit', 'Valerie', 'Green', '619 Alliance Drive', 'Toronto', '', 2, '416 292 4480', '', '', 1, '1972-04-06', 'Looking for great times!', 'snow_princess38@hotmail.com'),
(666, 'YOUR_LANCELOT', 'Frank', 'Smith', '2105-45 Wynford Hts Cr', 'Toronto', 'M3C1L3', 2, '(416)418-6238', '', '', 2, '1973-03-03', 'Wouldn''t you like to know?', 'flyboy333@hotmail.com'),
(667, 'luxinterior', 'Tommy', 'S', '120-9 bergamot ave', 'Toronto', 'M9w1w2', 2, '4165806321', '', '', 2, '1975-03-19', 'Hello to all the beautiful women', 'bouncingsoul69@hotmail.com'),
(668, 'enjoylife', 'Andrew', 'Schachter', '254 Ranleigh Ave.', 'Toronto', 'm5m1j3', 2, '416-399-9038', '416-399-9038', '416-399-9038', 2, '1969-04-19', 'It''s all about adventure.', 'thinkitup@mac.com'),
(669, 'sabu', 'Jermaine', 'Swanston', '23 pixley crescent', 'Toronto', 'm1e 3g5', 2, '284-9101', '416 984-5664', '999-9101', 2, '1973-07-04', 'no strings discreet 1 on 1 meetings', 'jswanston@rogers.com'),
(670, 'lucky7', 'Mark', 'Simon', '1118 Finch Avenue, Unit 20a', 'Toronto', 'L1V 6P2', 2, '905.420.9720', '905.420.9720', '905.420.9720', 2, '1967-01-15', 'can make me C**', 'm_stance@hotmail.com'),
(671, 'deskman', 'David', 'Manning', '105 haist ave', 'Toronto', '', 2, '416-805-2354', '', '', 2, '1945-07-17', 'let me please you', 'extreme1743@aol.com'),
(672, 'COOLCAT', 'Jeb', 'Singher', '83 WHITEHORN CRES', 'North York', '', 2, '4165029098', '', '', 2, '1964-06-23', 'How About A Walk On The Wildside?????', 'wickedlywildca@yahoo.com'),
(673, 'Millun', 'Nick', 'Coppola', '6050 des Grandes Prairies', 'Montreal', 'h1p1a2', 2, '5143289738', '5143289869', '5148657070', 2, '1962-03-25', 'Looking to create some sparks!', 'nick@acantechnical.com'),
(674, 'sweetjames', 'James', 'Smith', '1542 merrow road', 'Mississauga', 'L5J 3C5', 2, '416 931 7851', '', '', 2, '1963-08-22', 'Looking for a FWB', 'sweetjames63@hotmail.com'),
(675, 'ShooterMcGavin', 'Robert', 'Cronkite', '472 Algonquin Ave', 'Kitchener', 'N2M 4Z9', 2, '(905) 692-9045', 'N1E 7E8', '', 2, '1963-03-03', 'Greetings lovely ladies', 'cronkiter@hotmail.com'),
(676, 'tatts', 'Mark', 'Kollo27 Main St', '27 main st', 'Toronto', 'm1p4j3', 2, '416 736 8899', '', '', 2, '1968-01-01', 'wanted one fun woman', 'hotcouple30@hotmail.com'),
(677, 'Larry', 'Larry', 'Taylor', '1333 Bloor St.', 'Mississauga', '', 2, '905 2881564', '', '', 2, '1968-07-05', 'Romance', 'coctail69@yahoo.com'),
(678, 'Zoro', 'Dave', 'Mateo', '1215 Erin Mills Pkwy.', 'Mississauga', 'l5b 2c4', 2, '905-8961717', '905-2512222', '', 2, '1973-10-02', 'Fun, openminded, and always a good time!', 'dave215c@hotmail.com'),
(679, 'Classy but Sassy', 'Frank', 'Spadafora', '6404 Jupier Blvd.', 'Niagara Falls', 'L2J4E6', 2, '905 354-4952', '905 353-1010', '905 357-7182', 2, '1954-05-10', 'Are you ready for adventure?', 'frankspadafora@hotmail.com'),
(680, 'Waldo', 'Alfred', 'Wirth', '91 Teddington Pk. Ave.', 'Toronto', 'M4N 2L6', 2, '416-483-0963', '416-482-5337', '', 2, '1943-04-15', 'Active, Fun & Intelligent', 'awirth99@hotmail.com'),
(681, 'the_doc2', 'Alec', 'Brown', '16 seneca drive', 'Kitchener', '', 2, '416 579 3465', '416 073 9283', '', 2, '1951-04-23', 'who wants to date a doc', 'acbrown10@hotmail.com'),
(682, 'imdawrench', 'Doug', 'Hopf', '56 Elgin St.', 'Conestogo', '', 2, '5196642648', '', '', 2, '1952-05-23', 'Whats so special about wining the Nobel Peace Prize?', 'doughopf@gto.net'),
(683, 'kitkat', 'Geoff', 'Carter', '17 Pembroke St', 'Toronto', 'M5A 2N6', 2, '4166060600', '', '4166060600', 2, '1975-03-25', 'Looking for crazy fun', 'geoffcarter@hotmail.com'),
(685, 'Naughty1', 'Ray', 'Malatesta', '1803 Shadybrook Dr', 'Mississauga', 'L5N2Y4', 2, '416-737-6268', '', '416-737-6268', 2, '1966-01-25', 'Two strong & fit men to play with all night! :)', 'ramco@allstream.net'),
(686, 'ELVIS1', 'Jack', 'Eaton', '8 SUNDOWN CT', 'Thornhill', 'L4J3V4', 2, '416-402-3447', '416-592-7311', '416-402-3447', 2, '1957-11-21', 'BLUE EYES BROWN HAIR AND LOTS OF FUN', 'jackr_1@canada.com'),
(687, 'aliceone', 'Alice', 'Johnson', '333 yonge st', 'Rishmond Hill', '', 2, '905-478-0098', '', '', 1, '1957-08-02', 'meet me?', 'apf72@sympatico.ca'),
(688, 'married4444', 'J', 'J', '123', 'Scarborough', '', 2, '4165551212', '', '', 2, '1969-08-01', 'scarborough guy seeks discrete fun today', 'married_johnny@hotmail.com'),
(689, 'Jarlson', 'Britt', 'Mckeen', '212 Cherrywood Drive', 'Newmarket', '', 2, '905-954-1471', '', '', 2, '1972-03-19', 'Fun and irreverent', 'shai_fhen_lei@hotmail.com'),
(690, 'billburl', 'Steve', 'Young', '633 headon road', 'Burlington', '', 2, '905-333-1652', '', '', 2, '1965-01-06', 'Married and want some fun', 'burlrob@hotmail.com'),
(691, 'laurie', 'C71', 'C71', '4242', 'Ottawa', '', 2, '6136589741', '', '', 1, '1961-03-08', 'take the chance', '200@ashleymadison.com'),
(692, 'Blade', 'Nick', 'Chalaturnyk', '1250 Tredmore Drive', 'Mississauga', '', 2, '905 822 5957', '905 465 4020', '905 510 8014', 2, '1962-10-28', 'Looking to meet interesting women', 'n_chalaturnyk@hotmail.com'),
(693, 'becky', 'Sharon', 'John', '7532', 'Ottawa', '00000', 2, '6132569312', '', '', 1, '1967-07-06', 'Lets put all the spices together. I''m Pepper. lol', '200@ashleymadison.com'),
(694, 'ria', 'C73', 'C73', '911', 'Kanata', '', 2, '9058475321', '', '', 1, '1956-05-06', 'you can have it all', '200@ashleymadison.com'),
(695, 'lucy', 'C74', 'C74', '632', 'Kingston', 'm54823', 2, '9058745129', '', '', 1, '1970-06-03', 'be that one', '200@ashleymadison.com'),
(696, 'lily', 'C75', 'C75', '585', 'Edmonton', '', 2, '2045138520', '', '', 1, '1963-06-02', 'lets keep it real', '200@ashleymadison.com'),
(697, 'reva', 'C76', 'C76', '523', 'Edmonton', '', 2, '2045612384', '', '', 1, '1971-12-06', 'satisfaction is everything', '200@ashleymadison.com'),
(698, 'prune', 'C77', 'C77', '1212', 'Vancouver', '', 2, '6042315469', '', '', 1, '1968-02-06', 'lets go guys', '200@ashleymadison.com'),
(699, 'val', 'C78', 'C78', '777', 'Burnaby', '', 2, '6045897123', '', '', 1, '1970-06-06', 'hotter than hot', '200@ashleymadison.com'),
(700, 'chakia', 'C79', 'C79', '1289', 'Toronto', 'm365654', 2, '4168793254', '', '', 1, '1969-12-06', 'i''m right here', '200@ashleymadison.com'),
(701, 'rona', 'C80', 'C80', '962', 'Toronto', '', 2, '4167892315', '', '', 1, '1965-06-14', 'at your service', '200@ashleymadison.com'),
(702, 'tigerlilly', 'B66', 'B66', '124 plum street', 'Toronto', '', 2, '416-993-6754', '', '', 1, '1977-08-28', 'ready and waiting', '400@ashleymadison.com'),
(703, 'free spirit', 'B67', 'B67', '7465 appletree lane', 'Ottawa', 'm7h 5b2', 2, '613-456-9697', '', '', 1, '1963-03-31', 'the best of both worlds - tamed and wild', '400@ashleymadison.com'),
(704, 'mistress', 'B68', 'B68', '345 grape street', 'Burnaby', '123455', 2, '604-995-6522', '', '', 1, '1975-01-16', 'can i be yours??', '400@ashleymadison.com'),
(705, 'bubbles', 'B69', 'B69', '345 lemon lane', 'Kanata', 'd4r 6h9', 2, '905-444-7312', '', '', 1, '1971-12-06', 'curious...', '400@ashleymadison.com'),
(706, 'honeybee', 'B70', 'B70', '45 singular avenue', 'Leduc', '00000', 2, '403-767-8181', '', '', 1, '1961-08-26', 'ready, willing, and able', '400@ashleymadison.com'),
(707, 'Qtpie', 'B71', 'B71', '1290 humber road', 'Ottawa', 'b6h 8j3', 2, '613-584-9654', '', '', 1, '1973-02-05', 'santa was right...I am naughty', '400@ashleymadison.com'),
(708, 'waterfalls', 'B72', 'B72', '43 realride avenue', 'Kingston', 'n7y 3r7', 2, '905-687-1112', '', '', 1, '1971-10-19', 'can you make me....', '400@ashleymadison.com'),
(709, 'Sammie', 'B73', 'B73', '6473 bluestar crescent', 'Toronto', '', 2, '416-995-9345', '', '', 1, '1965-07-27', 'who''s out there??', '400@ashleymadison.com'),
(710, 'koala bear', 'B74', 'B74', '967 lungly avenue', 'Vancouver', 'v5g 7j2', 2, '604-558-3833', '', '', 1, '1973-06-16', 'sure...why not', '400@ashleymadison.com'),
(711, 'sage', 'B75', 'B75', '268 finley drive', 'Edmonton', '', 2, '403-596-1211', '', '', 1, '1969-09-02', 'i know its possible to be happier than this - any ideas???', '400@ashleymadison.com'),
(712, 'Humor', 'Mike', 'Hoffman', '18 coldstream', 'Toronto', '00000', 2, '416/789-1201', '416/361-1321', '', 2, '1956-06-02', 'Handsome..sophisticated...creative', 'ghawk45@hotmail.com'),
(713, 'marriedone', 'Dave', 'W', '111', 'Markham', '', 2, '4165551212', '', '', 2, '1969-07-04', 'lets meet right now for fun', 'marriedseekin@hotmail.com'),
(714, 'mousehead', 'Dany', 'Shammas', '68 Bellagio Cr.', 'Concord', 'L4K5K7', 2, '416 451 6500', '', '', 2, '1974-08-26', 'Infinit stamina', 'thedan99@hotmail.com'),
(715, 'j420', 'Thor', 'Du Maurie', '95 bernick', 'Barrie', '', 2, '(705)424-6892', '', '717-0903', 2, '1974-05-12', 'Whatz uppp', 'salenab_77@hotmail.com'),
(716, 'Roger', 'Scott', 'Macpherson', '2005 Sheppard Ave. E.', 'central', 'K0B 1A0', 2, '416-738-3080', '416-567-1253', '', 2, '1980-07-29', 'Join me in a Romantic Adventure!!', 'GREATESTAPE@EXCITE.COM'),
(717, 'TJW', 'Tom', 'Williams', '2760 Yonge St', 'Toronto', '', 2, '(416 676 2211', '', '', 2, '1969-02-19', 'Tall Attractive Business Professional Looking For Fun', 'loverboy241@hotmail.com'),
(718, 'gr82begr8', 'A47', 'A47', '2345 level blvd', 'Kanata', '00000000', 2, '905-558-9989', '', '', 1, '1964-09-15', 'need an intelligent,hot god..to start me with this adventour?', '100@ashleymadison.com'),
(719, '20328', 'A48', 'A48', '2 applewood cr.', 'Kingston', 'm2p 1r7', 2, '905-332-7788', '', '', 1, '1973-11-08', 'it''s not everytime u run into a women like me........', '100@ashleymadison.com'),
(720, 'xavier', 'Jason', 'Hamiton', 'bayview avenue', 'Richmond Hill', 'L4C 3N9', 2, '9055087139', '4165584053', 'no', 2, '1975-10-18', 'here we go You may never know!!!', 'suttle_smooth@yahoo.ca'),
(721, 'youngandwild', 'A49', 'A49', '9 corner st.', 'Burnaby', '', 2, '604-555-3924', '', '', 1, '1978-06-06', 'treat me like your slave...punish me sir,punish me....', '100@ashleymadison.com'),
(722, 'married_guy20', 'Jr', 'J', '123', 'Scarborough', '', 2, '4165551212', '', '', 2, '1969-08-02', 'looking for some hot discrete fun', 'married_guy20@hotmail.com'),
(723, 'gr8fun', 'A20', 'A20', '11 eastbrook st', 'Vancouver', '00000', 2, '604-776-9902', '', '', 1, '1956-07-26', 'lot of hot lovin...wild and free..call me..ok', '100@ashleymadison.com'),
(724, 'blossom319', 'Debbie', 'Corbiere', 'M''chigeeng', 'Manitoulin Island', '', 2, '705-377-7016', '', '626 0915', 1, '1970-06-25', '31 female married looking for a handsome male to spend time with', 'dcorbiere@hotmail.com'),
(725, 'knock,knock..', 'A51', 'A51', '7 richmond st.', 'Ottawa', '', 2, '603-221-6666', '', '', 1, '1963-08-28', 'cum to my emotional rescue.........', '100@ashleymadison.com'),
(726, 'creative4u', 'A52', 'A52', '555 clubber valley', 'Ottawa', '', 2, '603-666-8687', '', '', 1, '1969-02-04', 'my imagination runs wild and free,help me make them cum true..:)', '100@ashleymadison.com'),
(727, 'squeezin', 'A53', 'A53', '880 riverboat cres', 'Kanata', '', 2, '905-222-6111', '', '', 1, '1971-05-30', 'all alone out here...(most of the time)..quick give me a call.', '100@ashleymadison.com'),
(728, 'dewy', 'A54', 'A54', '2 rockwell ave.', 'Kingston', '0000000', 2, '905-332-7111', '', '', 1, '1978-04-24', 'is that u i see...peeking through my bedroom door?', '100@ashleymadison.com'),
(729, 'tonguencheek', 'A55', 'A55', '9 rosewood ave.', 'Edmonto', '', 2, '403666-7800', '', '', 1, '1965-09-20', 'as i slide the bar of soap over my breasts,rubbing slowly as my', '100@ashleymadison.com'),
(730, 'rubbinme2night', 'A56', 'A56', '205 clearwater ave.', 'Edmonton', '000000', 2, '403-669-3222', '', '', 1, '1970-06-03', 'let''s try to make this last....', '100@ashleymadison.com'),
(731, '2fingers4me', 'A57', 'A57', '66 rolling hills', 'Vancouver', '', 2, '604-550-1230', '', '', 1, '1967-05-24', 'it''s all in the way u touch me.........', '100@ashleymadison.com'),
(732, 'marriedguy21', 'Jr', 'G', '123', 'Scarborough', '', 2, '4165551212', '', '', 2, '1969-08-01', 'married with private day time office', 'married_guy20@hotmail.com'),
(733, 'maritimer76', 'Jason', 'Smith', 'RR#1 Stewiacke', 'Stewiacke', 'B0N2J0', 2, '6399095', '', '', 2, '1970-08-01', 'Save a Tree, Eat a Beaver!', 'maritimer76@hotmail.com'),
(734, 'notbigenough', 'A58', 'A58', '18 mission ave.', 'Burnaby', '', 2, '603-778-5543', '', '', 1, '1974-05-06', 'all this, and all for u...', '100@ashleymadison.com'),
(735, 'itsgr82beme', 'A59', 'A59', '6 eden crt', 'Toronto', '00000000', 2, '416-443-1100', '', '', 1, '1976-04-23', '"an addition to my collection..an underwater fantasy!cum and see', '100@ashleymadison.com'),
(736, 'tempting4u', 'A60', 'A60', '333 eaglecross rd.', 'Toronto', '6666666', 2, '416-554-9215', '', '', 1, '1971-02-23', 'have a love nest,lets sneak out...', '100@ashleymadison.com'),
(737, 'Downtown_Guy', 'Paul', 'De Zara', '29 Delaware Ave', 'Toronto', '', 2, '416-458-9660', '', '416-458-9660', 2, '1968-06-21', 'Erotic Orally gifted and Discreet', 'dzpaul@yahoo.com'),
(738, 'magical111', 'Frank', 'Brodie', '3201 Sir John''s Homestead', 'Halifax', 'B3J1P2', 2, '416-938-8865', '', '', 2, '1959-10-10', 'Interested in a decent guy? I Will be in Halifax in December.', 'a_brooker99@hotmail.com'),
(739, 'sxylatino4u', 'Charlie', 'Garcia', '3236 w. 108th pl', 'Chicago', '', 2, '773-988-8352', '', '', 2, '1966-07-15', 'ready to release my passion you think you can handle me', 'blueman9084@msn.com'),
(740, 'golf11', 'Bill', 'Scarborough', '1308 cerro verde', 'San Jose', '95120', 2, '408 927 9925', '', '408 921- 9690', 2, '1950-12-28', 'Cute and funny and love women!', 'bills95120@aol.com'),
(741, '20350', 'John', 'Kellogg', '198 Grosvenor Ave', 'Hamilton', 'L9A 4R2', 2, '905 681-1355', '', '', 2, '1969-07-04', 'hi', 'hamilton_man33@hotmail.com'),
(742, 'goodguyxoxo', 'Dave', 'Holmes', '45 Scottsdale Drive', 'St Catharine', 'L2V5G6', 2, '(519) 820-6323', '', '(905) 761-4414', 2, '1966-01-02', 'Looking for sexy woman who wants to be spoiled', 'goodguyxoxo39@hotmail.com'),
(743, 'grassman', 'Jawad', 'Rasheed', '59 Northview Blvd', 'Woodbridge', '', 2, '9052658281', '', '9052658281', 2, '1972-11-15', 'Willing to pamper...', 'grasshunter@excite.com'),
(744, 'scott75', 'Derek', 'Lahnalampi', '3388 frobex', 'Mississauga', 'L5C2B5', 2, '905 279 6539', '', '', 2, '1975-05-07', 'luv to please', 'd_lahnalampi@hotmail.com'),
(745, 'Sassie Lassie', 'Suzanne', 'Clark', '623 Davenport Road', 'Toronto', 'M5R 1L2', 2, '416 920-0224', '', '416 522-4228', 1, '1953-06-29', 'Seeks discrete meeting', 'sclark64@hotmail.com'),
(746, 'Montreal Boy', 'Alex', 'Jatsura', '42 Suncrest Dr.', 'Brampton', '', 2, '905-452-0786', '905-502-6221', '905-609-3192', 2, '1964-10-15', 'A Romantic. Looking for someone to a share some excitement.', 'ajatsura@hotmail.com'),
(747, 'David2002', 'David', 'Austin', '235 Yorkland Blvd.', 'Toronto', '', 2, '416 498 1220', '416 498 1220', '', 2, '1967-09-09', 'Hi I like You!', 'broman20@hotmail.com'),
(748, 'barts', 'Bart', 'Simpson', 'belleville', 'Burlington', 'L7L 1C3', 2, '9629276', '', '', 2, '1969-12-18', 'Great guy, maybe yours', 'bartsone3@hotmail.com'),
(749, 'brent', 'Jon', 'Hendrick', 'rr#1', 'Noendsville', '', 2, '102-876-456-8101', '102-876-456-8102', '', 2, '1964-07-25', 'brent', 'jon@yahoo.com'),
(750, 'LA Confidential', 'A. Louis', 'Mauro', '40-1110 Finch Ave. West', 'Toronto', 'M3J 3M2', 2, '416-620-2103', '416-620-2103', '', 2, '1956-03-08', '"PHOTO AVAILABLE UPON REQUEST"', 'l.a.confidential@writeme.com'),
(751, 'montana', 'Tony', 'Sidhu', '5483 Forest Ridge Drive', 'Mississauga', '', 2, '416-376-1971', '', '', 2, '1981-10-21', 'At All Hours of the Day!', 'indianman4u69@hotmail.com'),
(752, 'Broncorider', 'Deepak', 'Khosla', '2000 Lawrence Avenue', 'Toronto', 'M6B 4AB', 2, '011 91 120 4521267', '011 91 120 452 5131', '011 91 98 110 54200', 2, '1959-08-13', 'Always dreamt of rocking on a live Rocking Horse? Well.....???', 'deepak.khosla@gmail.com'),
(753, 'Wolfster5', 'Rick', 'Pedskalny', 'Hwy 101 East', 'Timmins', 'p0n1c0', 2, '1111111111', '', '', 2, '1957-05-16', 'Are you looking for someone compasionate', 'rick617@hotmail.com'),
(754, '2Good2Btrue', 'Andy', 'De Man', '776 Dundas St. E.,', 'Mississauga', 'L4Y 2B6', 2, '416-678-0252', '905-277-0363', '', 2, '1959-01-08', 'call me a hot male, let''s just get it together.', 'ademan@spectranet.ca'),
(755, 'nastrodamus', 'M', 'V', '25 erie street', 'Stratford', '', 2, '5192711234', '', '', 2, '1971-12-14', 'Do you believe in fate?', 'alpha_male10@hotmail.com'),
(756, 'tandy', 'C81', 'C81', '1181', 'Ottawa', '', 2, '6132584982', '', '', 1, '1963-08-02', 'enjoy life while it last', '200@ashleymadison.com'),
(757, 'milly', 'C82', 'C82', '8523', 'Ottawa', '', 2, '6135897215', '', '', 1, '1958-09-07', 'i''m ready to have fun', '200@ashleymadison.com'),
(758, '20367', 'A61', '6', '9 creek crt.', 'Ottawa', 'm2p 1r7', 2, '514-778-5546', '', '', 1, '1978-07-22', 'what''s a guy like you doing in a place like this????', '100@ashleymadison.com'),
(759, '20368', 'A62', 'A62', '67 renforth ave.', 'Ottawa', 'm2p 1r7', 2, '513-88-9901', '', '', 1, '1967-08-04', 'like to get to know u better,let''s swap our deepest fantasy''s...', '100@ahsleymadison.com'),
(760, 'mouthfull', 'A63', 'A63', '123  orange court', 'Kanata', '0000000', 2, '90-510-5547', '', '', 1, '1961-04-29', 'interested in meeting,openminded,but very discreet...', '100@ashleymadison.com'),
(761, 'irresistable', 'A64', 'A64', '2044 ashton dr.', 'Kingston', '', 2, '905-852-8822', '', '', 1, '1973-07-21', 'take a look at the profile and tell me what u think??', '100@ashleymadison.com'),
(762, 'keah', 'C83', 'C83', '2525', 'Kanata', '', 2, '9058783256', '', '', 1, '1969-03-03', 'seeking fulfilment', '200@ashleymadison.com'),
(763, 'itsallup2u', 'A65', 'A65', '6 rocky crt', 'Edmonton', '', 2, '514-558-9989', '', '', 1, '1983-10-06', 'love to travel with a companion that can show me the world..', '100@ashleymadison.com'),
(764, 'ackee', 'C84', 'C84', '5369', 'Kingston', '', 2, '9058754126', '', '', 1, '1966-11-05', 'lets express our hidden talents', '200@ashleymadison.com'),
(765, 'shanny', 'C85', 'C85', '963', 'Edmonton', '', 2, '2045321487', '', '', 1, '1970-03-04', 'here''s the whole package', '200@ashleymadison.com'),
(766, 'sweetstockings', 'A66', 'A66', '3422 pine crt', 'St.  Albert', '00000', 2, '512-660-7788', '', '', 1, '1962-11-27', 'I''m an attatched women seeking a romantic affair....', '100@ashleymadison.com'),
(767, 'deedee', 'C86', 'C86', '666', 'Sherwood Park', '000000', 2, '2045782314', '', '', 1, '1967-09-06', 'hot,hot,hot', '200@ashleymadison.com'),
(768, 'tisha', 'C87', 'C87', '6363', 'Vancouver', '', 2, '6045823148', '', '', 1, '1959-03-07', 'feeling good mutually is the goal', '200@ashleymadison.com'),
(769, 'all4u', 'A67', 'A67', '8 river sideroad', 'Vancouver', '0000000', 2, '604-333-9990', '', '', 1, '1975-10-22', 'very demanding and persistant,my goal is to challenge my limits.', '100@ashleymadison.com'),
(770, 'nilla', 'C88', 'C88', '9898', 'Burnaby', '', 2, '6045258514', '', '', 1, '1956-09-03', 'can you be my dream man?', '200@ashleymadison.com'),
(771, '20380', 'A68', 'A68', '56 lionhead dr.', 'Burnaby', 'm2p 1r7', 2, '604-669-8899', '', '', 1, '1956-02-15', 'so many ideas, and so many places, where do i start???', '100@ashleymadison.com'),
(772, 'kat', 'C89', 'C89', '6258', 'Toronto', 'm789632', 2, '4163598214', '', '', 1, '1968-01-06', 'talk to me lets see how the steam rises', '200@ashleymadison.com'),
(773, 'toni', 'C90', 'C90', '9824', 'Toronto', 'm4l2y4', 2, '4166678932', '', '', 1, '1962-08-03', 'very creative and passionate', '200@ashleymadison.com'),
(774, 'hungry4', 'A69', 'A69', '12 donway', 'Toronto', '0000000', 2, '416-901-4432', '', '', 1, '1981-03-03', 'i bet you can''t keep your hands off!!!!', '100@ashleymadison.com'),
(775, 'gem', 'A70', 'A70', '2 elma st.', 'Toronto', '0000000', 2, '416-903-4447', '', '', 1, '1960-04-19', '"a diamond in the ruff"', '100@ashleymadison.com'),
(776, 'Jim3819', 'James', 'Thomson', '1566 Sixth Line', 'Oakville', '', 2, '905-334-4584', '905-334-4584', '905-334-4584', 2, '1971-06-28', 'Looking for discreet good times.', 'andy3819@yahoo.com'),
(777, 'Diamond', 'James', 'Edwards', '198 Manchester Ave', 'Toronto', 'm4a 1s6', 2, '416-345-2121', '', '', 2, '1961-06-01', 'Passionate and Romantic Affair', 'rjr_diamond@hotmail.com'),
(778, 'sweetness', 'B76', 'B76', '675 fake street', 'Toronto', 'njy 7b6', 2, '416-665-5543', '', '', 1, '1961-09-09', 'a time and a place...', '400@ashleymadison.com'),
(779, 'luvbug', 'B77', 'B77', '675 niagara street', 'Bradford', '', 2, '705-767-9999', '', '', 1, '1963-04-17', 'the one you''ll never forget', '400@ashleymadison.com'),
(780, 'b-u-n-n-y', 'B78', 'B78', '5748 york mills', 'Toronto', 'm2j 5b7', 2, '416-995-8685', '', '', 1, '1973-07-18', 'home alone...', '400@ashleymadison.com'),
(781, 'lo-lita', 'B79', 'B79', '675 finch avenue', 'Toronto', '', 2, '416-576-4447', '', '', 1, '1963-10-16', 'you only live once', '400@ashleymadison.com'),
(782, 'puppy love', 'B80', 'B80', '857 minnesota drive', 'Collingwood', 'v5f 7k8', 2, '705-443-9675', '', '', 1, '1968-12-10', 'friends, fun, and then....', '400@ashleymadison.com'),
(783, 'tootsie', 'B81', 'B81', '987 jane street', 'Toronto', '', 2, '416-454-9825', '', '', 1, '1966-02-09', 'attention starved......', '400@ashleymadison.com'),
(784, 'autumn', 'B82', 'B82', '67895 bayfield ave', 'Barrie', '', 2, '705-445-9611', '', '', 1, '1972-11-21', 'not forever, just for now', '400@ashleymadison.com'),
(785, 'candycane', 'B83', 'B83', '6743 green terrace avenue', 'Toronto', '', 2, '416-767-1231', '', '', 1, '1965-08-29', 'exploring all possibilities', '400@ashleymadison.com'),
(786, 'juicyfruit', 'B84', 'B84', '760 lansdown avenue', 'Toronto', '', 2, '416-224-7832', '', '', 1, '1978-03-16', 'lets chat...and see where it goes', '400@ashleymadison.com'),
(787, 'giggles', 'B85', 'B85', '74633 dunlop street', 'Barrie', '', 2, '705-446-9633', '', '', 1, '1967-01-25', 'capture the mind and the body will follow', '400@ashleymadison.com'),
(788, 'Starman', 'Paul', 'Starkman', '855 Queen St. W. Apt. 301', 'Toronto', '', 2, '(416)635-5241', '', '', 2, '1967-04-02', 'Need some TLC!', 'p_starman69@hotmail.com'),
(789, 'Rasta8', 'Anthony', 'Sims', '1101 Bay St', 'Toronto', 'M4Y 2R8', 2, '416-968-3878', '416-322-2507', '', 2, '1961-02-15', 'Hello!', 'rasta8@hotmail.com'),
(790, 'shayker', 'Jonathon', 'Greco', '125 Mural St.', 'Richmond Hill', '', 2, '000-000-0000', '', '647-226-2286', 2, '1964-08-29', 'Looking for that confident, adventerous sexy lady.', 'shaykersam@hotmail.com'),
(791, 'Digger', 'Jim', 'Kay', '202 Cimson Ave', 'Ottawa', '', 2, '613-292-2236', '', '', 2, '1971-02-05', 'Hoping for a little on-the-road excitement....', 'skydigg@hotmail.com'),
(792, 'tender touch', 'Mitch', 'Dawson', 'etobicoke centre', 'Toronto', '', 2, '416-608-4511', '', '416-608-4511', 2, '1960-01-01', 'love life', 'etobicoke222@yahoo.com'),
(793, 'REDLINE', 'Dom', 'Salano', '678 Paisley Blvd.', 'Mississauga', '', 2, '(416) 458-3043', '', '', 2, '1976-01-04', 'Want to put you life into high gear??', 'dom_salano@hotmail.com'),
(794, 'maximus', 'Vojislav', 'Nincic', '15  33rd street', 'Etobicoke', '', 2, '416-259-0174', '', '416-274-1273', 2, '1964-06-16', 'swiming', 'vojislav_n@hotmail.com'),
(795, 'DAIN', 'Darren', 'Whiteley', '42DECOROSO DRIVE', 'Woodbridge', '', 2, '9058934166', '4167809397', '', 2, '1975-03-10', 'SEXYPAPA', 'dainwhiteric@excite.com'),
(796, 'WADE67', 'Trevor', 'Leggett', '18 HOGAN CRESC.', 'Bowmanville', 'l1c 4x9', 2, '905-697-9877', '', '', 2, '1967-04-01', 'LOOKING FOR SOME HAPPINESS', 'leggettt@sympatico.ca'),
(797, 'Toronto Scorpion', 'Toronto', 'Male', '1687 Edginton Ave', 'Toronto', 'M5N1G3', 2, '416-784-2182', '', '', 2, '1959-10-28', 'Can you intice me:)', 'yppyazoo@hotmail.com'),
(798, 'Callmea', 'William', 'Man', '778 Dundas St. E.,', 'Mississauga', 'L4Y 2B6', 2, '905-277-0363', '905-277-0364', '', 2, '1959-01-09', 'I''m a Hot one, read the profile!', 'andrewdeman@hotmail.com'),
(799, 'Loverboy', 'John', 'Lake', '1411 Finch Ave W', 'Toronto', '', 2, '(416)414-9948', '', '(416) 414-9948', 2, '1967-08-01', 'Attached Discret Male Looking For Hot Passsionate Fun', 'loverboy9949@hotmail.com'),
(800, 'lucious', 'C91', 'C91', '526', 'London', '', 2, '9059872145', '', '', 1, '1967-07-04', 'lets explore the possibilities', '200@ashleymadison.com'),
(801, 'candi', 'C92', 'C92', '232', 'Barrie', '', 2, '9052145786', '', '', 1, '1969-02-07', 'pleasure for both', '200@ashleymadison.com'),
(802, 'summer', 'Barbara', 'Barlow', '5764 Bayfield street', 'Barrie', 'b5t 7j2', 2, '705-446-9219', '', '', 1, '1975-08-05', 'now what''s missing???', '400@ashleymadison.com'),
(803, 'teena', 'C93', 'C93', '444', 'Woodbridge', '', 2, '9056843147', '', '', 1, '1970-11-06', 'looking to share excitement and passion', '200@ashleymadison.com'),
(804, 'javi', 'C94', 'C94', '111', 'Scarborough', '', 2, '4168952321', '', '', 1, '1960-05-04', 'just what the doctor ordered', '200@ashleymadison.com'),
(805, 'Sensual', 'B87', 'B87', '7564 Crable Street', 'Woodbridge', '', 2, '905-344-1838', '', '', 1, '1971-07-21', 'we all need that warmth', '400@ashleymadison.com'),
(806, 'faith', 'C95', 'C95', '698', 'Niagara Falls', 'm415879', 2, '9056321478', '', '', 1, '1967-10-06', 'someone who wants more', '200@ashleymadison.com'),
(807, 'Elle', 'B88', 'B88', '19 kramer road', 'Brampton', '', 2, '905-466-9822', '', '', 1, '1964-01-05', 'looking for ????', '400@ashleymadison.com'),
(808, 'manda', 'C96', 'C96', '333', 'Pickering', '', 2, '9056452318', '', '', 1, '1968-08-03', 'you have my undivided attention', '200@ashleymadison.com'),
(809, 'jin', 'C97', 'C97', '369', 'Brampton', '', 2, '9058712354', '', '', 1, '1971-01-07', 'sweet and wild', '200@ashleymadison.com'),
(810, 'deseree', 'B89', 'B89', '5 barklay road', 'Niagara Falls', '', 2, '613-434-9941', '', '', 1, '1968-06-23', 'time to start having fun', '400@ashleymadison.com'),
(811, 'sassy', 'C98', 'C98', '542', 'Richmond Hill', '', 2, '9054812357', '', '', 1, '1961-09-03', 'you''ll hate the fact that you like it so much', '200@ashleymadison.com'),
(812, 'tweety', 'B90', 'B90', '76 grape street', 'Kitchener', '', 2, '519-564-1299', '', '', 1, '1963-01-18', 'TLC please', '400@ashleymadison.com'),
(813, 'angelic', 'Sharon', 'John', '285', 'Toronto', 'm2k4f5', 2, '4169852365', '', '', 1, '1969-06-02', 'shaken,stirred and ready to serve', '200@ashleymadison.com'),
(814, 'melody', 'B91', 'B91', '79 seneca lane', 'Toronto', 'm3b 5x8', 2, '416-661-3956', '', '', 1, '1974-05-24', 'who can captivate my mind and body', '400@ashleymadison.com'),
(815, 'porch', 'C100', 'C100', '421', 'Oakville', 'm145789', 2, '9053215861', '', '', 1, '1968-09-07', 'i''ll try anything once', '200@ashleymadison.com'),
(816, 'perkey', 'B92', 'B92', '555 toronto street', 'London', '', 2, '519-584-1392', '', '', 1, '1961-11-18', 'looking for a true gentleman', '400@ashleymadison.com'),
(817, 'kissable', 'B93', 'B93', '658 limelite drive', 'Burlington', '', 2, '519-668-5212', '', '', 1, '1976-02-05', 'sweet words and soft touches', '400@ashleymadison.com'),
(818, 'passion69', 'A71', '71', '109 hollow creek crt', 'Brampton', 'l4b 1r9', 2, '905-443-4309', '', '', 1, '1961-03-29', '"SENSUALITY" is number "1" in my books...then cums 69 (wink)', '100@ashleymadison.com'),
(819, 'secretluv', 'B94', 'B94', '65 main street', 'Stratford', '', 2, '519-664-9811', '', '', 1, '1965-10-16', 'could there be....', '400@ashleymadison.com'),
(820, 'layla', 'B95', 'B95', '876 davis drive', 'Newmarket', '123456', 2, '705-493-1282', '', '', 1, '1971-05-02', 'excellent student looking for extraordinary teacher', '400@ashleymadison.com'),
(821, 'flex4u', 'A72', '72', '18 samson dr.', 'London', '000000', 2, '204-8894446', '', '', 1, '1966-08-25', 'it only cums once a year...', '100@ashleymadison.com'),
(822, '20431', 'A73', 'A73', '994', 'Maple', 'm2p 1r7', 2, '905-554-7788', '', '', 1, '1955-04-27', 'have u ever tried sunbathing in the NUDE???', '100@ashleymadison.com'),
(823, 'KIMMY1', 'Windy', 'City', 'tiffdm', 'Mississauga', '', 2, '654332', '', '', 1, '1977-06-13', 'Looking For A Sugar Daddy - No Game Players please!!', 'darren@morgenstern.com'),
(824, '4youreyesonly', 'A74', 'A74', '78 grove ave', 'Timmins', '', 2, '607-990-6129', '', '', 1, '1969-11-22', 'sweet surrender........rescue me!!!', '100@ashleymadison.com'),
(825, 'nakita', 'A75', 'A75', '88 applecourt', 'Oakville', '', 2, '905-776-2233', '', '', 1, '1970-04-10', 'I''m the type of women who enjoy''s hot summer nights....', '100@ashleymadison.com'),
(826, 'minny', 'A76', 'A76', '5 eel crt', 'Toronto', '0000000', 2, '416-445-1760', '', '', 1, '1976-08-16', 'they say i look like a smaller version of Minnie Driver...', '100@ashleymadison.com'),
(827, 'mystify', 'A77', 'A77', '9 chelsey dr', 'Kitchener', '666666', 2, '90-443-7191', '', '', 1, '1953-06-22', 'I''m just full of suprises!!!', '100@ashleymadison.com'),
(828, 'logan2424', 'Jonathan', 'Gordon', '700 Bay', 'Toronto', '', 2, '416-465-9201', '416-979-1115', '416-522-6274', 2, '1974-04-19', 'discreet & intimate', 'sgordoncom@aol.com'),
(829, 'lip service', 'A78', 'A78', '7778 leftbank dr', 'Niagara Falls', 'm7y-h6r', 2, '503-776-3343', '', '', 1, '1979-08-12', 'garenteed satisfaction........', '100@ashleymadison.com'),
(831, 'Good4U', 'Beth', 'Raines', '655433232', 'Toronto', '00000', 2, '59459494', '', '', 1, '1976-04-06', 'My fantasy is to be your call girl (I''m NOT a hooker!)', '200@ashleymadison.com'),
(832, 'cuddleme', 'A79', 'A79', '2099 holland ave', 'Barrie', 'f4e-s3e', 2, '905-330-6654', '', '', 1, '1956-08-28', 'take me out to dinner,dance and a show then we''ll take', '100@ashleymadison.com'),
(833, 'hotshorts', 'A80', 'A80', '709 hunter st', 'Peterborough', 'm5f-d4e', 2, '705-445-8791', '', '', 1, '1969-04-28', 'love a man who is passionate and giving...', '100@ashleymadison.com'),
(834, 'Scott', 'Geoff', 'Wesley', '18 Lucas St.', 'Richmond Hill', 'L4J3W4', 2, '905 737 9121', '', '', 2, '1951-05-19', 'Passion, romance, friendship, pleasure', 'geoffwuk@hotmail.com'),
(835, 'Talldarkhandsome', 'Chris', 'Benson', '1465 morley', 'Ottawa', '', 2, '613 262 4149', '', '', 2, '1973-01-06', 'Hi ladies', 'bensonjay@hotmail.com'),
(836, 'ric', 'Ricky', 'Khan', '75-Thorncliffe park drive', 'Toroto', '', 2, '416-492-9216', '', '', 2, '1970-07-31', 'very tender', 'waqarhk@hotmail.com'),
(837, 'buddy', 'Sco', 'Mac', '15 pharmacy av.', 'Scar.', '', 2, '302-6546', '', '', 2, '1972-01-28', 'live it up', 'scomac_72@hotmail.com'),
(838, 'impo', 'Tony', 'Costa', '10 hansen rd', 'Brampton', '', 2, '905-457-0939', '905-456-3421', '905-457-3589', 2, '1974-12-01', 'hello ladies!!!', 'veeworld@veedub.com'),
(839, 'singh', 'Rohan', 'Singh', 'brampton', 'Brampton', 'l6r 2j1', 2, '416 834 4346', '', '', 2, '1976-08-05', 'Just looking for casual sex', 'cfnbd@hotmail.com'),
(840, 'tedebear', 'Theodore', 'Nemetz', '1 St. Clair Avenue east', 'Toronto', 'M5S 2T5', 2, '4169616560', '4169616560', '4164097279', 2, '1954-03-28', 'free spirit', 'theb@rogers.com'),
(841, 'do''nt have one', 'John', 'Conte', '42 amhurst', 'Toronto', '', 2, '416 744 22o1', '', '', 2, '1960-11-01', 'living life to the fullest', 'cat966s@netscape.net'),
(842, 'doodle', 'C101', 'C101', '454', 'New Market', 'm455566', 2, '9056874123', '', '', 1, '1971-05-05', 'looking for a man to keep up with me', '200@ashleymadison.com'),
(843, 'teeka', 'C102', 'C102', '999', 'Kitchener', '', 2, '9056487031', '', '', 1, '1968-02-06', 'lets match imagination', '200@ashleymadison.com'),
(844, 'vannila cream', 'C103', 'C103', '520', 'Woodbridge', 'm2l1g5', 2, '9056300214', '', '', 1, '1967-12-07', 'help me and i''ll help you', '200@ashleymadison.com'),
(845, 'dove', 'C104', 'C104', '603', 'Peterborough', 'm425369', 2, '9058003210', '', '', 1, '1972-08-04', 'i make dreams come true', '200@ashleymadison.com'),
(846, 'melon', 'C105', 'C105', '610', 'Hamilton', '', 2, '5196548723', '', '', 1, '1960-09-06', 'looking for mutually satisfying fun', '200@ashleymadison.com'),
(847, 'edible4u', 'A81', 'A81', '12 redriver ave', 'Toronto', 'd4e-e4y', 2, '416-555-3425', '', '', 1, '1955-03-16', 'let''s explore my most intense sexuall appetites......', '100@ashleymadison.com'),
(848, 'sunlight', 'C106', 'C106', '777', 'Toronto', '', 2, '4169872348', '', '', 1, '1965-12-06', 'reality is what you make it', '200@ashleymadison.com'),
(849, 'sweetfudge', 'A82', 'A82', '208 king crt', 'Toronto', '000000', 2, '416-908-4476', '', '', 1, '1956-07-28', 'captivating the essence of erotic sensuall pleasures.....', '100@ashleymadison.com'),
(850, 'ash', 'C107', 'C107', '450', 'London', '', 2, '905632000', '', '', 1, '1970-07-08', 'perfect combination', '200@ashleymadison.com'),
(851, 'fantasia', 'B96', 'B96', '574 st clair avenue', 'Toronto', 'b5t 6h7', 2, '416-967-3888', '', '', 1, '1961-07-02', 'is it for you??', '400@ashleymadison.com'),
(852, 'bubble gum', 'C108', 'C108', '220', 'Brampton', '', 2, '9058521040', '', '', 1, '1969-08-02', 'lets share pleasure', '200@ashleymadison.com'),
(853, 'samantha', 'A83', 'A83', '4 louis ave', 'Burlington', '', 2, '905-332-6432', '', '', 1, '1976-08-17', 'creating passion, i believe has to be the most desirable fantasy', '100@ashleymadison.com'),
(854, 'plumrose', 'C109', 'C109', '650', 'Burlington', 'm3k5j5', 2, '9056321475', '', '', 1, '1958-11-29', 'If you cant believe Im here, neither can I!!', '200@ashleymadison.com'),
(855, 'serious', 'Al', 'Great', '30 so st.', 'Toronto', '', 2, '416-328-5873', '', '', 2, '1971-07-06', 'kind, caring and real', 'rfddn@aol.com'),
(856, 'Goingdown', 'Robert', 'Buchanan', '1055 Gordon st', 'Northern', 'R8N3T8', 2, '', '', '', 2, '1969-09-11', 'I Travel', 'goingdown70@hotmail.com'),
(857, 'Golden', 'B97', 'B97', '7 maple street', 'Orangeville', '', 2, '905-431-9349', '', '', 1, '1974-01-17', 'here i am !!', '400@ashleymadison.com'),
(858, 'peekaboo', 'A84', 'A84', '905  clearwater crt', 'Scarborough', '0000000', 2, '905-332-9121', '', '', 1, '1968-04-24', 'look deep into my eye''s...............', '100@ahsleymadison.com'),
(859, 'drayton al', 'Ozzze', 'Singh', '30 rte cres', 'Richmond Hill', '', 2, '905-508-1601', '', '', 2, '1971-07-06', 'kind, caring and real', 'marry2001@excite.com'),
(860, 'Mr. Massage', 'Will', 'Deman', '774 Dundas St. E.,', 'Mississauga', '', 2, '905-277-0365', '', '', 2, '1959-01-08', 'Let my hands do the talking...', 'williamman@hotmail.com'),
(861, 'goodee', 'C110', 'C110', '400', 'Orangeville', '', 2, '9056231400', '', '', 1, '1968-03-07', 'let me surprise you', '200@ashleymadison.com'),
(862, 'li-zzz-y', 'B98', 'B98', '55', 'Owen Sound', '', 2, '705-445-9766', '', '', 1, '1967-05-04', 'lets explore', '400@ashleymadison.com'),
(863, 'rainbow', 'B99', 'B99', '1122 finch avenue', 'Scarborough', '', 2, '416-661-3118', '', '', 1, '1965-11-01', 'where''s my pot of gold???', '400@ashleymadison.com'),
(864, 'Tessie', 'B100', 'B100', '88 Downdale Drive', 'Pickering', '', 2, '905-755-6119', '', '', 1, '1970-09-03', 'what are you waiting for??', '400@ashleymadison.com'),
(865, 'snowwhite', 'B101', 'B101', '7890 Dunlop Street West', 'Barrie', '1213465', 2, '705-555-1234', '', '', 1, '1974-07-24', 'still waiting for that magic kiss', '400@ashleymadison.com'),
(866, 'erotica', 'A85', 'A85', '6 mcowan crt', 'Timmons', '', 2, '905-332-8912', '', '', 1, '1980-07-06', 'illusions of erotica...let the passion begin.....', '100@ashleymadison.com'),
(867, 'glory', 'A8', 'A86', '678 champs st.', 'Owen Sound', '000000', 2, '905-443-9802', '', '', 1, '1952-08-26', 'my inner beauty reveals my most physical atractions.in a man....', '100@ashleymadison.com'),
(868, 'Dolly', 'B102', 'B102', '88 pembrook avenue', 'Kitchener', '', 2, '519-684-5991', '', '', 1, '1965-02-10', 'well..........', '400@ashleymadison.com'),
(869, 'pussnboots', 'A87', 'A87', '7 rosewood ave', 'Newmarket', '0000000', 2, '907-435-8163', '', '', 1, '1977-01-22', '"like really bad to the Bone!!!!!', '100@ashleymadison.com'),
(870, 'dragonfly', 'B103', 'B103', '166 harvest drive', 'Oakville', '', 2, '905-788-3461', '', '', 1, '1962-06-07', 'are you up for it???', '400@ashleymadison.com'),
(871, 'velvet', 'B104', 'B104', '99473 Yonge Street', 'Richmond Hill', '', 2, '416-565-3811', '', '', 1, '1960-01-16', 'nice to look at - nicer to touch', '400@ashleymadison.com'),
(872, 'temptation', 'B105', 'B105', '16 main street', 'London', 'm6y 7g4', 2, '519-564-3339', '', '', 1, '1978-04-01', 'make me melt', '400@ashleymadison.com'),
(873, 'goodntight', 'A88', 'A88', '888 john st.', 'Port Hope', 'ooo', 2, '514-890-5729', '', '', 1, '1977-10-10', 'let''s face it, we all need it...it''s how creative and where..', '100@ashleymadison.com'),
(874, 'YoUnG CaNdY', 'A89', 'A89', '59 grover rd', 'Toronto', '9999', 2, '41908-6785', '', '', 1, '1980-10-21', 'just a groovy kinda girl..looking for some.......', '100@ashleymadison.com'),
(875, 'spook', 'A90', 'A90', '928 devan blv', 'Maple', '', 2, '905-345-589', '', '', 1, '1964-06-30', 'i am the creature of the night.....do u dare...', '100@ashleymadison.com'),
(876, 'apuka', 'Arpad', 'Decsey', '133 Torresdale Ave.', 'Toronto', '', 2, '416-650-6351', '', '416-802-6351', 2, '1943-04-20', 'I,m a wey openminded person!!!', 'apuka1933@sympatico.ca'),
(877, 'Lawyer1', 'Sammy', 'Coleman', '145 john st', 'London', '', 2, '519-435-1573', '', '', 2, '1968-01-19', 'Looking for an enjoyable and discreet encounter', 'jonahmayles@hotmail.com'),
(878, 'Flower1', 'J', 'Mayles', '145 john st', 'London', 'n6a 1n7', 2, '519-435-1573', '', '', 1, '1975-06-14', 'Wanting to re-live my glory years with an exciting man.', 'jonahmayles@hotmail.com'),
(880, 'SANTA', 'Simon', 'Young', '1110 FINCH AVE', 'North York', 'M3J2E5', 2, '4162258000', '', '', 2, '1962-01-31', 'You will tell me when to stop', 'yourguycaca@yahoo.ca'),
(881, 'greatcatch', 'Sheri', 'Revsin', '854 lester rd', 'Toronto', 'kkkkk', 2, '416 222 2222', '', '', 1, '1966-10-09', '"you can''t get better than this"', '600@ashleymadison.com'),
(882, 'htoomuch', 'Tony', 'Hines', 'Gibbons St.', 'East GTA', 'L1J 4Y1', 2, '905-721-2761', '', '905-440-9223', 2, '1955-10-04', 'I want you to want me', 'hpaparucci@yahoo.ca'),
(883, 'toronto_man', 'Al', 'Labatt', '66 wellington st. w.', 'Toronto', '', 2, '416-863-7400', '', '', 2, '1965-06-01', 'looking for fun in T.O.', 'allabatt@hotmail.com'),
(884, 'ROCK', 'Mike', 'Jones', '3170 KIRWIN AVE', 'Mississauga', '0000', 2, '416-854-5712', '', '', 2, '1973-10-20', '"ARE YOU UP FOR IT"', 'mmahon@primus.ca'),
(885, 'SAMID80', 'Jay', 'Samid', '125 SELECT AVE', 'Scarborough', 'M1V 4A5', 2, '416-378-5447', '', '', 2, '1966-03-20', 'YOUR PERSONAL MASSEUSE', 'samid80@hotmail.com'),
(886, 'Stingray', 'Robbie', 'Lalchan', 'Grandravine Dr', 'North York', '', 2, '416 398 6910', '', '416 209 2205', 2, '1968-02-14', 'I''m fit, fun, open-minded and willing!', 'rchan14@yahoo.com'),
(887, 'sunshinny', 'Craig', 'Bibby', '843 grace st.', 'Newmarket', 'l3y1c6', 2, '9058983992', '', '', 2, '1963-05-23', 'dude', 'kraygar2000@yahoo.com'),
(888, 'azoreanprince', 'Richard', 'Clemente', '8 albert ave', 'Toronto', '', 2, '416 894 7559', '', '', 2, '1959-08-26', 'used but never broken', 'azoreanprince@hotmail.com'),
(889, 'excite', 'Margret', 'Ekler', '263 aplplegate rd', 'Toronto', '000000', 2, '416 555 2525', '', '', 1, '1962-04-27', 'R U Ready to Spend some $$$ on me? (not for sex)', '600@ashleymadison.com'),
(890, 'tax', 'Bob', 'Taxeras', '22 mccain ct', 'Closter', '', 2, '2017683043', '', '', 2, '1956-01-11', 'big and in need of female adult friends', 'cheftax@aol.com'),
(891, 'spiritedwoman', 'Yarrisa', 'Cole', '754 broadview dr', 'Toronto', 'M6G 3K3', 2, '416 222 6565', '', '', 1, '1961-11-11', 'I''m a free spirit', '600@ashleymadison.com'),
(892, 'Bambi', 'B106', 'B106', '76 hurnite avenue', 'Hamilton', '12356', 2, '905-666-3422', '', '', 1, '1972-07-04', 'open minded and ready to try something new', '400@ashleymadison.com'),
(893, 'dom', 'Domenic', 'Guida', '134 lower sherbourne st', 'Toronto', 'M3K1V2', 2, '416-214-2871', '', '416-524-0804', 2, '1957-12-07', 'seeking discreet fun encounters with older woman', 'domdomgca@yahoo.ca'),
(894, 'spicee', 'C111', 'C111', '820', 'Sudbury', '', 2, '9056300234', '', '', 1, '1964-11-22', 'can you be my sweet man?', '200@ashleymadison.com'),
(895, 'silvermoon', 'B107', 'B107', '876 parliment road', 'Ottawa', '', 2, '613-761-3382', '', '', 1, '1966-04-27', 'i need excitement', '400@ashleymadison.com'),
(896, 'eden', 'C112', 'C112', '663', 'Brantford', '', 2, '9052314789', '', '', 1, '1970-05-26', 'looking for more', '200@ashleymadison.com'),
(897, 'angel face', 'C113', 'C113', '103', 'New Market', '5555', 2, '9058203014', '', '', 1, '1969-07-29', 'I''m willing, are you?', '200@ashleymadison.com'),
(898, 'karatekid', 'Mike', 'Stevens', '112 oak st', 'Toronto', '', 2, '281-2345', '', '', 2, '1975-07-29', 'hey there sexy', 'mkbushido@netscape.net'),
(899, 'candy4u', 'Kathy', 'Lee', '444 madison av', 'Toronto', '8888888', 2, '416 545 8585', '', '', 1, '1969-09-22', '"rock my world"', '600@ashleymadison.com'),
(900, 'hot chocolate', 'C114', 'C114', '501', 'Barrie', 'm214789', 2, '9056321475', '', '', 1, '1958-07-09', 'bored with the same thing looking for spice', '200@ashleymadison.com'),
(901, 'alize', 'C115', 'C115', '602', 'Oakville', 'm2v1t2', 2, '9056302314', '', '', 1, '1967-09-24', 'let the good times roll', '200@ashleymadison.com');
INSERT INTO `tpeople` (`PEOPLE_ID`, `NICKNAME`, `FIRST_NAME`, `LAST_NAME`, `STREET`, `CITY`, `ZIP`, `COUNTRY`, `PHONE`, `WORK_PHONE`, `MOBILE_PHONE`, `GENDER`, `BIRTHDAY`, `PROFILE_CAPTION`, `EMAIL`) VALUES
(902, 'zesty', 'C116', 'C116', '252', 'Pickering', '', 2, '9053252000', '', '', 1, '1972-04-07', 'capture my mind and only then the adventure begins', '200@ashleymadison.com'),
(903, 'dimple', 'C117', 'C117', '333', 'Toronto', 'm48526', 2, '4163213214', '', '', 1, '1970-06-20', 'my well is dry', '200@ashleymadison.com'),
(904, 'puppy soup', 'B108', 'B108', '119 juniper avenue', 'Woodbridge', 'm5b 2k1', 2, '416-556-1911', '', '', 1, '1963-10-07', 'lets find pleasure together', '400@ashleymadison.com'),
(905, 'red pepper', 'C118', 'C118', '259', 'Scarborough', '', 2, '9053214789', '', '', 1, '1970-09-06', 'you have to lick it in order to stick it', '200@ashleymadison.com'),
(906, 'exotic', 'B109', 'B109', '10 franktown avenue', 'Newmarket', '123456', 2, '905-781-3555', '', '', 1, '1961-02-03', 'hungry for touch', '400@ashleymadison.com'),
(907, 'utopia', 'B110', 'B110', '1010 humber road', 'Brampton', '', 2, '416-444-1983', '', '', 1, '1965-11-07', 'and the night was made of.....', '400@ashleymadison.com'),
(908, 'vanity', 'C119', 'C119', '333', 'Kitchener', '', 2, '9052314750', '', '', 1, '1964-02-28', 'i''m ready to explore', '200@ashleymadison.com'),
(909, 'min', 'C120', 'C120', '200', 'Brampton', 'm2j5lm', 2, '9056321490', '', '', 1, '1971-04-30', 'Fast cars and fat wallets work for me!', '200@ashleymadison.com'),
(910, 'olive', 'B111', 'B111', '3 downdale drive', 'Burlington', '', 2, '519-566-3722', '', '', 1, '1969-03-10', 'chasing a dream', '400@ashleymadison.com'),
(911, 'smooch', 'B112', 'B112', '2960 Don Mills West', 'North York', '', 2, '416-491-6611', '', '', 1, '1972-06-01', 'playful and sexy...', '400@ashleymadison.com'),
(912, 'Candy Necklace', 'B113', 'B113', '20678 finch avenue', 'Scarborough', '123456', 2, '416-961-3334', '', '', 1, '1970-05-29', 'I don''t want a diamond in the rough, I don''t want one at all', '400@ashleymadison.com'),
(913, 'Fit', 'Gail', 'Murray', 'R.R.# 2', 'Meaford', '', 2, '538-4196', '', '', 1, '1956-10-13', 'Safe', 'murray@multimedia.win.net'),
(914, 'Bliss', 'B114', 'B114', '745 rosedale road', 'Toronto', 'b5g 6h7', 2, '416-995-3611', '', '', 1, '1964-08-18', 'i feel like a kid in a toy store', '400@ashleymadison.com'),
(915, 'kindle', 'B115', 'B115', '2020 gobble street', 'Barrie', '', 2, '705-443-9811', '', '', 1, '1963-01-08', 'come on baby light my fire', '400@ashleymadison.com'),
(916, 'Big', 'Todd', 'Elroy', '271 Millway Road', 'Toronto', '', 2, '416-428-8597', '', '', 2, '1970-02-17', 'Looking for love in all the wrong places...', 'bigdollas@yahoo.com'),
(917, 'Stretch', 'Robert', 'Berg', '8 King Street East', 'Oshawa', 'L1H 1A9', 2, '(905) 404-1377', '', '', 2, '1949-04-01', 'Reliable / easy going / fun loving', 'bluewater77ca@yahoo.ca'),
(918, 'pinkus', 'Stacey', 'Ho', '789 interlock rd', 'Toronto', 'M5K 5L5', 2, '415 898 8989', '', '', 1, '1964-10-11', 'Let me take control', '600@ashleymadison.com'),
(919, 'cayenne', 'Dorthy', 'Totto', '87 grapevine rd', 'Toronto', 'm1b-1s5', 2, '416 555 0000', '', '', 1, '1967-12-04', 'Some like it Hot... and some like it cold', '800@ashleymadison.com'),
(920, 'xoxox', 'Jasmine', 'Garet', '56 talguy rd', 'Hamilton', 'llllll', 2, '416 525 6363', '', '', 1, '1967-08-11', 'make love', '600@ashleymadison.com'),
(921, 'firecracker', 'Ellen', 'Drake', '25 foresrhill rd', 'Toronto', '555555', 2, '416 878 6363', '', '', 1, '1958-05-14', 'wanna play with fire.....', '600@ashleymadison.com'),
(922, 'whitemagic', 'Kristy', 'Terllington', '871 blot rd', 'Toronto', '55555555', 2, '416 222 3636', '', '', 1, '1961-05-28', 'ready to put a spell on you', '600@ashleymadison.com'),
(923, 'Brad 10', 'William', 'Donovan', '16526 Offenhaur Rd', 'Tampa', '33634', 2, '813-792-2254', '813-880-9339', '813-376-9416', 2, '1956-10-03', 'Can everyday be Valentines Day?', 'bdonovan@go2uti.com'),
(924, 'toolman', 'Larry', 'Mccalla', '3266 Yonge st', 'Toronto', 'M4N 3P6', 2, '(416)4595628', '', '(416)4595628', 2, '1956-05-10', 'coffee, tea or.....???', 'lmcc_42@hotmail.com'),
(925, 'trickybuff', 'Travis', 'Williams', '3-325 Enfield cres', 'Winnipeg', '', 2, '204 237-3789', '', '', 2, '1977-07-29', 'I''m the keymaster are you the gatekeeper', 'trickybuff@yahoo.com'),
(926, 'Biggie', 'Marcelo', 'Baez', '56 Acadian Heights', 'York', 'M6M 3Z2', 2, '905 238-3466', '905 238-3466', '', 2, '1972-05-21', 'You want what I want. So let''s get it on!', 'baez_marcelo@hotmail.com'),
(927, 'tor21M', 'Corey', 'Morden', '30 speers rd', 'Oakville', '', 2, '9053382896', '', '', 2, '1980-08-10', 'i''m up for anything...', 'c_morden@hotmail.com'),
(928, 'Northern', 'Steve', 'Lamb', '42 Mergl Drive', 'Port Dover', 'n0a1n4', 2, '519-583-3006', '', '', 2, '1954-08-22', 'A little sun a little food and a little when ever you want', 'lamb5499@yahoo.com'),
(929, 'crunch', 'S', 'P', '332 queen st. east', 'Toronto', 'M4K1G7', 2, '416 955 9221', '', '', 2, '1971-04-24', 'attractive, creative 30 year old', 'perryedits333@hotmail.com'),
(931, 'byob69', 'Jason', 'Sharkey', 'north west GTA', 'North West Gta', 'L7J2K8', 2, '519-271-8120', '', '----------------------', 2, '1970-06-10', 'Looking for erotic women:)', 'byob69ca@yahoo.ca'),
(932, 'johnf', 'John', 'Filipe', '85 Lawton Blvd Suite 409', 'Toronto', 'M4V 1Z7', 2, '416 932 9925', '416 932 9925', '416 277 2532', 2, '1969-04-16', 'very funny down to earth guy', 'johnf0000@yahoo.com'),
(933, 'boady', 'Bodhi', 'Grice', '18 marshall st', 'Toronto', 'm6k 1s4', 2, '416 731 5057', '', '416 731 5057', 2, '1973-05-04', 'Austrailan loves to pleasure', 'boady53@hotmail.com'),
(934, 'workin''stiff', 'Kevin', 'Fallow', '122 bayview', 'Newmarket', '', 2, '476 7085', '', '', 2, '1968-11-20', 'lookin''for fun', 'mojoscorp@yahoo.com'),
(935, 'Inthemood', 'Michael', 'Mcbride', '32 Malta Avenue', 'Brampton', 'L6Y 4S5', 2, '905-451-6777', '', '', 2, '1962-03-09', 'Looking For You!', 'michael_mcbride@sympatico.ca'),
(936, 'mtk', 'Rob', 'Johnson', '250 Glamis Rd.', 'Cambridge', 'N1R 6V8', 2, '624-3598', '748-1684', '', 2, '1967-10-26', 'married but not dead', 'mtk@themail.com'),
(937, 'Ziggy_02', 'Vince', 'Gallina', '454 Cranston Park', 'Vaughn', '', 2, '905-303-9988', '', '416-477-8859', 2, '1967-04-17', 'Looking for wild and adventurous ladies', 'pastadoh@aol.com'),
(938, 'zac', 'Steve', 'Hughes', '110 erskine avenue', 'Toronto', 'm4p 1z3', 2, '416 5932007', '', '', 2, '1974-01-25', 'TD&H male looking for new friend', 'zac999@hotmail.com'),
(939, 'murph', 'Milhouse', 'Vanhouten', '12 main st.', 'Hamilton', 'L9C 3G9', 2, '905-321-6675', '905 676-3324', '', 2, '1976-03-03', 'hi there!', 'quasipilot@hotmail.com'),
(940, 'britney', 'Shakira', 'Mountain', '25  briarhill', 'Toronto', '9999999', 2, '416 555 7777', '', '', 1, '1975-12-20', 'I cant believe Im doing this.', '600@ashleymadisom.com'),
(941, 'bond', 'Jabber', 'Bond', '76 WHITEHORN CRES', 'North York', '', 2, '4164471481', '', '', 2, '1969-05-23', 'Attractive Young Gent Seeks Lady With Sense of Humour!', 'wickedlywildca@yahoo.ca'),
(942, 'sneaky', 'Jennifer', 'Lopez', '415 greengate rd', 'Toronto', 'M4L 2Z6', 2, '416 222 8585', '', '', 1, '1963-09-19', 'have you seen the movie 9 1/2 weeks?', '600@ashleymadison.com'),
(943, 'rai', 'Ram', 'Raj', '38 Rotherham avenue', 'Toronto', '', 2, '416 922 84444', '', '', 2, '1958-05-01', 'Looking for intimate with someone', 'naro@attcanada.ca'),
(944, 'TRAZ', 'Ryan', 'Doyle', '383 Washago cres', 'Mississauga', 'L4Z 2J9', 2, '905-712-8475', '', '', 2, '1976-12-01', 'Attractive,Sexy, and in excellent shape', 'traz76@idirect.com'),
(945, 'jiggy1', 'Edward', 'Redman', '75 John st.', 'Hamilton', 'L0R 2H0', 2, '905-545-7646', '', '', 2, '1969-05-17', 'Not having a fun time yet', 'edbred@lycosmail.com'),
(946, 'fitos', 'Fabian', 'Soto', '301dixonrd', 'Toronto', 'M9R1S2', 2, '4164584971', '', '', 2, '1975-03-07', 'i want a hot and naughty girl', 'mikecolt53@hotmail.com'),
(947, 'Clem', 'Clem', 'Slauenwhite', '2605 Woodchester Dr', 'Mississauga', 'L5K2E3', 2, '4162723858', '', '4162723858', 2, '1956-08-05', 'Hello Ladies', 'cleminto@yahoo.ca'),
(948, 'Melowbutfun', 'Ian', 'Macdougall', '15 Skyline Dr.', 'Essex Jct.', '05452', 2, 'none', '802-872-1600 x102', '', 2, '1956-05-03', 'Just Being Adventurous', 'macdougall_ian@hotmail.com'),
(949, 'HARROGATE', 'Bob', 'Smith', '28 ASPENDALE DR', 'Scarborough', '', 2, '416 887 4227', '', '', 2, '1966-03-01', 'TLC WAITING FOR YOU', 'harrogate66@hotmail.com'),
(950, 'Romantic4UBabe', 'Rick', 'Baran', '51 Glenellen Drive East', 'Toronto', 'M8Y2G7', 2, '416234-5030', '', '', 2, '1963-04-16', 'Heart of Gold', 'rickbara@enoreo.on.ca'),
(951, 'hdog', 'Greg', 'Samuals', '128 elm st.', 'Toronto', '', 2, '416-123-4567', '', '', 2, '1972-01-01', 'very curious', 'gscando@hotmail.com'),
(952, 'johnnyspecial', 'John', 'Miller', '143 main st. s.', 'Brampton', '', 2, '905-457-8974', '', '905-783-6593', 2, '1965-06-19', 'hi my names johnny :]', 'john_miller_cook@yahoo.com'),
(953, 'Romeo', 'Joe', 'Montana', '30 Lepage Court', 'Toronto', '', 2, '647-224-7746', '', '6472247746', 2, '1964-09-19', 'looking for the gerrrrrr in swinger baby.', 'yehbabyjo@yahoo.ca'),
(954, 'BUSINESS', 'Chris', 'Aiello', '5995 AVEBURY ROAD', 'Mississauga', '', 2, '6472245495', '', '', 2, '1966-03-10', 'Do You Like Pinicolada''s', 'wickedlywildca@hotmail.com'),
(955, 'YoungTx', 'Aj', 'Powers', '5784 Long Drive', 'San Antonio', '', 2, '725-1212', '', '', 2, '1983-04-01', '18 San Antonio tired of girls wants real a woman', 'tkdmaster2000@hotmail.com'),
(956, 'frankie', 'Frank', 'Fernandez', '5 dufresne crt', 'Toronto', 'm3c 1b7', 2, '416-2916471', '416-2916471', '', 2, '1970-11-25', '3 ingredients of a long healthy life: fun, fun and more fun!!!!', 'franklin_p34@hotmail.com'),
(957, 'SweetandFun', 'Joe', 'Blazik', '311 The West Mall', 'Toronto', '', 2, '4166228175', '4162320770', '', 2, '1976-04-03', 'Always up for a good time with an intelligent female', 'jblazik@homail.com'),
(960, 'Icecream', 'John', 'Kozanczyn', '11 Bywood Drive', 'Toronto', 'M9A 1L6', 2, '416 568-2064', '', '416 568-2064', 2, '1958-06-11', 'I''m happy, your happy.  Now for something completely different', 'orysia0950@rogers.com'),
(961, 'chow', 'Yogesh', 'Chaudhary', '720,kennedy road', 'Scarborough', 'M1K 2B7', 2, '416-267-6381', '', '', 2, '1964-12-29', 'looking for female partner', 'chaudharyyogesh@hotmail.com'),
(962, 'Nicky', 'Paul', 'Procha', '2400 Dundas St.', 'Mississauga', 'L5K 2R8', 2, '416 518 2985', '', '', 2, '1962-06-15', 'Love to make your beauty extatic', 'proxmat@hotmail.com'),
(963, 'Professor', 'Oskar', 'Tankovitz', '13055 Yonge Street', 'Toronto', 'M4H1L6', 2, '905-773-6666', '905-773-6666', '', 2, '1963-04-11', 'If you are willing to learn call the professor!?', 'prof_theodor@hotmail.com'),
(964, 'canuck1984', 'Ross', 'Tyrell', '1018 lockwood', 'Ottawa', 'K1H 5N1', 2, '9058687584', '', '905-8687584', 2, '1982-05-04', 'Young Gentleman', 'canuck1984@hotmail.com'),
(965, 'oh darry', 'Kuh', 'Iu', 'iu', 'Toronto', '00000', 2, '988877766', '', '', 2, '1976-05-05', 'hi girls', 'dmorgenstern@rogers.com'),
(967, 'shy_guy247', 'Camal', 'Mcdoom', '9 Kane Ave', 'Toronto', 'M6N 3M7', 2, '416-656-9993', '', '416-831-8733', 2, '1981-02-25', 'Shy Guy looking for fun', 'cmcdoom@hotmail.com'),
(968, 'Chuckit', 'Jay', 'Bloom', '1', 'Toronto', '56789', 2, '9', '8', '6', 2, '1976-02-03', 'Looking for Fun', 'chuckit44@hotmail.com'),
(969, '20578', 'Rob', 'Mancini', '4562 Sterrt dr', 'Toronto', 'l4y3b2', 2, '416-111-5555', '444-444-5555', '', 2, '1971-01-01', 'rob', 'robm112@hotmail.com'),
(970, '2muchluv', 'A91', 'A91', '621 riverdale crec', 'Toronto', 'n6n 8k8', 2, '416-745-188', '', '', 1, '1953-04-26', '"The best is yet to cum"..........', '100@ashleymadison.com'),
(971, 'lorry', 'A92', 'A92', '7 jane st', 'Toronto', 'm6r-h5f', 2, '416-676-7090', '', '', 1, '1963-03-29', 'an adventure for u ?', '100@ashleymadison.com'),
(972, 'tenderlips', 'A93', 'A93', '67 goliath cre', 'Mapl', 'm6t-5f4', 2, '905-453-8711', '', '', 1, '1974-11-02', 'A tiger i want to tame....', '100@ashleymadison.com'),
(973, 'Blueye76', 'Paul', 'Hogg', '452 Markham Street', 'Toronto', 'M6G 2L2', 2, '416 910 6876', '416 910 6876', '', 2, '1976-08-15', 'Attached male in Toronto looking for discreet encounters', 'phogg76@hotmail.com'),
(974, 'slave', 'Jackie', 'Brisco', '52 amherst rd', 'Toronto', 'K2M 5L9', 2, '416 936 4444', '', '', 1, '1962-04-22', 'I''ll take care of business', '600@ashleymadison.com'),
(975, 'cookie', 'Franka', 'Tano', '123 king st', 'Toronto', 'M4J 3Z9', 2, '416 256 1212', '', '', 1, '1968-06-24', 'seeking a fun time from U', '600@ashleymadisom.com'),
(976, 'sexy baba', 'C121', 'C121', '121', 'Richmond Hill', 'b2b1o2', 2, '9054676325', '', '', 1, '1968-10-08', 'seductively yours', '200@ashleymadison.com'),
(977, 'jacknrbox', 'A94', 'A94', '5666 elgin ave.', 'Toronto', 'm6g-1k1', 2, '513-789-4381', '', '', 1, '1967-05-27', 'Your Fantasy or mine?', '100@ashleymadison.com'),
(978, 'cindy', 'C122', 'C122', '555', 'Hamilton', 'm5m1l8', 2, '9056321456', '', '', 1, '1963-07-24', 'tell me something good', '200@ashleymadison.com'),
(979, 'Monica', 'Racheal', 'Green', '73 baview av', 'Toronto', 'L3T 2X8', 2, '416 555 7878', '', '', 1, '1959-04-28', 'I can fulfill all your fantasies', '600@ashleymadison.com'),
(980, 'Mo Mo', 'C123', 'C123', '666', 'Oakville', 'm2y1e3', 2, '9056321456', '', '', 1, '1959-04-22', 'if you are smart& sexy show yourself', '200@ashleymadison.com'),
(981, 'blossoms', 'C124', 'C124', '632', 'Toronto', 'm3j1r5', 2, '4163254879', '', '', 1, '1970-06-09', 'intrigue me darling', '200@ashleymadison.com'),
(982, 'french kiss', 'Barbara', 'Barlow', '5 hadle road', 'Montreal', 'm2j 3b8', 2, '416-777-1234', '', '', 1, '1967-03-22', 'whats love got to do with it', '400@ashleymadison.com'),
(983, 'suzieQ', 'Sue', 'Lester', 'willowbrook rd', 'Richmondhill', 'L5G 2P6', 2, '905 647 9696', '', '', 1, '1965-03-17', 'waiting 4 U', '600@ashleymadison.com'),
(984, 'sweets', 'C125', 'C125', '638', 'Barrie', 'm9t2y2', 2, '9054632147', '', '', 1, '1971-08-19', 'helloooooooooooooooo', '200@ashleymadison.com'),
(985, 'busty', 'A95', 'A95', '111 eda creek ave', 'Hamilton', 'r4e-5g5', 2, '905-443-7599', '', '', 1, '1969-03-09', 'all men on deck, this boat, needs some handling', '100@ashleymadison.com'),
(986, 'kiwi strawberry', 'C126', 'C126', '444', 'Woodbridge', 'm2k1y9', 2, '9052487132', '', '', 1, '1967-03-22', 'sensual to the touch', '200@ashleymadison.com'),
(987, 'taz', 'Mark', 'Nakamura', '2245 eglinton ave. e.', 'Toronto', 'm1k 2n3', 2, '416-759-9714', '', '416-706-5308', 2, '1961-08-20', 'Professional writer in search of muse...', 'tazmaniac@sympatico.ca'),
(988, 'tightass', '96', 'A96', '3 church ave.', 'Belleville', 'm7d-h9h', 2, '905-454-7122', '', '', 1, '1976-11-26', 'call me tonight for  a romantic, erotic encounter......', '100@ashleymadison.com'),
(989, 'joy', 'B117', 'B117', '3 jasper crescent', 'Stratford', 'b5t 4r6', 2, '519-361-2888', '', '', 1, '1965-05-15', 'looking around for ???????', '400@ashleymadison.com'),
(990, 'cover girl', 'C127', 'C127', '389', 'London', 'm2v2c8', 2, '9056321745', '', '', 1, '1968-07-29', 'looking for an older studd', '200@ashleymadison.com'),
(991, 'seashell', 'B118', 'B118', '28 toronto street', 'Waterloo', 'n6y 3t8', 2, '519-564-3399', '', '', 1, '1963-08-09', 'need some x-tra loving', '400@ashleymadison.com'),
(992, 'gretta', 'Ida', 'Gold', '856 yonge st', 'Toronto', 'K5T 2N3', 2, '416 333 3333', '', '', 1, '1958-02-02', 'Hello- like to get to know you', '600@ashleymadison.com'),
(993, 'tigress', 'C128', 'C128', '438', 'Oshawa', 'm4n4l6', 2, '9056321478', '', '', 1, '1972-08-16', 'needs some extra loving', '200@asleymadison.com'),
(994, 'constellation', 'B119', 'B119', '999 leek street', 'Sudbury', 'j7y 3d5', 2, '519-566-7878', '', '', 1, '1971-02-03', 'hmmmmmmmm.............', '400@ashleymadison.com'),
(995, 'raw', 'A97', 'A97', '9 leaf ave', 'Brantford', 'k6k-q3e', 2, '905-654-7777', '', '', 1, '1967-01-27', 'it''s so chewy and wet,just love raw fish........', '100@ashleymadison.com'),
(996, 'arch angel', 'C129', 'C129', '413', 'Guelp', 'm6m1t2', 2, '9053214569', '', '', 1, '1968-05-22', 'turn up the heat', '200@ashleymadison.com'),
(997, '"G" string', 'A98', 'A98', '56 mandy ave', 'Richmond Hill', 'm7t-h5h', 2, '905-472-3155', '', '', 1, '1959-04-27', 'as i slide down your shaft...waiting to explode...', '100@ashleymadison.com'),
(998, 'coral', 'Ceciley', 'Grano', '203 bradgate rd', 'Toronto', 'L2M 5G3', 2, '416 567 2645', '', '', 1, '1964-08-19', 'Mr. RIGHT NOW WHERE ARE YOU??', '600@ashleymadison.com'),
(999, 'flesh4fantasy', 'A99', 'A99', '1000 davidson rd', 'Pembrook', 'm5y-d5r', 2, '905-382-2398', '', '', 1, '1962-03-27', 'sick of the old routine', '100@ashleymadison.com'),
(1000, 'jupiter', 'B120', 'B120', '57484 Yonge Street', 'Newmarket', 'm4h 5p4', 2, '905-781-7156', '', '', 1, '1972-11-06', 'yesterday = history, tomorrow = mystery, today = ???????????', '400@ashleymadison.com'),
(1001, 'lick of death', 'A100', 'A100', '45 church dr.', 'Niagara Falls', 't5e 2w3', 2, '905-657-2218', '', '', 1, '1975-03-28', 'are u daring to dwell into the unknown,and face consequences....', '100@ashleymadison.com'),
(1002, 'pear', 'C130', 'C130', '529', 'Dundas', 'm2k1t6', 2, '9056235469', '', '', 1, '1958-10-05', 'swim with the current', '200@ashleymadison.com'),
(1003, 'Yummy', 'B121', 'B121', '99 port rall street', 'London', 'n7j 8t6', 2, '519-524-9333', '', '', 1, '1976-09-25', 'just can''t get enough!', '400@ashleymadison.com'),
(1004, 'NiceguyToronto', 'Ali', 'Flogol', '24 leith hill rd', 'Toronto', 'm2j1z3', 2, '4168856544', '', '4168856544', 2, '1975-05-20', 'Have you ever had a bilnd date?', 'doyouknowali@hotmail.com'),
(1005, 'tiger', 'B122', 'B122', '678 beatty road', 'Ottawa', 'n7y 3t8', 2, '613-966-3811', '', '', 1, '1967-07-18', 'on the prowl', '400@ashleymadison.com'),
(1006, 'marlo', 'Hazel', 'Bitterman', '64 avenue rd', 'Nepean', 'K2G 9Y3', 2, '519 555 6666', '', '', 1, '1961-05-23', 'Are you ready To give me what I WANT?', '600@ashleymadison.com'),
(1007, 'Shy', 'B123', 'B123', '8 rue larme', 'Hull', 'n6y 7r5', 2, '514-366-7893', '', '', 1, '1964-01-22', 'me, you, and ..........', '400@ashleymadison.com'),
(1008, 'Belle', 'B124', 'B124', '868 hesp drive', 'Ottawa', 'n6v 4w8', 2, '613-555-1666', '', '', 1, '1974-01-19', 'something new for 2002', '400@ashleymadison.com'),
(1009, 'hornymike', 'Mike', 'Stevens', '123oak st', 'Toronto', 'm1m1l9', 2, '416 2817653', '', '', 2, '1975-07-29', 'looking for adventure', 'mike_bushido@hotmail.com'),
(1010, 'bunny4U', 'Ester', 'Forman', '8596 church', 'Ottawa', 'K2P 9T9', 2, '647 233 2222', '', '', 1, '1965-06-12', 'wanna to pet me?', '600@ashleymadison.com'),
(1011, 'belly dancer', 'B125', 'B125', '7 karen drive', 'Nepean', 'b5r 3t7', 2, '613-566-8812', '', '', 1, '1969-12-06', 'not afraid to live for today', '400@ashleymadison.com'),
(1012, 'waler', 'D', 'Simpson', '181 bay street', 'Toronto', 'm5j2t3', 2, '416-507 2330', '', '', 2, '1961-02-08', 'rascal', 'dsimpson@haywood.com'),
(1013, 'renee', 'Regan', 'Tessis', '65 willowbank rd', 'Kanata', 'K2G 4L4', 2, '890 656 6666', '', '', 1, '1963-11-06', 'sensual/casual/sexual/fun', '600@ashleymadison.com'),
(1014, 'Captive', 'D', 'M', '5', 'Toronto', 'l', 2, '9', '', '', 2, '1963-10-03', 'Creatively Compliant', 'darren@morgenstern.com'),
(1016, 'Shaky', 'David', 'Monaco', '4662 Crosscreek crt.', 'Mississauga', 'l5v 1g5', 2, '905 890-5814', '', '416 878-8358', 2, '1964-12-16', 'Easy going man', 'monacodavid@hotmail.com'),
(1017, 'GQmale', 'Peter', 'Blake', '19 Broadfield Dr.', 'Toronto', 'M9C 1L4', 2, '$16-813-8339', '', '', 2, '1971-02-21', 'Very hot male looking for discret sensual fun', 'intouch00@yahoo.ca'),
(1018, 'muffy', 'J', 'Henderson', '120 Ontario Rd', 'Brampton', 'L6S 1V5', 2, '416-251-3698', '', '', 2, '1967-04-04', 'a', 'putze@hotmail.com'),
(1019, 'sxslave', 'Mike', 'Stevens', '123 oak rd', 'Toronto', 'm17k8i', 2, '2621425', '', '', 2, '1975-07-29', 'i want you', 'sxslavemike@netscape.net'),
(1020, 'FunDave', 'William', 'Stewart', '1045 Rangeview', 'Mississauga', 'L5E 1H2', 2, '905 453 0070', '', '905 467 2088', 2, '1961-06-20', 'Hi I am Fun I am Descreet I am Safe', 'couplfun@hotmail.com'),
(1021, 'rick4ur', 'Rick', 'Morales', '210 woolner ave.', 'Toronto', 'm6n 1y6', 2, '416 7181421', '', '', 2, '1977-04-09', 'for ladies only', 'rick4ur@excite.com'),
(1022, 'CEO', 'Dan', 'Kerrigan', '211 C Street, NE', 'Washington', '20002', 2, '202-258-5455', '', '', 2, '1956-07-01', 'CEO WHO TRAVELS FIRST CLASS...', 'daniel.kerrigan@att.net'),
(1023, 'Ontman', 'Tim', 'Rice', 'King St', 'Kitchener', 'N2G 1G4', 2, '885.1495', '', '897-7423', 2, '1966-01-23', 'Lets respect eachother and have a blast!!!', 'ont_man01@hotmail.com'),
(1024, 'tie', 'Rob', 'Ferguson', '179 john street', 'Toronto', 'm6s 4s2', 2, '416-318-5010', '', '905-781-9964', 2, '1962-04-14', 'lots of energy', 'rferguso@starbucks.com'),
(1025, 'willo', 'Will', 'Maly', '201 oakpark blvd', 'Whitby', 'l1n3w1', 2, '905 4320192', '', '905 4320192', 2, '1975-01-06', 'loves to tease', 'ytrygm@aol.com'),
(1026, 'mannybaby', 'Manny', 'Shapiro', '1700 Woodbine Ave', 'Markham', 'M3T1A4', 2, '4158550', '4158210', '', 2, '1971-05-01', 'Get it while it''s hot.', 'manoman74@hotmail.com'),
(1027, 'hot pants', 'Martine', 'Shapiro', '1700 Woodbine Ave', 'Markham', 'M4E1A3', 2, '4158250', '', '4158500', 1, '1974-05-01', 'The hotter, the better!', 'ohmartine@hotmail.com'),
(1028, 'fever', 'Emmy', 'Shapiro', '1700 Woodbine Ave', 'Markham', 'm4e1a3', 2, '4150000', '', '', 1, '1974-05-01', 'Give me fever!', 'ohmartine@hotmail.com'),
(1029, 'dentwiz9', 'Christena', 'Donnelly', '149 River Glen Blvd.', 'Oakville', 'L6H 5Z5', 2, '905-257-3765', '', '', 1, '1955-12-21', 'Lady in Lace', 'christenaserkies@msn.com'),
(1030, 'gogama', 'David', 'Goulet', '7186 freeman street', 'Niagara Falls', 'l3e 5v7', 2, '905 374 8923', '', '', 2, '1963-09-13', 'afternoon delight', 'goulets@caninet.com'),
(1031, 'cableguy', 'John', 'Woods', '6 lane dr', 'Massena', '13662', 2, '769-9870', '', '', 2, '1967-07-13', 'seeking mature openmnded ladies', 'titan162@hotmail.com'),
(1032, 'Johnnie Sunshine', 'Trevor', 'Jarrett', 'PO Box 11', 'Ottawa', 'K1G 6A1', 2, '905 584-5507', '905 793-9700', '647 224-3636', 2, '1968-07-02', 'Friends and lovers', 'chuckliepooh@hotmail.com'),
(1033, 'focaloca', 'Claudio', 'Luna-cordoba', '40 cameo crescent', 'Toronto', 'm6n2k5', 2, '4162540516', '4161111111', '4162540516', 2, '1974-10-17', 'Hola! How are we today.', 'bostero23@yahoo.ca'),
(1034, 'toad', 'Todd', 'Bedwell', '2050 speers rd #1', 'Oakville', 'l6l 1s3', 2, '416 890-8633', '', '416 890-8633', 2, '1969-01-04', 'talented hands', 'snowsuitboy@yahoo.ca'),
(1035, 'wasser00no  game', 'Peter', 'No  Way', 'no  way', 'Mississauga', 'l5lghi', 2, 'none', '', '416 316 2000', 2, '1962-07-08', 'no   HEAD GAMES  HERE', 'wasser00@attcanada.ca'),
(1036, 'PoolBoy19', 'John', 'Macfarlane', '211 Main St.', 'Vancouver', 'v6e 1v9', 2, '(604) 254-8811', '(604) 608-5629', '(604) 733-2125', 2, '1967-12-08', 'Looking for Fun', 'poolboy2k2@hotmail.com'),
(1037, 'twinkletoes', 'A101', 'A101', '54 clearwater blvd', 'Toronto', 'k7j-5f5', 2, '416-890-3618', '', '', 1, '1979-09-26', 'cum fly with me...into the unknown....', '100@ashleymadison.com'),
(1038, 'crunchy', 'C131', 'C131', '666', 'Ottawa', 'm2n5t2', 2, '6135487932', '', '', 1, '1965-06-11', 'my aim to please and be pleased', '200@ashleymadison.com'),
(1039, 'indy', 'C132', 'C132', '555', 'Nepean', 'm2j1l8', 2, '6132459852', '', '', 1, '1969-09-05', 'fun, fun, fun', '200@ashleymadison.com'),
(1040, 'dynamite', 'C133', 'C133', '222', 'Hull', 'm2j1l8', 2, '4185236985', '', '', 1, '1973-05-18', 'lets make the experience one to remember', '200@ashleymadison.com'),
(1041, 'wunderfull', 'B126', 'B126', '675 grassriff road', 'Lethbridge', 'n5y 3r7', 2, '403-448-9777', '', '', 1, '1957-08-26', '* sensual * warm * sincere * exciting *', '400@ashleymadison.com'),
(1042, 'chantily', 'C134', 'C134', '213', 'Kanata', 'm2j1f3', 2, '9056321478', '', '', 1, '1968-06-27', 'can you tame me?', '200@ashleymadison.com'),
(1043, 'looker', 'A102', 'A102', '4 nugget rd', 'Toronto', 'h5f-4f4', 2, '416-783-2378', '', '', 1, '1977-10-27', 'waiting to be swept off my feet........', '100@ashleymadison.com'),
(1044, 'miracle whip', 'Sharon', 'John', '100', 'Milton', 'm2c1l8', 2, '9056523147', '', '', 1, '1970-01-22', 'wanna try something new', '200@ashleymadison.com'),
(1045, 'luna', 'pam', 'rich', '912 rue blanc', 'Los Angeles', '90210', 2, '310-666-7424', '', '', 1, '1971-01-23', 'looking for fun and romance', 'prich@dbl.com'),
(1046, 'reggie', 'Sharon', 'John', '444', 'North York', 'm2p1l8', 2, '4169875236', '', '', 1, '1969-04-12', 'young and restless', '200@ashleymadison.com'),
(1047, 'amazon', 'B128', 'B128', '6521 redgrove street', 'Calgary', 'b5t 4r4', 2, '403-665-1212', '', '', 1, '1959-10-30', 'lost... can you help me find my way', '400@ashleymadison.com'),
(1048, 'ladyluck69', 'A103', 'A103', '123 muncie rd', 'Owen Sound', 'm7w-s2q', 2, '512-847-3688', '', '', 1, '1969-04-23', 'love to feel a man''s tongue run down my......', '100@ashleymadison.com'),
(1049, 'pookala', 'C137', 'C137', '258', 'St Catherines', 'm2j1c5', 2, '9056324582', '', '', 1, '1964-12-05', 'attached but allowed to play', '200@ashleymadison.com'),
(1050, 'aqua', 'C138', 'C138', '429', 'Calgary', 'm2p1r5', 2, '9054632157', '', '', 1, '1956-07-28', 'weakness for younger men', '200@ashleymadison.com'),
(1051, 'Shooting Star', 'B129', 'B129', '8 rural road', 'Nepean', 'n6t 3e4', 2, '519-566-1193', '', '', 1, '1961-05-03', 'what catches your eye??', '400@ashleymadison.com'),
(1052, 'baby blu', 'C139', 'C139', '825', 'Red Deer', 'm2r1t2', 2, '9056321456', '', '', 1, '1971-07-23', 'looking for a sugar daddy', '200@ashleymadison.com'),
(1053, 'bubbles6', 'A104', 'A104', '999  troutbrook dr', 'Barrie', 'm3s-4s3', 2, '905-311-8906', '', '', 1, '1960-07-30', 'do u love a warm bath and lots of bubbles?', '100@ashleymadison.com'),
(1054, 'tomboy', 'A105', 'A105', '3 cross blvd', 'Richmond Hill', 'h6f-4w3', 2, '905-334-1099', '', '', 1, '1968-06-11', 'need a man who can handle my rough side...', '100@ashleymadison.com'),
(1055, 'tulip', 'C140', 'C140', '639', 'Lethbridge', 'm2y1t3', 2, '9053214568', '', '', 1, '1966-11-06', 'Free your mind first', '200@ashleymadison.com'),
(1056, 'Chikita', 'B130', 'B130', '26 stopple drive', 'Red Deer', 'v3r 2w2', 2, '403-995-9332', '', '', 1, '1965-06-08', 'adventurous, openminded playmate sought', '400@ashleymadison.com'),
(1057, 'juggles', 'A106', 'A106', '334 dan ave', 'Toronto', 'k6k-f5f', 2, '905-346-9800', '', '', 1, '1974-01-20', '"Is there something that stands out in this picture?', '100@ashleymadison.com'),
(1058, 'lipservice', 'A107', 'A107', '2 bows', 'Timmons', 'f4e-w2w', 2, '905-444-9087', '', '', 1, '1963-07-28', 'let me run my lips all over your body..', '100@ashleymadison.com'),
(1059, 'lollalita', 'A108', 'A108', '100 union blv', 'Pickering', 'm8-6f4', 2, '905-333-9999', '', '', 1, '1981-05-17', 'if your looking?  i have a job openning for u..must be good with', '100@ashleymadison.com'),
(1060, 'crazygirl', 'A109', 'A109', '566 samsung ave', 'Stratford', 'h6t-5r5', 2, '905-954-7612', '', '', 1, '1975-06-27', 'packed with perfection.........', '100@ashleymadison.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE IF NOT EXISTS `ubicaciones` (
`idUbicacion` int(10) unsigned NOT NULL,
  `idPais` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bandera` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alias`
--
ALTER TABLE `alias`
 ADD PRIMARY KEY (`idAlias`), ADD UNIQUE KEY `alias_correo_unique` (`correo`);

--
-- Indices de la tabla `amores`
--
ALTER TABLE `amores`
 ADD PRIMARY KEY (`idAmor`), ADD KEY `amores_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `apodos_publicos`
--
ALTER TABLE `apodos_publicos`
 ADD PRIMARY KEY (`idApodoPublico`), ADD KEY `apodos_publicos_idperfil_foreign` (`idPerfil`), ADD KEY `apodos_publicos_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
 ADD PRIMARY KEY (`idComentario`), ADD KEY `comentarios_idperfil_foreign` (`idPerfil`), ADD KEY `comentarios_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `comentarios_fotos`
--
ALTER TABLE `comentarios_fotos`
 ADD PRIMARY KEY (`idComentarioFoto`), ADD KEY `comentarios_fotos_idfotopost_foreign` (`idFotoPost`), ADD KEY `comentarios_fotos_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `comentarios_medias`
--
ALTER TABLE `comentarios_medias`
 ADD PRIMARY KEY (`idComentarioMedia`), ADD KEY `comentarios_medias_idmedia_foreign` (`idMedia`), ADD KEY `comentarios_medias_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `comentarios_posts`
--
ALTER TABLE `comentarios_posts`
 ADD PRIMARY KEY (`idComentarioPost`), ADD KEY `comentarios_posts_idpost_foreign` (`idPost`), ADD KEY `comentarios_posts_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `comentarios_subfotos`
--
ALTER TABLE `comentarios_subfotos`
 ADD PRIMARY KEY (`idComentarioSubfoto`), ADD KEY `comentarios_subfotos_idsubcomentariofoto_foreign` (`idSubcomentarioFoto`), ADD KEY `comentarios_subfotos_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `confiables`
--
ALTER TABLE `confiables`
 ADD PRIMARY KEY (`idConfiable`), ADD KEY `confiables_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
 ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `fotos_posts`
--
ALTER TABLE `fotos_posts`
 ADD PRIMARY KEY (`idFotoPost`), ADD KEY `fotos_posts_idpost_foreign` (`idPost`);

--
-- Indices de la tabla `fotos_publicas`
--
ALTER TABLE `fotos_publicas`
 ADD PRIMARY KEY (`idNombrePublico`), ADD KEY `fotos_publicas_idperfil_foreign` (`idPerfil`), ADD KEY `fotos_publicas_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `mascaras`
--
ALTER TABLE `mascaras`
 ADD PRIMARY KEY (`idMascara`);

--
-- Indices de la tabla `mascaras_perfiles`
--
ALTER TABLE `mascaras_perfiles`
 ADD PRIMARY KEY (`idMascaraPerfil`), ADD KEY `mascaras_perfiles_idperfil_foreign` (`idPerfil`), ADD KEY `mascaras_perfiles_idmascara_foreign` (`idMascara`);

--
-- Indices de la tabla `mascaras_publicas`
--
ALTER TABLE `mascaras_publicas`
 ADD PRIMARY KEY (`idMascaraPublica`), ADD KEY `mascaras_publicas_idperfil_foreign` (`idPerfil`), ADD KEY `mascaras_publicas_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `medias`
--
ALTER TABLE `medias`
 ADD PRIMARY KEY (`idMedia`), ADD KEY `medias_idperfil_foreign` (`idPerfil`);

--
-- Indices de la tabla `nombres_publicos`
--
ALTER TABLE `nombres_publicos`
 ADD PRIMARY KEY (`idNombrePublico`), ADD KEY `nombres_publicos_idperfil_foreign` (`idPerfil`), ADD KEY `nombres_publicos_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `odio_amor`
--
ALTER TABLE `odio_amor`
 ADD PRIMARY KEY (`idVoto`), ADD KEY `idPerfil` (`idPerfil`,`idAlias`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
 ADD PRIMARY KEY (`idPais`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
 ADD PRIMARY KEY (`idPerfil`), ADD KEY `perfiles_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `perfiles_publicos`
--
ALTER TABLE `perfiles_publicos`
 ADD PRIMARY KEY (`idPerfilPublico`), ADD KEY `perfiles_publicos_idperfilbase_foreign` (`idPerfilBase`), ADD KEY `perfiles_publicos_idalias_foreign` (`idAlias`), ADD KEY `perfiles_publicos_idperfilrelacion_foreign` (`idPerfilRelacion`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`idPost`), ADD KEY `posts_idalias_foreign` (`idAlias`), ADD KEY `posts_idperfil_foreign` (`idPerfil`);

--
-- Indices de la tabla `ranks`
--
ALTER TABLE `ranks`
 ADD PRIMARY KEY (`idRank`), ADD KEY `ranks_idperfil_foreign` (`idPerfil`), ADD KEY `ranks_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `ranks_fotos`
--
ALTER TABLE `ranks_fotos`
 ADD PRIMARY KEY (`idRank`), ADD KEY `ranks_fotos_idfotopost_foreign` (`idFotoPost`), ADD KEY `ranks_fotos_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `ranks_medias`
--
ALTER TABLE `ranks_medias`
 ADD PRIMARY KEY (`idRankMedia`), ADD KEY `ranks_medias_idmedia_foreign` (`idMedia`), ADD KEY `ranks_medias_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `ranks_perfiles`
--
ALTER TABLE `ranks_perfiles`
 ADD PRIMARY KEY (`idRankPerfil`), ADD KEY `ranks_perfiles_idperfil_foreign` (`idPerfil`), ADD KEY `ranks_perfiles_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `ranks_posts`
--
ALTER TABLE `ranks_posts`
 ADD PRIMARY KEY (`idRank`), ADD KEY `ranks_posts_idpost_foreign` (`idPost`), ADD KEY `ranks_posts_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `ranks_subcomentarios`
--
ALTER TABLE `ranks_subcomentarios`
 ADD PRIMARY KEY (`idRankSubcomentario`), ADD KEY `ranks_subcomentarios_idsubcomentario_foreign` (`idSubcomentario`), ADD KEY `ranks_subcomentarios_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `ranks_subfotos`
--
ALTER TABLE `ranks_subfotos`
 ADD PRIMARY KEY (`idRankSubfoto`), ADD KEY `ranks_subfotos_idsubcomentariofoto_foreign` (`idSubcomentarioFoto`), ADD KEY `ranks_subfotos_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `redes_publicas`
--
ALTER TABLE `redes_publicas`
 ADD PRIMARY KEY (`idRedPublica`), ADD KEY `redes_publicas_idperfil_foreign` (`idPerfil`), ADD KEY `redes_publicas_idalias_foreign` (`idAlias`);

--
-- Indices de la tabla `relaciones`
--
ALTER TABLE `relaciones`
 ADD PRIMARY KEY (`idRelacion`), ADD UNIQUE KEY `relaciones_idperfilbase_idperfilrelacion_unique` (`idPerfilBase`,`idPerfilRelacion`), ADD KEY `relaciones_idperfilrelacion_foreign` (`idPerfilRelacion`);

--
-- Indices de la tabla `subcomentarios`
--
ALTER TABLE `subcomentarios`
 ADD PRIMARY KEY (`idSubcomentario`), ADD KEY `subcomentarios_idalias_foreign` (`idAlias`), ADD KEY `subcomentarios_idpost_foreign` (`idPost`);

--
-- Indices de la tabla `subcomentarios_fotos`
--
ALTER TABLE `subcomentarios_fotos`
 ADD PRIMARY KEY (`idSubcomentarioFoto`), ADD KEY `subcomentarios_fotos_idsubcomentario_foreign` (`idSubcomentario`);

--
-- Indices de la tabla `tcountry`
--
ALTER TABLE `tcountry`
 ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indices de la tabla `tgender`
--
ALTER TABLE `tgender`
 ADD PRIMARY KEY (`GENDER_ID`);

--
-- Indices de la tabla `tpeople`
--
ALTER TABLE `tpeople`
 ADD PRIMARY KEY (`PEOPLE_ID`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
 ADD PRIMARY KEY (`idUbicacion`), ADD KEY `ubicaciones_idpais_foreign` (`idPais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alias`
--
ALTER TABLE `alias`
MODIFY `idAlias` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `amores`
--
ALTER TABLE `amores`
MODIFY `idAmor` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `apodos_publicos`
--
ALTER TABLE `apodos_publicos`
MODIFY `idApodoPublico` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
MODIFY `idComentario` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comentarios_fotos`
--
ALTER TABLE `comentarios_fotos`
MODIFY `idComentarioFoto` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comentarios_medias`
--
ALTER TABLE `comentarios_medias`
MODIFY `idComentarioMedia` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comentarios_posts`
--
ALTER TABLE `comentarios_posts`
MODIFY `idComentarioPost` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comentarios_subfotos`
--
ALTER TABLE `comentarios_subfotos`
MODIFY `idComentarioSubfoto` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `confiables`
--
ALTER TABLE `confiables`
MODIFY `idConfiable` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
MODIFY `idEstado` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `fotos_posts`
--
ALTER TABLE `fotos_posts`
MODIFY `idFotoPost` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `fotos_publicas`
--
ALTER TABLE `fotos_publicas`
MODIFY `idNombrePublico` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `mascaras`
--
ALTER TABLE `mascaras`
MODIFY `idMascara` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `mascaras_perfiles`
--
ALTER TABLE `mascaras_perfiles`
MODIFY `idMascaraPerfil` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mascaras_publicas`
--
ALTER TABLE `mascaras_publicas`
MODIFY `idMascaraPublica` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `medias`
--
ALTER TABLE `medias`
MODIFY `idMedia` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `nombres_publicos`
--
ALTER TABLE `nombres_publicos`
MODIFY `idNombrePublico` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
MODIFY `idPais` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
MODIFY `idPerfil` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `perfiles_publicos`
--
ALTER TABLE `perfiles_publicos`
MODIFY `idPerfilPublico` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
MODIFY `idPost` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT de la tabla `ranks`
--
ALTER TABLE `ranks`
MODIFY `idRank` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ranks_fotos`
--
ALTER TABLE `ranks_fotos`
MODIFY `idRank` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ranks_medias`
--
ALTER TABLE `ranks_medias`
MODIFY `idRankMedia` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ranks_perfiles`
--
ALTER TABLE `ranks_perfiles`
MODIFY `idRankPerfil` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ranks_posts`
--
ALTER TABLE `ranks_posts`
MODIFY `idRank` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ranks_subcomentarios`
--
ALTER TABLE `ranks_subcomentarios`
MODIFY `idRankSubcomentario` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ranks_subfotos`
--
ALTER TABLE `ranks_subfotos`
MODIFY `idRankSubfoto` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `redes_publicas`
--
ALTER TABLE `redes_publicas`
MODIFY `idRedPublica` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `relaciones`
--
ALTER TABLE `relaciones`
MODIFY `idRelacion` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `subcomentarios`
--
ALTER TABLE `subcomentarios`
MODIFY `idSubcomentario` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `subcomentarios_fotos`
--
ALTER TABLE `subcomentarios_fotos`
MODIFY `idSubcomentarioFoto` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
MODIFY `idUbicacion` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amores`
--
ALTER TABLE `amores`
ADD CONSTRAINT `amores_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE;

--
-- Filtros para la tabla `apodos_publicos`
--
ALTER TABLE `apodos_publicos`
ADD CONSTRAINT `apodos_publicos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `apodos_publicos_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
ADD CONSTRAINT `comentarios_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `comentarios_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comentarios_fotos`
--
ALTER TABLE `comentarios_fotos`
ADD CONSTRAINT `comentarios_fotos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `comentarios_fotos_idfotopost_foreign` FOREIGN KEY (`idFotoPost`) REFERENCES `fotos_posts` (`idFotoPost`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comentarios_medias`
--
ALTER TABLE `comentarios_medias`
ADD CONSTRAINT `comentarios_medias_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `comentarios_medias_idmedia_foreign` FOREIGN KEY (`idMedia`) REFERENCES `medias` (`idMedia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comentarios_posts`
--
ALTER TABLE `comentarios_posts`
ADD CONSTRAINT `comentarios_posts_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `comentarios_posts_idpost_foreign` FOREIGN KEY (`idPost`) REFERENCES `posts` (`idPost`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comentarios_subfotos`
--
ALTER TABLE `comentarios_subfotos`
ADD CONSTRAINT `comentarios_subfotos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `comentarios_subfotos_idsubcomentariofoto_foreign` FOREIGN KEY (`idSubcomentarioFoto`) REFERENCES `subcomentarios_fotos` (`idSubcomentarioFoto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `confiables`
--
ALTER TABLE `confiables`
ADD CONSTRAINT `confiables_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE;

--
-- Filtros para la tabla `fotos_posts`
--
ALTER TABLE `fotos_posts`
ADD CONSTRAINT `fotos_posts_idpost_foreign` FOREIGN KEY (`idPost`) REFERENCES `posts` (`idPost`) ON DELETE CASCADE;

--
-- Filtros para la tabla `fotos_publicas`
--
ALTER TABLE `fotos_publicas`
ADD CONSTRAINT `fotos_publicas_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `fotos_publicas_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mascaras_perfiles`
--
ALTER TABLE `mascaras_perfiles`
ADD CONSTRAINT `mascaras_perfiles_idmascara_foreign` FOREIGN KEY (`idMascara`) REFERENCES `mascaras` (`idMascara`) ON DELETE CASCADE,
ADD CONSTRAINT `mascaras_perfiles_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mascaras_publicas`
--
ALTER TABLE `mascaras_publicas`
ADD CONSTRAINT `mascaras_publicas_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `mascaras_publicas_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `medias`
--
ALTER TABLE `medias`
ADD CONSTRAINT `medias_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `nombres_publicos`
--
ALTER TABLE `nombres_publicos`
ADD CONSTRAINT `nombres_publicos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `nombres_publicos_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `perfiles`
--
ALTER TABLE `perfiles`
ADD CONSTRAINT `perfiles_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE;

--
-- Filtros para la tabla `perfiles_publicos`
--
ALTER TABLE `perfiles_publicos`
ADD CONSTRAINT `perfiles_publicos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `perfiles_publicos_idperfilbase_foreign` FOREIGN KEY (`idPerfilBase`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE,
ADD CONSTRAINT `perfiles_publicos_idperfilrelacion_foreign` FOREIGN KEY (`idPerfilRelacion`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `posts_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks`
--
ALTER TABLE `ranks`
ADD CONSTRAINT `ranks_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks_fotos`
--
ALTER TABLE `ranks_fotos`
ADD CONSTRAINT `ranks_fotos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_fotos_idfotopost_foreign` FOREIGN KEY (`idFotoPost`) REFERENCES `fotos_posts` (`idFotoPost`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks_medias`
--
ALTER TABLE `ranks_medias`
ADD CONSTRAINT `ranks_medias_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_medias_idmedia_foreign` FOREIGN KEY (`idMedia`) REFERENCES `medias` (`idMedia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks_perfiles`
--
ALTER TABLE `ranks_perfiles`
ADD CONSTRAINT `ranks_perfiles_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_perfiles_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks_posts`
--
ALTER TABLE `ranks_posts`
ADD CONSTRAINT `ranks_posts_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_posts_idpost_foreign` FOREIGN KEY (`idPost`) REFERENCES `posts` (`idPost`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks_subcomentarios`
--
ALTER TABLE `ranks_subcomentarios`
ADD CONSTRAINT `ranks_subcomentarios_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_subcomentarios_idsubcomentario_foreign` FOREIGN KEY (`idSubcomentario`) REFERENCES `subcomentarios` (`idSubcomentario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ranks_subfotos`
--
ALTER TABLE `ranks_subfotos`
ADD CONSTRAINT `ranks_subfotos_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `ranks_subfotos_idsubcomentariofoto_foreign` FOREIGN KEY (`idSubcomentarioFoto`) REFERENCES `subcomentarios_fotos` (`idSubcomentarioFoto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `redes_publicas`
--
ALTER TABLE `redes_publicas`
ADD CONSTRAINT `redes_publicas_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `redes_publicas_idperfil_foreign` FOREIGN KEY (`idPerfil`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `relaciones`
--
ALTER TABLE `relaciones`
ADD CONSTRAINT `relaciones_idperfilbase_foreign` FOREIGN KEY (`idPerfilBase`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE,
ADD CONSTRAINT `relaciones_idperfilrelacion_foreign` FOREIGN KEY (`idPerfilRelacion`) REFERENCES `perfiles` (`idPerfil`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcomentarios`
--
ALTER TABLE `subcomentarios`
ADD CONSTRAINT `subcomentarios_idalias_foreign` FOREIGN KEY (`idAlias`) REFERENCES `alias` (`idAlias`) ON DELETE CASCADE,
ADD CONSTRAINT `subcomentarios_idpost_foreign` FOREIGN KEY (`idPost`) REFERENCES `posts` (`idPost`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcomentarios_fotos`
--
ALTER TABLE `subcomentarios_fotos`
ADD CONSTRAINT `subcomentarios_fotos_idsubcomentario_foreign` FOREIGN KEY (`idSubcomentario`) REFERENCES `subcomentarios` (`idSubcomentario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
ADD CONSTRAINT `ubicaciones_idpais_foreign` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idPais`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
