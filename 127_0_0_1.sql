-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 04 2019 г., 22:01
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `texode`
--
CREATE DATABASE IF NOT EXISTS `texode` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `texode`;

-- --------------------------------------------------------

--
-- Структура таблицы `constants`
--

CREATE TABLE `constants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `constants`
--

INSERT INTO `constants` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cache', 1, NULL, '2019-09-04 15:39:37');

-- --------------------------------------------------------

--
-- Структура таблицы `kurses`
--

CREATE TABLE `kurses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cur_id` int(11) NOT NULL,
  `num_code` int(11) NOT NULL,
  `char_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `kurses`
--

INSERT INTO `kurses` (`id`, `cur_id`, `num_code`, `char_code`, `name`, `rate`, `created_at`, `updated_at`) VALUES
(1, 170, 36, 'AUD', 'Австралийский доллар', 1.44, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(2, 191, 975, 'BGN', 'Болгарский лев', 1.19, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(3, 290, 980, 'UAH', 'Гривен', 8.37, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(4, 291, 208, 'DKK', 'Датских крон', 3.13, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(5, 145, 840, 'USD', 'Доллар США', 2.12, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(6, 292, 978, 'EUR', 'Евро', 2.33, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(7, 293, 985, 'PLN', 'Злотых', 5.38, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(8, 303, 364, 'IRR', 'Иранских риалов', 5.04, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(9, 294, 352, 'ISK', 'Исландских крон', 1.67, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(10, 295, 392, 'JPY', 'Йен', 1.99, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(11, 23, 124, 'CAD', 'Канадский доллар', 1.59, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(12, 304, 156, 'CNY', 'Китайских юаней', 2.96, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(13, 72, 414, 'KWD', 'Кувейтский динар', 6.96, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(14, 296, 498, 'MDL', 'Молдавских леев', 1.18, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(15, 286, 554, 'NZD', 'Новозеландский доллар', 1.34, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(16, 297, 578, 'NOK', 'Норвежских крон', 2.33, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(17, 298, 643, 'RUB', 'Российских рублей', 3.18, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(18, 299, 960, 'XDR', 'СДР (Специальные права заимствования)', 2.88, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(19, 119, 702, 'SGD', 'Сингапурcкий доллар', 1.53, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(20, 300, 417, 'KGS', 'Сомов', 3.02, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(21, 301, 398, 'KZT', 'Тенге', 5.45, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(22, 302, 949, 'TRY', 'Турецких лир', 3.73, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(23, 143, 826, 'GBP', 'Фунт стерлингов', 2.58, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(24, 305, 203, 'CZK', 'Чешских крон', 9.04, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(25, 306, 752, 'SEK', 'Шведских крон', 2.17, '2019-09-04 12:30:17', '2019-09-04 12:30:17'),
(26, 130, 756, 'CHF', 'Швейцарский франк', 2.15, '2019-09-04 12:30:17', '2019-09-04 12:30:17');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_03_184439_create_kurses_table', 1),
(4, '2019_09_04_143326_create_constants_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kurses`
--
ALTER TABLE `kurses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `constants`
--
ALTER TABLE `constants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kurses`
--
ALTER TABLE `kurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
