-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 15 2017 г., 02:48
-- Версия сервера: 5.5.45-log
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `upproject_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `name`, `title`, `short_description`, `description`, `attributes`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, '', 'ТУРИСТИЧНА@|;ТУРИСТИЧЕСКАЯ@|;', '', '', '', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, '', 'НАЦІОНАЛЬНА@|;Национальная@|;', '', '', '', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, '', 'ЗАГОЛОВК ПОРАДИ@|;ЗАГОЛОВОК СОВЕТА@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів.7</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров.</p>@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів. Освіта в Польщі на бакалавра триває три роки за відповідною програмою. Студенти в результаті отримують ступінь і диплом, а потім можуть навчатися на другому рівні. Магістри навчаються або 1,5 року (англійська мова навчання), або 2 роки (польську мову навчання). Є також багаторівнева програма навчання, вона триває 5 років. Зазвичай навчальний рік триває 30 тижнів. Протягом кожного тижня навчання студенти вчаться приблизно 30 годин. Що стосується кількості семестрів, то їх два: один - осінній (починається в жовтні-місяці), другий - весняний (з середини лютого до середини червня-місяця). Щоб здати сесії, студентам потрібно відвідувати лекції, семінари, дискусії та ходити на лабораторні роботи.</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров. Образование в Польше на бакалавра длится три года по соответствующей программе. Студенты в итоге получают степень и диплом, а затем могут обучаться на втором уровне. Магистры учатся либо 1,5 года (английский язык обучения), либо 2 года (польский язык обучения). Есть также многоуровневая программа обучения, она длится 5 лет.&nbsp;Обычно учебный год длится 30 недель. На протяжении каждой недели обучения студенты учатся примерно 30 часов. Что касается количества семестров, то их два: один &ndash; осенний (начинается в октябре-месяце), второй &ndash; весенний (с середины февраля до середины июня-месяца).&nbsp;Чтобы сдать сессии, студентам нужно посещать лекции, семинары, дискуссии и ходить на лабораторные работы.&nbsp;</p>@|;', '', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, '', 'ЗАГОЛОВК ПОРАДИ@|;ЗАГОЛОВОК СОВЕТА@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів.7</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров.</p>@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів. Освіта в Польщі на бакалавра триває три роки за відповідною програмою. Студенти в результаті отримують ступінь і диплом, а потім можуть навчатися на другому рівні. Магістри навчаються або 1,5 року (англійська мова навчання), або 2 роки (польську мову навчання). Є також багаторівнева програма навчання, вона триває 5 років. Зазвичай навчальний рік триває 30 тижнів. Протягом кожного тижня навчання студенти вчаться приблизно 30 годин. Що стосується кількості семестрів, то їх два: один - осінній (починається в жовтні-місяці), другий - весняний (з середини лютого до середини червня-місяця). Щоб здати сесії, студентам потрібно відвідувати лекції, семінари, дискусії та ходити на лабораторні роботи.</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров. Образование в Польше на бакалавра длится три года по соответствующей программе. Студенты в итоге получают степень и диплом, а затем могут обучаться на втором уровне. Магистры учатся либо 1,5 года (английский язык обучения), либо 2 года (польский язык обучения). Есть также многоуровневая программа обучения, она длится 5 лет.&nbsp;Обычно учебный год длится 30 недель. На протяжении каждой недели обучения студенты учатся примерно 30 часов. Что касается количества семестров, то их два: один &ndash; осенний (начинается в октябре-месяце), второй &ndash; весенний (с середины февраля до середины июня-месяца).&nbsp;Чтобы сдать сессии, студентам нужно посещать лекции, семинары, дискуссии и ходить на лабораторные работы.&nbsp;</p>@|;', '', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `link`, `name`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `created_at`, `updated_at`) VALUES
(1, 'main', 'Головна', '', '', '', '{"base": ["title", "description"],"attributes": [{"price": {"type": "input","lang_active": false}},{"specification": {"type": "textearea","lang_active": true}},{"quantity": {"type": "input","lang_active": false}}]}', '0000-00-00 00:00:00', 0, '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(2, 'visas', 'Візи', '', '', '', '\r\n            {\r\n                "base": ["title", "description"],\r\n                "attributes": [{\r\n                    "price": {\r\n                        "type": "input",\r\n                        "lang_active": false\r\n                    }\r\n                }, {\r\n                    "specification": {\r\n                        "type": "textearea",\r\n                        "lang_active": true\r\n                    }\r\n                }]\r\n            }', '0000-00-00 00:00:00', 0, '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(3, 'advices', 'Поради', '', '', '', '\r\n            {\r\n                "base": ["title","short_description", "description"],\r\n                "attributes": [{\r\n                    "price": {\r\n                        "type": "input",\r\n                        "lang_active": true\r\n                    }\r\n                }, {\r\n                    "specification": {\r\n                        "type": "textearea",\r\n                        "lang_active": true\r\n                    }\r\n                }]\r\n            }', '0000-00-00 00:00:00', 0, '2017-01-14 20:44:58', '2017-01-14 20:44:58');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'ua', '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(2, 'ru', '2017-01-14 20:44:58', '2017-01-14 20:44:58');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_14_124503_create_articles_table', 1),
('2016_09_14_124813_create_categories_table', 1),
('2016_09_14_124942_create_langs_table', 1),
('2016_10_06_124518_create_texts_table', 1),
('2016_11_04_094627_create_comments_table', 1),
('2016_12_26_140118_change_text_table_soft', 1),
('2017_01_02_155628_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'header.tel1', 'input', 'Контактний номер телефону 1', '+3809912345', 3, 0, '2017-01-14 20:44:58', '2017-01-14 20:44:58', NULL),
(2, 0, 'header.tel2', 'input', 'Контактний номер телефону 2', '+3809854321', 3, 0, '2017-01-14 20:44:58', '2017-01-14 20:44:58', NULL),
(3, 0, 'header.address', 'input', 'Адреса', 'м.Львів', 2, 1, '2017-01-14 20:44:58', '2017-01-14 20:44:58', NULL),
(4, 0, 'header.mail', 'input', 'Пошта', 'exampl@gmail.com', 1, 0, '2017-01-14 20:44:58', '2017-01-14 20:44:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'exampl@com.ua', '$2y$10$3pPgTtpNQRtvCXu4FwU61es3fbKaADLLX4EawHVbW9h2h4rQD535i', 'hAB6BEp6nR1ltQPT0aXq5X8SYc1SathcZJf05su2lfIJl8s7qt6Oa0jcdy27', '2017-01-14 20:44:58', '2017-01-14 23:20:45'),
(2, 'root', 'webdesignstudio@gmail.com', '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y', 'EHTuEJhoqMqliqvkVUYo5Iz9hp1xJ3n7iXYT63GYM9vuKYQq5DaEIkEXnuaX', '2017-01-14 20:44:58', '2017-01-14 23:20:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
