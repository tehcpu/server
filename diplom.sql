-- phpMyAdmin SQL Dump
-- version 4.3.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 11 2016 г., 18:12
-- Версия сервера: 5.6.24-0ubuntu2
-- Версия PHP: 5.6.4-4ubuntu6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('00d176f2905b338183e56338f3589032f35a8ce0', 'testclient', NULL, '2016-06-09 18:10:11', NULL),
('03495c8593be03e861f5413588cd966a39141de4', 'test4', NULL, '2016-06-09 23:39:45', NULL),
('037ba4f00cc54dda83104be78216a0f1fbaee32a', 'testclient', NULL, '2016-06-05 07:12:03', NULL),
('0747286711a3eeb4124d86e5e3a588f912d25148', 'test01', NULL, '2016-06-11 11:09:35', NULL),
('0cb4920682a5e7e186e60a521c714a8a35a873b7', 'test01', NULL, '2016-06-11 17:00:10', NULL),
('1237a6c8a02476fb9ecd99c65b37442de52f66f8', 'testclient', NULL, '2016-06-05 08:07:03', NULL),
('147a69de8b5afa6497447086d9b85630f9c1c0fa', 'testclient', NULL, '2016-06-05 06:47:20', NULL),
('23cb1df37037d48d23bb482b07f8a4ebba526b71', 'testclient', NULL, '2016-06-08 15:18:33', NULL),
('29043e6fa0f9b57018f0c64908d0798292bb976e', 'testclient', NULL, '2016-06-07 03:34:39', NULL),
('2ae7d8b1e112fb40443f7f91e533d3d92bbd636b', 'testclient', NULL, '2016-06-05 07:17:36', NULL),
('3237b9acfe762e23eca7d6255a36844880aa81d4', 'testclient', NULL, '2016-06-08 16:24:07', NULL),
('412ed6350909521ff63e3779db8fd52a5735c5ed', 'test01', NULL, '2016-06-11 14:57:00', NULL),
('46d4377efd948b17bb1422a93b75f9e5b20b5e5a', 'testclient', NULL, '2016-06-09 17:00:41', NULL),
('481eb390cf7b630ceb64fe31f1519fa8dad75702', 'testclient', NULL, '2016-06-08 13:05:06', NULL),
('4b0bd43a59ce4b40fae1a00211b270f8ac976677', 'test01', NULL, '2016-06-11 10:08:19', NULL),
('4e2b1c0249887d3cee538f385eb46cc9be3b1f98', 'testclient', NULL, '2016-06-07 03:32:34', NULL),
('50ca3ed1a09704983023327df7dc1780ce5d5daa', 'testclient', NULL, '2016-06-05 08:22:51', NULL),
('53ab7194e88c3205a84ce693472346d36967c86f', 'test01', NULL, '2016-06-11 09:07:59', NULL),
('542c3b1fb20e4876d5577bf8e25270c96e4812b7', 'testclient', NULL, '2016-06-05 08:20:59', NULL),
('597eb93d99970eeb5f06719b7b192d80bfbd1b22', 'testclient', NULL, '2016-06-07 03:32:53', NULL),
('5b1b636aeb54f21cae2be11160c7c40fe61a981c', 'testclient', NULL, '2016-06-06 22:08:19', NULL),
('5fd0c9336fe6eb1a5aa35a3e636e0fdc2a7121a5', 'testclient', NULL, '2016-06-05 07:56:37', NULL),
('6a2d2c16dd1080ed1661d6a9d4e35084dcd807d1', 'test4', NULL, '2016-06-11 08:00:47', NULL),
('6a2d8bee7c14091348b14733c361717136420b56', 'testclient', NULL, '2016-06-06 20:15:43', NULL),
('7397998c9770236624f0e2d97fcdf9439ed6e15e', 'testclient', NULL, '2016-06-06 17:03:02', NULL),
('79a416a0d29a2c6018cb7a42fa5fa526017fbc75', 'testclient', NULL, '2016-06-06 15:24:17', NULL),
('7f3ef8b17301df95c44a941b079e6c5ab81639d3', 'test4', NULL, '2016-06-09 21:28:43', NULL),
('87ecdad1dbadf7c93c2db60670c8bb9b9110df64', 'test', NULL, '2016-06-11 18:12:45', NULL),
('93c28c3efa1b7beac68d5189c54a0e46af2ed7e8', 'testclient', NULL, '2016-06-05 08:00:52', NULL),
('a15900a1265181922a4e8074d839b7c532bbe22f', 'testclient', NULL, '2016-06-06 20:17:18', NULL),
('a1c9fb7e97295f9019261f99577696eb7ce3300b', 'testclient', NULL, '2016-06-07 23:22:16', NULL),
('ac1eddca43463187c2aacee0290f100697ec2f2a', 'testclient', NULL, '2016-06-08 18:19:25', NULL),
('acd33f9f9afc6afbf0290d5d453a43516bbbfb48', 'testclient', NULL, '2016-06-05 06:44:45', NULL),
('b2a1e0f843cb42b5364dc066af365dfbd180bdac', 'testclient', NULL, '2016-06-05 08:05:10', NULL),
('b4d04e1ba1288e941d6761c6947c65578dacd3be', 'testclient', NULL, '2016-06-07 04:52:12', NULL),
('b8bd9798ec212a7cd27fcf20e72ba2d31b1f8042', 'test4', NULL, '2016-06-10 00:44:36', NULL),
('be9ac713b44bc6393c9a05bed59e909f2e05f2e2', 'test4', NULL, '2016-06-10 02:55:29', NULL),
('c5bda2f5f05decaa42d7f0ec865e3c0c045748e4', 'test4', NULL, '2016-06-09 20:27:32', NULL),
('c96a5b5ac0025fb47e4a39a8395905d375b555fc', 'test01', NULL, '2016-06-11 12:14:57', NULL),
('cc43a3f31511607f398623733b34145ec568ad75', 'testclient', NULL, '2016-06-05 06:42:00', NULL),
('d00bce7d5c94b2421975174b7996c8b3ed25e13e', 'test01', NULL, '2016-06-11 15:59:40', NULL),
('d1d6a284d059674e67185cd26a2edc9981531751', 'testclient', NULL, '2016-06-07 00:49:40', NULL),
('d702273a861ee0653bedd4ad5e9c82e570e59135', 'testclient', NULL, '2016-06-05 07:10:46', NULL),
('e06d540797bcaf0a4de256d52b13415a11651379', 'test2', NULL, '2016-06-11 18:15:40', NULL),
('eaf15c979e36df9c9d1e03274fa67c07a715384b', 'testclient', NULL, '2016-06-06 23:44:32', NULL),
('f1de3958a1f8b3ae54fe30a87feb269594b5f0e1', 'testclient', NULL, '2016-06-05 06:46:19', NULL),
('f65dac726e7a387a31c09bafd7ceec1b80d6f3f2', 'testclient', NULL, '2016-06-05 08:18:47', NULL),
('fac10fe1f433cc16da0f56a77216e68e51de5be7', 'test01', NULL, '2016-06-11 13:25:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_authorization_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) CHARACTER SET latin1 NOT NULL,
  `client_secret` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `redirect_uri` varchar(2000) CHARACTER SET latin1 NOT NULL,
  `user_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `grant_types` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `scope` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `user_id` varchar(80) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `user_name`, `user_email`, `user_phone`, `grant_types`, `scope`, `user_id`) VALUES
('test', '123456', 'http://fake/', 'andrey2', 'sao.student@yandex.ru', '8-(903)-277-77-63', NULL, NULL, NULL),
('test01', '123654', 'http://fake/', 'ivan1', 'freeuseman@gmail.com', '8-(910)-473-94-79', NULL, NULL, NULL),
('test2', '789654', 'http://fake/', 'aleksandr3', 'a.shuvanov@gmail.com', '8-(926)-375-10-89', NULL, NULL, NULL),
('test3', '654321', 'http://fake/', 'irbelova1', 'irbelova1@gmail.com', '8-(903)-179-33-18', NULL, NULL, NULL),
('test4', '123789', 'http://fake/', 'xaa1', 'xaa1@mail.msiu.ru', '8-(916)-806-99-82', NULL, NULL, NULL),
('testclient', '5436789', 'http://fake/', 'uliana29', 'uliana-bulgakova@yandex.ru', '8-(906)-031-96-81', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_jwt`
--

CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `scope` text,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_users`
--

CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `time` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `week_day` int(11) NOT NULL,
  `squad` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `classroom` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `start_date`, `end_date`, `time`, `week_day`, `squad`, `classroom`, `status`) VALUES
(1, 'Компьютерное моделирование (лекция)', '2016-04-04', '2016-05-31', '10:40-12:10', 1, '8-ОИВТн-9', 'В 303', 1),
(2, 'Защита информации', '2016-05-09', '2016-05-31', '9:00-10:30', 1, '8-ОИВТн-9', 'В 121', 1),
(3, 'Компьютерное моделирование (практическое)', '2016-04-04', '2016-05-31', '12:20-13:50', 1, '8-ОИВТн-9', 'В 303', 0),
(4, 'Сети и телекоммуникации (лекция)', '2016-04-04', '2016-05-20', '14:30-16:00', 1, '8-ОИВТн-9', 'В 121', 0),
(5, 'Теория вычислительных процессов (лекция)', '2016-04-05', '2016-05-31', '9:00-10:30', 2, '8-ОИВТн-9', 'В 121', 0),
(6, 'АИУС (лекция)', '2016-04-05', '2016-05-30', '10:40-12:10', 2, '8-ОИВТн-9', 'А 406', 0),
(7, 'АИУС (практическое)', '2016-04-05', '2016-05-30', '12:20-13:50', 2, '8-ОИВТн-9', 'А 406', 1),
(8, 'Защита информации ', '2016-04-06', '2016-05-31', '10:40-12:10', 3, '8-ОИВТн-9', 'А 121', 0),
(9, 'Теория вычислительных процессов (практическое)', '2016-04-06', '2016-05-01', '12:20-13:50', 3, '8-ОИВТн-9', 'В 121', 0),
(10, 'Компьютерное моделирование (лекция)', '2016-04-07', '2016-05-31', '14:30 -16:00', 4, '8-ОИВТн-9', 'В 303', 0),
(11, 'Сети и телекоммуникации (практическое)', '2016-04-07', '2016-05-20', '16:10-17:40', 4, '8-ОИВТн-9', 'В 121', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `updates_collector`
--

CREATE TABLE IF NOT EXISTS `updates_collector` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `client_id` varchar(11) NOT NULL,
  `choice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Индексы таблицы `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Индексы таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Индексы таблицы `oauth_jwt`
--
ALTER TABLE `oauth_jwt`
  ADD PRIMARY KEY (`client_id`);

--
-- Индексы таблицы `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Индексы таблицы `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `updates_collector`
--
ALTER TABLE `updates_collector`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `updates_collector`
--
ALTER TABLE `updates_collector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
