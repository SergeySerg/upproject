-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 13 2017 г., 13:43
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `name`, `title`, `short_description`, `description`, `attributes`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, '', 'ТУРИСТИЧНА Віза@|;ТУРИСТИЧЕСКАЯ Виза@|;', '<p>Короткий опис</p>@|;<p>авпвапавп</p>@|;', '<p>Текст</p>@|;<p>павпапвп</p>@|;', '{"\\u0426\\u0456\\u043d\\u0430":"450","\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f_ua":"<h4>\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f&nbsp;<\\/h4>\\r\\n","\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f_ru":"<p>\\u0441\\u043f\\u0435\\u0446\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f<\\/p>\\r\\n"}', '[{"full":"upload\\/articles\\/1\\/full\\/viber image.jpg","min":"upload\\/articles\\/1\\/min\\/viber image.jpg"}]', '', 1, '1970-01-30 22:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '0000-00-00 00:00:00', '2017-02-11 20:46:39'),
(3, 3, '', 'ЗАГОЛОВК ПОРАДИ@|;ЗАГОЛОВОК СОВЕТА@|;', '@|;@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів. Освіта в Польщі на бакалавра триває три роки за відповідною програмою. Студенти в результаті отримують ступінь і диплом, а потім можуть навчатися на другому рівні. Магістри навчаються або 1,5 року (англійська мова навчання), або 2 роки (польську мову навчання). Є також багаторівнева програма навчання, вона триває 5 років. Зазвичай навчальний рік триває 30 тижнів. Протягом кожного тижня навчання студенти вчаться приблизно 30 годин. Що стосується кількості семестрів, то їх два: один - осінній (починається в жовтні-місяці), другий - весняний (з середини лютого до середини червня-місяця). Щоб здати сесії, студентам потрібно відвідувати лекції, семінари, дискусії та ходити на лабораторні роботи.</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров. Образование в Польше на бакалавра длится три года по соответствующей программе. Студенты в итоге получают степень и диплом, а затем могут обучаться на втором уровне. Магистры учатся либо 1,5 года (английский язык обучения), либо 2 года (польский язык обучения). Есть также многоуровневая программа обучения, она длится 5 лет.&nbsp;Обычно учебный год длится 30 недель. На протяжении каждой недели обучения студенты учатся примерно 30 часов. Что касается количества семестров, то их два: один &ndash; осенний (начинается в октябре-месяце), второй &ndash; весенний (с середины февраля до середины июня-месяца).&nbsp;Чтобы сдать сессии, студентам нужно посещать лекции, семинары, дискуссии и ходить на лабораторные работы.&nbsp;</p>@|;', '{"\\u041a\\u0456\\u043b\\u044c\\u043a\\u0456\\u0441\\u0442\\u044c":"","\\u0426\\u0456\\u043d\\u0430_ua":"","\\u0426\\u0456\\u043d\\u0430_ru":""}', '[{"full":"upload\\/articles\\/3\\/full\\/plane.png","min":"upload\\/articles\\/3\\/min\\/plane.png"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '0000-00-00 00:00:00', '2017-02-05 11:10:08'),
(4, 3, '', 'ЗАГОЛОВК ПОРАДИ@|;ЗАГОЛОВОК СОВЕТА@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів.7</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров.</p>@|;', '<p>У Польщі сьогодні діє дворівнева система вищої освіти. Перший рівень передбачає навчання студентів на бакалаврів. Освіта в Польщі на бакалавра триває три роки за відповідною програмою. Студенти в результаті отримують ступінь і диплом, а потім можуть навчатися на другому рівні. Магістри навчаються або 1,5 року (англійська мова навчання), або 2 роки (польську мову навчання). Є також багаторівнева програма навчання, вона триває 5 років. Зазвичай навчальний рік триває 30 тижнів. Протягом кожного тижня навчання студенти вчаться приблизно 30 годин. Що стосується кількості семестрів, то їх два: один - осінній (починається в жовтні-місяці), другий - весняний (з середини лютого до середини червня-місяця). Щоб здати сесії, студентам потрібно відвідувати лекції, семінари, дискусії та ходити на лабораторні роботи.</p>@|;<p>В Польше сегодня действует двухуровневая система высшего образования. Первый уровень предполагает обучение студентов на бакалавров. Образование в Польше на бакалавра длится три года по соответствующей программе. Студенты в итоге получают степень и диплом, а затем могут обучаться на втором уровне. Магистры учатся либо 1,5 года (английский язык обучения), либо 2 года (польский язык обучения). Есть также многоуровневая программа обучения, она длится 5 лет.&nbsp;Обычно учебный год длится 30 недель. На протяжении каждой недели обучения студенты учатся примерно 30 часов. Что касается количества семестров, то их два: один &ndash; осенний (начинается в октябре-месяце), второй &ndash; весенний (с середины февраля до середины июня-месяца).&nbsp;Чтобы сдать сессии, студентам нужно посещать лекции, семинары, дискуссии и ходить на лабораторные работы.&nbsp;</p>@|;', '', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, '', 'Для подорожей@|;Для путешествий@|;', '<p><strong>Lorem Ipsum</strong>&nbsp;- це текст-&quot;риба&quot;, що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною &quot;рибою&quot; аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. &quot;Риба&quot; не тільки успішно пережила п&#39;ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп&#39;ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum</p>@|;<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>@|;', '<p><strong>Lorem Ipsum</strong>&nbsp;- це текст-&quot;риба&quot;, що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною &quot;рибою&quot; аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. &quot;Риба&quot; не тільки успішно пережила п&#39;ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп&#39;ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum</p>@|;<p><strong>Lorem Ipsum</strong>&nbsp;- це текст-&quot;риба&quot;, що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною &quot;рибою&quot; аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. &quot;Риба&quot; не тільки успішно пережила п&#39;ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп&#39;ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- це текст-&quot;риба&quot;, що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною &quot;рибою&quot; аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. &quot;Риба&quot; не тільки успішно пережила п&#39;ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп&#39;ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum</p>@|;', '{"\\u0426\\u0456\\u043d\\u0430":"999","\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f_ua":"<h5>&quot;\\u041d\\u0435\\u043c\\u0430\\u0454 \\u043d\\u0456\\u043a\\u043e\\u0433\\u043e, \\u0445\\u0442\\u043e \\u043b\\u044e\\u0431\\u0438\\u0432 \\u0431\\u0438 \\u0441\\u0430\\u043c\\u0438\\u0439 \\u0431\\u0456\\u043b\\u044c, \\u0445\\u0442\\u043e \\u0431 \\u0448\\u0443\\u043a\\u0430\\u0432 \\u0439\\u043e\\u0433\\u043e \\u0447\\u0438 \\u0445\\u043e\\u0442\\u0456\\u0432 \\u0431\\u0438 \\u0439\\u043e\\u0433\\u043e \\u0437\\u0430\\u0437\\u043d\\u0430\\u0432\\u0430\\u0442\\u0438 \\u0442\\u0456\\u043b\\u044c\\u043a\\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435, \\u0449\\u043e \\u0432\\u0456\\u043d - \\u0431\\u0456\\u043b\\u044c...&quot;<\\/h5>\\r\\n","\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f_ru":"<h4>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;<\\/h4>\\r\\n"}', '[{"full":"upload\\/articles\\/5\\/full\\/viber image123.jpg","min":"upload\\/articles\\/5\\/min\\/viber image123.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-01-29 20:57:19', '2017-02-11 20:55:50'),
(6, 10, '', 'Ресторан@|;Ресторан@|;', '@|;@|;', '@|;@|;', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-29 20:58:35', '2017-01-29 20:58:35'),
(7, 11, '', '1 ua@|;1 ru@|;', '@|;@|;', '@|;@|;', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-29 22:43:16', '2017-01-29 22:43:16'),
(8, 11, '', '2 ua@|;2 ru@|;', '@|;@|;', '@|;@|;', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-29 22:43:39', '2017-01-29 22:43:39'),
(9, 13, '', '21311@|;32323@|;', '@|;@|;', '@|;@|;', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-29 22:57:29', '2017-01-29 22:57:29'),
(10, 13, '', 'trtrtr@|;trtrtrtrt@|;', '@|;@|;', '@|;@|;', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-29 22:57:45', '2017-01-29 22:57:45'),
(11, 2, '', 'Шопінг Виза@|;Шопинг Виза@|;', '<h4>Короткий опис</h4>@|;<p>Краткое описание</p>@|;', '<p>Опис</p>@|;<p>Описание</p>@|;', '{"\\u0426\\u0456\\u043d\\u0430":"999","\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f_ua":"<h4>\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f<\\/h4>\\r\\n","\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0456\\u043a\\u0430\\u0446\\u0456\\u044f_ru":"<p>\\u0421\\u043f\\u0435\\u0446\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f<\\/p>\\r\\n"}', '[{"full":"upload\\/articles\\/11\\/full\\/viber image123.jpg","min":"upload\\/articles\\/11\\/min\\/viber image123.jpg"}]', '', 100, '2017-02-01 22:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-02-02 16:27:55', '2017-02-02 16:40:59'),
(12, 3, '', 'wetwtwt@|;апвапвап@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0456\\u043b\\u044c\\u043a\\u0456\\u0441\\u0442\\u044c":"","\\u0426\\u0456\\u043d\\u0430_ua":"","\\u0426\\u0456\\u043d\\u0430_ru":""}', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-02-06 14:56:27', '2017-02-06 14:56:27'),
(13, 3, '', 'wetwtwt@|;апвапвап@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0456\\u043b\\u044c\\u043a\\u0456\\u0441\\u0442\\u044c":"","\\u0426\\u0456\\u043d\\u0430_ua":"","\\u0426\\u0456\\u043d\\u0430_ru":""}', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-02-06 14:59:16', '2017-02-06 14:59:16'),
(14, 3, '', 'wetwtwt@|;апвапвап@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0456\\u043b\\u044c\\u043a\\u0456\\u0441\\u0442\\u044c":"","\\u0426\\u0456\\u043d\\u0430_ua":"","\\u0426\\u0456\\u043d\\u0430_ru":""}', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-02-06 14:59:20', '2017-02-06 14:59:20'),
(15, 3, '', 'wewerwer@|;rwerwerwer@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0456\\u043b\\u044c\\u043a\\u0456\\u0441\\u0442\\u044c":"","\\u0426\\u0456\\u043d\\u0430_ua":"","\\u0426\\u0456\\u043d\\u0430_ru":""}', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-02-06 14:59:33', '2017-02-06 14:59:33'),
(16, 3, '', 'wewerwer@|;rwerwerwer@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0456\\u043b\\u044c\\u043a\\u0456\\u0441\\u0442\\u044c":"","\\u0426\\u0456\\u043d\\u0430_ua":"","\\u0426\\u0456\\u043d\\u0430_ru":""}', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-02-06 14:59:40', '2017-02-06 14:59:40');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `link`, `title`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'main', 'Головна@|;Головна@|;', '@|;@|;', '@|;@|;', '', '{"base":["title","description","active"],"attributes":{"Ціна":{"type":"input","lang_active":true,"active":false},"Кількість":{"type":"input","lang_active":false,"active":true}}}', '0000-00-00 00:00:00', 0, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-14 20:44:58', '2017-02-06 09:08:37'),
(2, 'visas', 'Візи@|;Візи@|;', '<p>Короткий опис категорії візи</p>@|;<p>Короткий опис категорії візи</p>@|;', '<p>Повний опис категорій віз</p>@|;<p>Повний опис категорій віз</p>@|;', '[{"full":"upload\\/categories\\/2\\/full\\/viber image.jpg","min":"upload\\/categories\\/2\\/min\\/viber image.jpg"}]', '{"base":["title","short_description","description","gallery","date","priority","active"],"attributes":{"Ціна":{"type":"input","lang_active":false,"active":false},"Специфікація":{"type":"textarea","lang_active":true,"active":false}}}', '0000-00-00 00:00:00', 1, 'meta_title@|;meta_title@|;', 'meta_description@|;meta_description@|;', 'meta_keywords@|;meta_keywords@|;', 1, '2017-01-14 20:44:58', '2017-02-11 21:13:00'),
(3, 'advices', 'Поради@|;Поради@|;', '@|;@|;', '@|;@|;', '[{"full":"upload\\/categories\\/3\\/full\\/viber image123.jpg","min":"upload\\/categories\\/3\\/min\\/viber image123.jpg"}]', '{"base":["title","description","active"],"attributes":{"Ціна":{"type":"input","lang_active":true,"active":false},"Кількість":{"type":"input","lang_active":false,"active":true}}}', '0000-00-00 00:00:00', 0, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-01-14 20:44:58', '2017-02-11 21:06:47');

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
('2017_01_02_155628_create_orders_table', 1),
('2017_02_06_120655_create_settings_table', 2);

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

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('webdesignstudio@gmail.com', 'fbde7c2090b1432792a7b0caee4dcfa185c155d6cc24beff39508ff5271224ba', '2017-02-06 14:40:36');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'config.email', 'Пошта для отримання повідомлень', 'webtestingstudio@gmail.com', '0000-00-00 00:00:00', '2017-02-11 16:54:30', NULL),
(10, 'config.test', 'Тест', 'Тест', '2017-02-11 17:15:35', '2017-02-11 17:15:35', NULL);

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
(3, 0, 'header.address', 'input', 'Адреса', 'м.Львів', 2, 1, '2017-01-14 20:44:58', '2017-02-06 15:33:35', NULL),
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
(1, 'admin', 'exampl@com.ua', '$2y$10$3pPgTtpNQRtvCXu4FwU61es3fbKaADLLX4EawHVbW9h2h4rQD535i', 'nYslnjb0Jn0wO5PM8CbGfEIOPx0ydfaN2jZEUmR2eW3OA3VO8dPxfGigeRhG', '2017-01-14 20:44:58', '2017-02-11 17:18:04'),
(2, 'root', 'webtestingstudio@gmail.com', '$2y$10$v7S1rpn5qfZ/th2wu49sAe6QEn5kE8yTICSiZU7.ICC.LaPUUdSFS', 'iKraXadtIPH08kbTUUycBlDhSlKetbxmJbHsQVvoMFDuohjIcq5TEwzIb6j7', '2017-01-14 20:44:58', '2017-02-06 15:39:43');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
