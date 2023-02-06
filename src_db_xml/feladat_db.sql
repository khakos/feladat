-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 06. 21:24
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `feladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `files`
--

INSERT INTO `files` (`id`, `name`, `file_path`, `created_at`, `updated_at`) VALUES
(1, '1675680072_adatok.xml', '/storage/uploads/1675680072_adatok.xml', '2023-02-06 09:41:12', '2023-02-06 09:41:12'),
(2, '1675697195_adatok.xml', '/storage/uploads/1675697195_adatok.xml', '2023-02-06 14:26:35', '2023-02-06 14:26:35'),
(3, '1675697320_adatok.xml', '/storage/uploads/1675697319_adatok.xml', '2023-02-06 14:28:40', '2023-02-06 14:28:40'),
(4, '1675697440_adatok.xml', '/storage/uploads/1675697440_adatok.xml', '2023-02-06 14:30:40', '2023-02-06 14:30:40'),
(5, '1675697463_adatok.xml', '/storage/uploads/1675697463_adatok.xml', '2023-02-06 14:31:03', '2023-02-06 14:31:03'),
(6, '1675697608_adatok.xml', '/storage/uploads/1675697608_adatok.xml', '2023-02-06 14:33:28', '2023-02-06 14:33:28'),
(7, '1675698192_adatok.xml', '/storage/uploads/1675698192_adatok.xml', '2023-02-06 14:43:12', '2023-02-06 14:43:12'),
(8, '1675698292_adatok.xml', '/storage/uploads/1675698292_adatok.xml', '2023-02-06 14:44:52', '2023-02-06 14:44:52'),
(9, '1675699232_adatok.xml', '/storage/uploads/1675699232_adatok.xml', '2023-02-06 15:00:32', '2023-02-06 15:00:32'),
(10, '1675699271_adatok.xml', '/storage/uploads/1675699271_adatok.xml', '2023-02-06 15:01:11', '2023-02-06 15:01:11'),
(11, '1675700381_adatok.xml', '/storage/uploads/1675700381_adatok.xml', '2023-02-06 15:19:41', '2023-02-06 15:19:41'),
(12, '1675700429_adatok.xml', '/storage/uploads/1675700429_adatok.xml', '2023-02-06 15:20:29', '2023-02-06 15:20:29'),
(13, '1675700521_adatok.xml', '/storage/uploads/1675700521_adatok.xml', '2023-02-06 15:22:01', '2023-02-06 15:22:01'),
(14, '1675700927_adatok.xml', '/storage/uploads/1675700927_adatok.xml', '2023-02-06 15:28:47', '2023-02-06 15:28:47'),
(15, '1675701526_adatok.xml', '/storage/uploads/1675701526_adatok.xml', '2023-02-06 15:38:46', '2023-02-06 15:38:46'),
(16, '1675705247_adatok.xml', '/storage/uploads/1675705247_adatok.xml', '2023-02-06 16:40:47', '2023-02-06 16:40:47'),
(17, '1675705351_adatok.xml', '/storage/uploads/1675705351_adatok.xml', '2023-02-06 16:42:31', '2023-02-06 16:42:31'),
(18, '1675705515_adatok.xml', '/storage/uploads/1675705515_adatok.xml', '2023-02-06 16:45:15', '2023-02-06 16:45:15'),
(19, '1675705803_adatok.xml', '/storage/uploads/1675705803_adatok.xml', '2023-02-06 16:50:04', '2023-02-06 16:50:04'),
(20, '1675705824_adatok.xml', '/storage/uploads/1675705824_adatok.xml', '2023-02-06 16:50:24', '2023-02-06 16:50:24'),
(21, '1675706311_adatok.xml', '/storage/uploads/1675706311_adatok.xml', '2023-02-06 16:58:31', '2023-02-06 16:58:31'),
(22, '1675706945_adatok.xml', '/storage/uploads/1675706945_adatok.xml', '2023-02-06 17:09:05', '2023-02-06 17:09:05'),
(23, '1675707033_adatok.xml', '/storage/uploads/1675707033_adatok.xml', '2023-02-06 17:10:33', '2023-02-06 17:10:33'),
(24, '1675707123_adatok.xml', '/storage/uploads/1675707123_adatok.xml', '2023-02-06 17:12:03', '2023-02-06 17:12:03'),
(25, '1675707306_adatok.xml', '/storage/uploads/1675707306_adatok.xml', '2023-02-06 17:15:06', '2023-02-06 17:15:06'),
(26, '1675714495_adatok.xml', '/storage/uploads/1675714495_adatok.xml', '2023-02-06 19:14:55', '2023-02-06 19:14:55');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `esemeny` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `logs`
--

INSERT INTO `logs` (`log_id`, `datum`, `esemeny`) VALUES
(1, '2023-02-06 18:12:03', 'Sikertelen XML import: Ügyvezető Mihály'),
(2, '2023-02-06 18:12:03', 'Sikeres XML import: Titkár Béla'),
(3, '2023-02-06 18:12:03', 'Sikeres XML import: Titkár Ferenc'),
(4, '2023-02-06 18:12:03', 'Sikeres XML import: Fejlesztő Gábor'),
(5, '2023-02-06 18:12:03', 'Sikeres XML import: Futár Géza'),
(6, '2023-02-06 18:15:06', 'Sikertelen XML import: Ügyvezető Mihály'),
(7, '2023-02-06 18:15:06', 'Sikertelen XML import: Titkár Béla'),
(8, '2023-02-06 18:15:06', 'Sikertelen XML import: Titkár Ferenc'),
(9, '2023-02-06 18:15:06', 'Sikertelen XML import: Fejlesztő Gábor'),
(10, '2023-02-06 18:15:06', 'Sikertelen XML import: Futár Géza'),
(11, '2023-02-06 20:14:55', 'Sikertelen XML import: Ügyvezető Mihály'),
(12, '2023-02-06 20:14:55', 'Sikertelen XML import: Titkár Béla'),
(13, '2023-02-06 20:14:55', 'Sikertelen XML import: Titkár Ferenc'),
(14, '2023-02-06 20:14:55', 'Sikertelen XML import: Fejlesztő Gábor'),
(15, '2023-02-06 20:14:55', 'Sikertelen XML import: Futár Géza');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `persons`
--

CREATE TABLE `persons` (
  `person_id` int(11) NOT NULL,
  `teljesnev` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adoazonositojel` int(11) NOT NULL,
  `azonosito` int(11) NOT NULL,
  `egyeb_id` int(11) NOT NULL,
  `belepes` date NOT NULL,
  `kilepes` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `persons`
--

INSERT INTO `persons` (`person_id`, `teljesnev`, `email`, `adoazonositojel`, `azonosito`, `egyeb_id`, `belepes`, `kilepes`) VALUES
(1, 'Ügyvezető Mihály', 'ugyvezeto.mihaly@gmail.com', 778899112, 1, 1, '2015-09-08', '2021-09-08'),
(19, 'Titkár Béla', 'titkar.bela@gmail.com', 578699162, 2, 2, '2016-03-08', '2022-06-08'),
(20, 'Titkár Ferenc', 'titkar.ferenc@gmail.com', 273854118, 3, 3, '2019-09-02', '2023-01-15'),
(21, 'Fejlesztő Gábor', 'fejleszto.gabor@gmail.com', 1488559162, 4, 4, '2019-05-08', '2020-05-08'),
(22, 'Futár Géza', 'futar.geza@gmail.com', 113698312, 5, 5, '2015-01-01', '2016-06-02');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- A tábla indexei `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `adoazonositojel` (`adoazonositojel`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT a táblához `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `persons`
--
ALTER TABLE `persons`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
