-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Май 20 2020 г., 20:16
-- Версия сервера: 8.0.18
-- Версия PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clients`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `Whole_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FromCity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ToCity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `Whole_Name`, `FromCity`, `ToCity`) VALUES
(1, 'Sam Packet', 'Nur-Sultan', 'Almaty'),
(2, 'Lisa Cooper', 'Nur-Sultan', 'Taldykorgan'),
(3, 'Maksat Khamit', 'Nur-Sultan', 'Shymkent'),
(4, 'Azamat Nagi', 'Shymkent', 'Kokshetau'),
(21, 'Marzhan Nuraly', 'Shymkent', 'Nur-Sultan'),
(22, 'Altyn Nagy', 'Almaty', 'Semey'),
(23, 'Marzhan Nuraly', 'Francisco', 'Los Angeles'),
(24, 'Juliya Rose', 'Aktau', 'Shymkent'),
(25, 'Jonathon Bennet', 'Almaty', 'Oskemen'),
(26, 'Johnny', 'Pavlodar', 'Astana'),
(27, 'hjhhj', 'hjh', 'jkj'),
(28, 'hola', 'hawai', 'los'),
(29, 'Ailin Nuraly', 'Nur-Sultan', 'Almaty'),
(30, 'bbb', 'nmn', 'mmm'),
(31, '', 'Jennifer', 'Moscow'),
(32, '10000', 'Almaty', 'Astana'),
(33, 'Murat Azimkhan', 'Shymkent ', 'Taraz'),
(34, '', 'Las Vegas', 'Miami'),
(35, 'Ainur Egemberdy', 'Shymkent', 'Almaty'),
(36, 'Galiya', 'Egemberdy', 'Nur-Sultan'),
(37, 'Saniya Akhmet', 'Pavlodar', 'Karaganda'),
(38, 'Anastasia Kim', 'Almaty', 'Oral'),
(39, 'Marlen Nuraly', 'Nur-Sultan', 'Almaty'),
(40, '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
