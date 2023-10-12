-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2023 a las 01:57:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_movies`
--
CREATE DATABASE IF NOT EXISTS `db_movies` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_movies`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(35) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `studio` varchar(21) DEFAULT NULL,
  `audience_score` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `genre`, `studio`, `audience_score`, `year`) VALUES
(1, 'Zack and Miri Make a Porno', 'Romance', 'The Weinstein Company', 70, 2008),
(2, 'Youth in Revolt', 'Comedy', 'The Weinstein Company', 52, 2010),
(3, 'You Will Meet a Tall Dark Stranger', 'Comedy', 'Independent', 35, 2010),
(4, 'When in Rome', 'Comedy', 'Disney', 44, 2010),
(5, 'What Happens in Vegas', 'Comedy', 'Fox', 72, 2008),
(6, 'Water For Elephants', 'Drama', '20th Century Fox', 72, 2011),
(7, 'WALL-E', 'Animation', 'Disney', 89, 2008),
(8, 'Waitress', 'Romance', 'Independent', 67, 2007),
(9, 'Waiting For Forever', 'Romance', 'Independent', 53, 2011),
(10, 'Valentine\'s Day', 'Comedy', 'Warner Bros.', 54, 2010),
(11, 'Tyler Perry\'s Why Did I get Married', 'Romance', 'Independent', 47, 2007),
(12, 'Twilight: Breaking Dawn', 'Romance', 'Independent', 68, 2011),
(13, 'Twilight', 'Romance', 'Summit', 82, 2008),
(14, 'The Ugly Truth', 'Comedy', 'Independent', 68, 2009),
(15, 'The Twilight Saga: New Moon', 'Drama', 'Summit', 78, 2009),
(16, 'The Time Traveler\'s Wife', 'Drama', 'Paramount', 65, 2009),
(17, 'The Proposal', 'Comedy', 'Disney', 74, 2009),
(18, 'The Invention of Lying', 'Comedy', 'Warner Bros.', 47, 2009),
(19, 'The Heartbreak Kid', 'Comedy', 'Paramount', 41, 2007),
(20, 'The Duchess', 'Drama', 'Paramount', 68, 2008),
(21, 'The Curious Case of Benjamin Button', 'Fantasy', 'Warner Bros.', 81, 2008),
(22, 'The Back-up Plan', 'Comedy', 'CBS', 47, 2010),
(23, 'Tangled', 'Animation', 'Disney', 88, 2010),
(24, 'Something Borrowed', 'Romance', 'Independent', 48, 2011),
(25, 'She\'s Out of My League', 'Comedy', 'Paramount', 60, 2010),
(26, 'Sex and the City Two', 'Comedy', 'Warner Bros.', 49, 2010),
(27, 'Sex and the City 2', 'Comedy', 'Warner Bros.', 49, 2010),
(28, 'Sex and the City', 'Comedy', 'Warner Bros.', 81, 2008),
(29, 'Remember Me', 'Drama', 'Summit', 70, 2010),
(30, 'Rachel Getting Married', 'Drama', 'Independent', 61, 2008),
(31, 'Penelope', 'Comedy', 'Summit', 74, 2008),
(32, 'P.S. I Love You', 'Romance', 'Independent', 82, 2007),
(33, 'Over Her Dead Body', 'Comedy', 'New Line', 47, 2008),
(34, 'Our Family Wedding', 'Comedy', 'Independent', 49, 2010),
(35, 'One Day', 'Romance', 'Independent', 54, 2011),
(36, 'Not Easily Broken', 'Drama', 'Independent', 66, 2009),
(37, 'No Reservations', 'Comedy', 'Warner Bros.', 64, 2007),
(38, 'Nick and Norah\'s Infinite Playlist', 'Comedy', 'Sony', 67, 2008),
(39, 'New Year\'s Eve', 'Romance', 'Warner Bros.', 48, 2011),
(40, 'My Week with Marilyn', 'Drama', 'The Weinstein Company', 84, 2011),
(41, 'Music and Lyrics', 'Romance', 'Warner Bros.', 70, 2007),
(42, 'Monte Carlo', 'Romance', '20th Century Fox', 50, 2011),
(43, 'Miss Pettigrew Lives for a Day', 'Comedy', 'Independent', 70, 2008),
(44, 'Midnight in Paris', 'Romence', 'Sony', 84, 2011),
(45, 'Marley and Me', 'Comedy', 'Fox', 77, 2008),
(46, 'Mamma Mia!', 'Comedy', 'Universal', 76, 2008),
(47, 'Mamma Mia!', 'Comedy', 'Universal', 76, 2008),
(48, 'Made of Honor', 'Comdy', 'Sony', 61, 2008),
(49, 'Love Happens', 'Drama', 'Universal', 40, 2009),
(50, 'Love & Other Drugs', 'Comedy', 'Fox', 55, 2010),
(51, 'Life as We Know It', 'Comedy', 'Independent', 62, 2010),
(52, 'License to Wed', 'Comedy', 'Warner Bros.', 55, 2007),
(53, 'Letters to Juliet', 'Comedy', 'Summit', 62, 2010),
(54, 'Leap Year', 'Comedy', 'Universal', 49, 2010),
(55, 'Knocked Up', 'Comedy', 'Universal', 83, 2007),
(56, 'Killers', 'Action', 'Lionsgate', 45, 2010),
(57, 'Just Wright', 'Comedy', 'Fox', 58, 2010),
(58, 'Jane Eyre', 'Romance', 'Universal', 77, 2011),
(59, 'It\'s Complicated', 'Comedy', 'Universal', 63, 2009),
(60, 'I Love You Phillip Morris', 'Comedy', 'Independent', 57, 2010),
(61, 'High School Musical 3: Senior Year', 'Comedy', 'Disney', 76, 2008),
(62, 'He\'s Just Not That Into You', 'Comedy', 'Warner Bros.', 60, 2009),
(63, 'Good Luck Chuck', 'Comedy', 'Lionsgate', 61, 2007),
(64, 'Going the Distance', 'Comedy', 'Warner Bros.', 56, 2010),
(65, 'Gnomeo and Juliet', 'Animation', 'Disney', 52, 2011),
(66, 'Gnomeo and Juliet', 'Animation', 'Disney', 52, 2011),
(67, 'Ghosts of Girlfriends Past', 'Comedy', 'Warner Bros.', 47, 2009),
(68, 'Four Christmases', 'Comedy', 'Warner Bros.', 52, 2008),
(69, 'Fireproof', 'Drama', 'Independent', 51, 2008),
(70, 'Enchanted', 'Comedy', 'Disney', 80, 2007),
(71, 'Dear John', 'Drama', 'Sony', 66, 2010),
(72, 'Beginners', 'Comedy', 'Independent', 80, 2011),
(73, 'Across the Universe', 'romance', 'Independent', 84, 2007),
(74, 'A Serious Man', 'Drama', 'Universal', 64, 2009),
(75, 'A Dangerous Method', 'Drama', 'Independent', 89, 2011),
(76, '27 Dresses', 'Comedy', 'Fox', 71, 2008),
(77, '(500) Days of Summer', 'comedy', 'Fox', 81, 2009);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
