-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Май 20 2020 г., 20:17
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
-- Структура таблицы `talgoclient`
--

CREATE TABLE `talgoclient` (
  `id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `talgoclient`
--

INSERT INTO `talgoclient` (`id`, `name`, `from_city`, `to_city`) VALUES
(1, 'Sam Smith', 'Nur-Sultan', 'Moscow'),
(2, 'Gaukhar Almaz', 'Nur-Sultan', 'Shymkent'),
(3, 'Bob Wabster', 'Aktau', 'Sankt Peterburg'),
(4, 'Almat Kurimbayev', 'Moscow', 'Almaty'),
(5, '', 'Freddiee', 'Moscow'),
(6, '', 'Hulia', 'Moscow'),
(7, '', 'Marara', 'Moscow'),
(8, '', 'njnj njnj', 'mkmk'),
(9, 'Polly Click', 'Almaty', 'Kiev'),
(10, 'Lady', 'Almaty', 'Taraz');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `talgoclient`
--
ALTER TABLE `talgoclient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `talgoclient`
--
ALTER TABLE `talgoclient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
