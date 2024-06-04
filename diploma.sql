-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2024 г., 22:22
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diploma`
--

-- --------------------------------------------------------

--
-- Структура таблицы `alboms`
--

CREATE TABLE `alboms` (
  `id` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `alboms`
--

INSERT INTO `alboms` (`id`, `id_user`) VALUES
(9, 19),
(10, 26),
(11, 27),
(12, 28),
(13, 30),
(14, 31),
(15, 32),
(16, 52),
(17, 56),
(18, 57),
(19, 58),
(20, 61);

-- --------------------------------------------------------

--
-- Структура таблицы `alboms_posts`
--

CREATE TABLE `alboms_posts` (
  `id` int NOT NULL,
  `id_albom` int NOT NULL,
  `id_posts` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `alboms_posts`
--

INSERT INTO `alboms_posts` (`id`, `id_albom`, `id_posts`) VALUES
(2, 14, 2),
(3, 14, 3),
(4, 14, 4),
(5, 14, 5),
(6, 14, 6),
(7, 14, 7),
(8, 14, 8),
(9, 14, 9),
(10, 14, 10),
(11, 14, 11),
(12, 14, 12),
(13, 14, 13),
(14, 14, 14),
(15, 14, 15),
(16, 14, 16),
(17, 14, 17),
(18, 20, 18),
(19, 20, 19),
(20, 20, 20),
(21, 20, 21),
(22, 20, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Графический дизайн'),
(3, 'Веб-дизайн'),
(4, 'Дизайн продуктов'),
(5, 'Интерьер'),
(6, 'Концепции'),
(7, 'Архитектура'),
(8, 'Хобби'),
(9, 'Типографика'),
(10, 'Красота');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_posts` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `forbidden_words`
--

CREATE TABLE `forbidden_words` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `key_words`
--

CREATE TABLE `key_words` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `key_words`
--

INSERT INTO `key_words` (`id`, `name`) VALUES
(1, ' Изображение');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user_token', '348c3f0ac581cba177bc5caed1bf4a199707a0726e496ec8d7b09b73f2bcc473', '[\"*\"]', NULL, NULL, '2024-04-28 10:28:19', '2024-04-28 10:28:19'),
(2, 'App\\Models\\User', 2, 'user_token', '03bb51583ee9d45355efa5d66487fef47b410b05a843f30c5fd8c5f5ffb05e5c', '[\"*\"]', NULL, NULL, '2024-04-28 10:29:17', '2024-04-28 10:29:17'),
(3, 'App\\Models\\User', 3, 'user_token', 'a985dd535aeea6e0ccd6393a5cba6d99ecbca83abdb7a56ba4eb46413893c94a', '[\"*\"]', NULL, NULL, '2024-04-28 10:29:48', '2024-04-28 10:29:48'),
(4, 'App\\Models\\User', 4, 'user_token', '31936298c316e0e8a6d72a036b4b8999c221684f8775866b1ea5de37cadc8d17', '[\"*\"]', NULL, NULL, '2024-04-28 10:31:12', '2024-04-28 10:31:12'),
(5, 'App\\Models\\User', 5, 'user_token', '944f8ce98f8dffa61da296a4407b638c0a8689d93da654a305638d7f69bd5ffc', '[\"*\"]', NULL, NULL, '2024-04-28 10:32:24', '2024-04-28 10:32:24'),
(6, 'App\\Models\\User', 6, 'user_token', '96adccb6111d545516c07dab9711b3132e5815de619e93586f5a0f42bcb40a58', '[\"*\"]', NULL, NULL, '2024-04-28 10:32:45', '2024-04-28 10:32:45'),
(7, 'App\\Models\\User', 13, 'user_token', '47113b81da7afb2bb7900bb2e0b5e1d934bf7976e72ca83c6cd649093e7b5ecc', '[\"*\"]', NULL, NULL, '2024-04-28 10:38:11', '2024-04-28 10:38:11'),
(8, 'App\\Models\\User', 17, 'user_token', '82423aa7c962562092830f295b4146254643e670978712cd6137ed509f4e19a1', '[\"*\"]', NULL, NULL, '2024-04-28 10:45:32', '2024-04-28 10:45:32'),
(9, 'App\\Models\\User', 19, 'user_token', '228976782e02c3298fb81da726da5be2e8e310ba39fd6d86d1a74aa8d92e690b', '[\"*\"]', NULL, NULL, '2024-05-11 12:15:23', '2024-05-11 12:15:23'),
(10, 'App\\Models\\User', 26, 'user_token', 'd5aea162fc4149cd77db2d9227fc2d8c96d612f04ba4907c87d11671d033649f', '[\"*\"]', NULL, NULL, '2024-05-11 12:24:39', '2024-05-11 12:24:39'),
(11, 'App\\Models\\User', 27, 'user_token', '10b47c4423d5a8f9177918521aed8f104637f1e77a115aa340366b655427d59d', '[\"*\"]', NULL, NULL, '2024-05-11 12:25:14', '2024-05-11 12:25:14'),
(12, 'App\\Models\\User', 28, 'user_token', '21331fe3349a3b78fe47422be5f32419233e96eaee6c1a828720510dbc1f5215', '[\"*\"]', NULL, NULL, '2024-05-11 13:55:08', '2024-05-11 13:55:08'),
(13, 'App\\Models\\User', 30, 'user_token', '26edf399b7169400d897bf51b0ecf6d1af29d68f26384eb680af7cbd6b75f592', '[\"*\"]', NULL, NULL, '2024-05-11 13:58:42', '2024-05-11 13:58:42'),
(14, 'App\\Models\\User', 31, 'user_token', '905ff7bb55a6d6e3e6143cc2cc68fcc17276b478d9d28962722f9ecf1b9fbab7', '[\"*\"]', NULL, NULL, '2024-05-11 14:04:53', '2024-05-11 14:04:53'),
(15, 'App\\Models\\User', 31, 'user_token', '7f24d9213ef95009c9f99023ca083f0c6ad294e6cb2b35e92899c7a0992cf150', '[\"*\"]', NULL, NULL, '2024-05-17 09:41:35', '2024-05-17 09:41:35'),
(16, 'App\\Models\\User', 31, 'user_token', '054c90d4ac5df8eeef2642389976ff8d9db2d9b843338afdcf1827197c9f3321', '[\"*\"]', NULL, NULL, '2024-05-17 09:41:44', '2024-05-17 09:41:44'),
(17, 'App\\Models\\User', 31, 'user_token', 'd2d252865c47ac5252b6fece63c4d95a9d0215d4e9bcd82228f32f195e525c2e', '[\"*\"]', NULL, NULL, '2024-05-17 09:45:01', '2024-05-17 09:45:01'),
(18, 'App\\Models\\User', 31, 'user_token', 'd6d1cd6ab1246cc719af1f526dd669a432603dcb373d038e3045beda52152071', '[\"*\"]', NULL, NULL, '2024-05-17 09:52:03', '2024-05-17 09:52:03'),
(19, 'App\\Models\\User', 31, 'user_token', '702691b74bbd69957c81c14484e96eee6da84343a67ab2463e8e2ad6754ff41c', '[\"*\"]', NULL, NULL, '2024-05-17 09:55:29', '2024-05-17 09:55:29'),
(20, 'App\\Models\\User', 31, 'user_token', '359836f04d3ac169d83161ebe430798fdc70935593ddfcfd11a736f402cf94e8', '[\"*\"]', NULL, NULL, '2024-05-17 09:55:43', '2024-05-17 09:55:43'),
(21, 'App\\Models\\User', 31, 'user_token', '2e9e1d16f1eb511c2c5236fc5cab6989e40f2ccca618fd4dbc2e16fbec3fac8b', '[\"*\"]', NULL, NULL, '2024-05-17 09:56:00', '2024-05-17 09:56:00'),
(22, 'App\\Models\\User', 31, 'user_token', '3fdc1d2f2c5d894a0984aad369fdec0c420e42ab971955349ec708b4a8a3a5d9', '[\"*\"]', NULL, NULL, '2024-05-17 09:56:08', '2024-05-17 09:56:08'),
(23, 'App\\Models\\User', 31, 'user_token', '94f9510d1da9491ce8bc5293c706cfbe585a33ff9aa3db1d418eda2483e614dc', '[\"*\"]', NULL, NULL, '2024-05-17 09:56:17', '2024-05-17 09:56:17'),
(24, 'App\\Models\\User', 32, 'user_token', '0fbc6f9b7e5262c02f37457cf944db934bb43fdf00747476e5f15ac4599ef904', '[\"*\"]', NULL, NULL, '2024-05-19 10:28:37', '2024-05-19 10:28:37'),
(25, 'App\\Models\\User', 52, 'user_token', '329391571d785b2da496a5013271fc3ff304619c20944c4ec3301ed0bd2002a3', '[\"*\"]', NULL, NULL, '2024-05-19 10:32:14', '2024-05-19 10:32:14'),
(26, 'App\\Models\\User', 56, 'user_token', 'b3d0632ec63a1ed0912b00e0232ea8b926a6f93bb06ca6f742c01ed4e0735628', '[\"*\"]', NULL, NULL, '2024-05-19 10:32:45', '2024-05-19 10:32:45'),
(27, 'App\\Models\\User', 57, 'user_token', 'ff440d00c02ded422afd73618434ea14f9b74db9de2609e63979ef367975a8a4', '[\"*\"]', NULL, NULL, '2024-05-19 10:33:42', '2024-05-19 10:33:42'),
(28, 'App\\Models\\User', 58, 'user_token', 'cf6fcdd709ad389881b66756d544789f6026dee7ee597c16de761eeaf3e5eb1e', '[\"*\"]', NULL, NULL, '2024-05-19 10:34:20', '2024-05-19 10:34:20'),
(29, 'App\\Models\\User', 61, 'user_token', '0450c6018c0aaba1bc98ea442829cf62e45ae94e22379d7f98f6713cca618099', '[\"*\"]', NULL, NULL, '2024-05-19 10:35:23', '2024-05-19 10:35:23'),
(30, 'App\\Models\\User', 61, 'user_token', '49992d9f35f34790366a66b8c8b80bd24939d846b306b772bfa0c6ebe8bf71dc', '[\"*\"]', NULL, NULL, '2024-05-19 10:35:49', '2024-05-19 10:35:49'),
(31, 'App\\Models\\User', 61, 'user_token', 'dfe661bcb06d2d3a67e9b64411ae69fe5a289a81807a2f2d9bf03af51241f26a', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:35', '2024-05-19 11:44:35'),
(32, 'App\\Models\\User', 61, 'user_token', '7a7563b1b61cbae9d009c7fe2409c15f2bf0f3ed7b18c4106636bd015dac784f', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:36', '2024-05-19 11:44:36'),
(33, 'App\\Models\\User', 61, 'user_token', '5a88d7d66bedce22027ecda12d2cc91d344b74dffe14ff94d8a48bae5dd490d0', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:40', '2024-05-19 11:44:40'),
(34, 'App\\Models\\User', 61, 'user_token', '24139a936aced8eea33a6b82ce9b20dd34517aa83e59fd752407ad52415f0867', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:43', '2024-05-19 11:44:43'),
(35, 'App\\Models\\User', 61, 'user_token', '646e26d2411e2eb567ece98a02053c240958060759ed157599a84ce75a8b45a7', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:43', '2024-05-19 11:44:43'),
(36, 'App\\Models\\User', 61, 'user_token', 'bf03f2fe8a2c3230685295640e530a8ed226772c2bf4b0ca8d00e8a353e3692a', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:43', '2024-05-19 11:44:43'),
(37, 'App\\Models\\User', 61, 'user_token', 'daec6e6a58eb15f3ca127b5c7cd0c023d47ccb796b27023dbe11c5cd042888be', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:44', '2024-05-19 11:44:44'),
(38, 'App\\Models\\User', 61, 'user_token', 'b2bc84b30ea86a1035414b0eb6527e3d58108997d9922546b5d9bcd3d72d3972', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:44', '2024-05-19 11:44:44'),
(39, 'App\\Models\\User', 61, 'user_token', '9991728c1c5ccde3c4667029146455ec44fd5b523abe3f053d5c8eee7b625974', '[\"*\"]', NULL, NULL, '2024-05-19 11:44:44', '2024-05-19 11:44:44'),
(40, 'App\\Models\\User', 61, 'user_token', 'b02c7e88459ab6105a8658656b1a9b7095012f59ac335d457ac4ea6b2e16457a', '[\"*\"]', NULL, NULL, '2024-05-19 11:45:07', '2024-05-19 11:45:07'),
(41, 'App\\Models\\User', 61, 'user_token', 'e60edccc3a9eaba21a35fc08b78931863981e4ca9256bd6f86d521441f3250ac', '[\"*\"]', NULL, NULL, '2024-05-19 11:45:07', '2024-05-19 11:45:07'),
(42, 'App\\Models\\User', 61, 'user_token', 'c8cbb250616204900bd4fd838c737a74d3fe9ffcad308a5947f1b326bed65fe0', '[\"*\"]', NULL, NULL, '2024-05-19 11:45:20', '2024-05-19 11:45:20'),
(43, 'App\\Models\\User', 61, 'user_token', 'd259ffa84416c20450530acf30c200cf5503192cbfc1e17378921445b424994e', '[\"*\"]', NULL, NULL, '2024-05-19 12:29:51', '2024-05-19 12:29:51'),
(44, 'App\\Models\\User', 61, 'user_token', '31efd7f75b73959c56a1352d9d1ebcf1ee4ad301e8a0e957efe635c1120669e7', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:23', '2024-05-19 12:47:23'),
(45, 'App\\Models\\User', 61, 'user_token', '795684df064d17ae3b94403019eb019f584222686d45ad0c2df15b7c094690cb', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:25', '2024-05-19 12:47:25'),
(46, 'App\\Models\\User', 61, 'user_token', 'b28284a5dac5538f1b6bdc6ce0fef89bf5bae6ea462b057f3d9be4c568c01af5', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:26', '2024-05-19 12:47:26'),
(47, 'App\\Models\\User', 61, 'user_token', '1c3c8d6e1a6f78759365f9239b8a560348ed719160c5129006f3fd3602787878', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:27', '2024-05-19 12:47:27'),
(48, 'App\\Models\\User', 61, 'user_token', '4ab98c4ba986915c56261ba208d689c154bc99eb56133c91ef19c2aa0746f916', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:27', '2024-05-19 12:47:27'),
(49, 'App\\Models\\User', 61, 'user_token', '143c0e9a0e9d5b4c57ab392c2d4187cb6e8496d3f198275110a33ce7fc327bba', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:27', '2024-05-19 12:47:27'),
(50, 'App\\Models\\User', 61, 'user_token', 'c3668cdf665dc5c2e1ca11eba468e50ee04dd294c363211cce025506a45673ed', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:28', '2024-05-19 12:47:28'),
(51, 'App\\Models\\User', 61, 'user_token', '3841e4ffcc58be2142c619927a1fc717327026e479a27cddf58f42abb1c6e6fb', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:28', '2024-05-19 12:47:28'),
(52, 'App\\Models\\User', 61, 'user_token', '94a0660fe88ebf1d093c79d7fb0cb4662222aab1e94754a48771049ab8317616', '[\"*\"]', NULL, NULL, '2024-05-19 12:47:44', '2024-05-19 12:47:44'),
(53, 'App\\Models\\User', 61, 'user_token', 'ce0b508af958bfba0e7ac02417af782e6fdd88ad6daac3f641993f4bba5096af', '[\"*\"]', NULL, NULL, '2024-05-19 12:51:01', '2024-05-19 12:51:01'),
(54, 'App\\Models\\User', 61, 'user_token', 'af2983c81995bde78cb49e37e7066fcdf7ce841a9e3a9d710eb22ebf7631be04', '[\"*\"]', NULL, NULL, '2024-05-19 12:58:27', '2024-05-19 12:58:27'),
(55, 'App\\Models\\User', 61, 'user_token', 'af11d7f0735d742d4891f6fc89deb2e6a767f161e5ba1f1a09e371b256943bb1', '[\"*\"]', NULL, NULL, '2024-05-19 13:25:16', '2024-05-19 13:25:16'),
(56, 'App\\Models\\User', 61, 'user_token', '1dd031514c2389a522e4688aac38e6495ceced2d68cab062b3b31a5ffb097091', '[\"*\"]', NULL, NULL, '2024-05-19 13:25:28', '2024-05-19 13:25:28'),
(57, 'App\\Models\\User', 61, 'user_token', 'fe1a669104f4ba1cb10107219439fcf9703c2aea144a7256f1781dd1f291579f', '[\"*\"]', NULL, NULL, '2024-05-19 13:25:41', '2024-05-19 13:25:41'),
(58, 'App\\Models\\User', 61, 'user_token', '06fc86138ce1601b19762864be4da264d2b986e1bbedfa0d3f4f3f55a6182118', '[\"*\"]', NULL, NULL, '2024-05-19 13:25:53', '2024-05-19 13:25:53'),
(59, 'App\\Models\\User', 61, 'user_token', '394f8f4e2c1ee10341a54ff750c12edc1d3284630363abd3555fe125b99de64e', '[\"*\"]', NULL, NULL, '2024-05-19 13:26:21', '2024-05-19 13:26:21'),
(60, 'App\\Models\\User', 61, 'user_token', 'a76f581d01bdbb491cfb1c1f8548576454dc0d359cb1337568ea7e8b9a0ca6dc', '[\"*\"]', NULL, NULL, '2024-05-19 13:28:02', '2024-05-19 13:28:02'),
(61, 'App\\Models\\User', 61, 'user_token', 'bdb8dfdd00230ed3074eb40134770079503447f3c10c0e11c74bbc8ba45d2e92', '[\"*\"]', NULL, NULL, '2024-05-19 13:29:11', '2024-05-19 13:29:11'),
(62, 'App\\Models\\User', 61, 'user_token', 'a2cb5cb7582e906d856cbce2134f8137f88948ca67affa3be44bc96d155dc205', '[\"*\"]', NULL, NULL, '2024-05-19 13:29:31', '2024-05-19 13:29:31'),
(63, 'App\\Models\\User', 61, 'user_token', '73c533365d14e1f08304c7f1a622a09a37df638ba8772fed2ff6e57973d0544c', '[\"*\"]', NULL, NULL, '2024-05-19 13:29:52', '2024-05-19 13:29:52'),
(64, 'App\\Models\\User', 18, 'user_token', '08d5b75098ec571997ecdba635feb0d2a3dda7efe9a6ad68e5cb2d889423bbd7', '[\"*\"]', NULL, NULL, '2024-05-19 13:35:20', '2024-05-19 13:35:20'),
(65, 'App\\Models\\User', 61, 'user_token', '3153791f9124e559eff611a643aa15cacfc348306f75f9101d6d4c200e74856e', '[\"*\"]', NULL, NULL, '2024-05-19 13:35:45', '2024-05-19 13:35:45'),
(66, 'App\\Models\\User', 61, 'user_token', 'a5c7545aba6eb96e2cbbb9c2e91134f5f90ac7544e9facf389da71ec8e18aed2', '[\"*\"]', NULL, NULL, '2024-05-19 13:36:56', '2024-05-19 13:36:56'),
(67, 'App\\Models\\User', 61, 'user_token', '3d09e9349fb1ec52e06b58bdaef7ef1d0263d5f994458491e6b7c4acb59a01a8', '[\"*\"]', NULL, NULL, '2024-05-19 13:38:27', '2024-05-19 13:38:27'),
(68, 'App\\Models\\User', 18, 'user_token', '8b15d4b9094af31c843b355e4de5622f42003a2246b27a2eb2867428240d3345', '[\"*\"]', NULL, NULL, '2024-05-29 11:15:04', '2024-05-29 11:15:04'),
(69, 'App\\Models\\User', 61, 'user_token', '735b90c8e51319bd6ad06a3eae280ad6e20b3a68f65df3dfde097ed4125ccd84', '[\"*\"]', NULL, NULL, '2024-05-29 11:16:22', '2024-05-29 11:16:22'),
(70, 'App\\Models\\User', 18, 'user_token', '7913f0d33ea91372a37b6af3f4c5461af789dcbbe721cbb0b9fb5a91317bf85b', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:47', '2024-05-29 13:50:47'),
(71, 'App\\Models\\User', 18, 'user_token', 'ab15eca87a0a443cecb157150b2411bb50c7a43f80db119c96f2c89c425a872f', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:48', '2024-05-29 13:50:48'),
(72, 'App\\Models\\User', 18, 'user_token', 'db854edf4c3d1d652fef2491af0b77283cb0201f29569d20173cda48b13145fe', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:51', '2024-05-29 13:50:51'),
(73, 'App\\Models\\User', 18, 'user_token', '57da696866903b17b1b46997e99f0bc71729cd4bcff126126940dfacf2e2ee52', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:56', '2024-05-29 13:50:56'),
(74, 'App\\Models\\User', 18, 'user_token', 'a5c29de5f7f9d21e6c1557d4e96caca6c62fa5357b7602b129b794340b963d01', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:56', '2024-05-29 13:50:56'),
(75, 'App\\Models\\User', 18, 'user_token', 'b5d84fbe0aec76bcb374662ff1ad8c3cc922d7d2ab9fb77db0bfa9aa70504733', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:57', '2024-05-29 13:50:57'),
(76, 'App\\Models\\User', 18, 'user_token', '5bef13857730892f82965367cc199d0e877db4564afc415afb975800370d467d', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:57', '2024-05-29 13:50:57'),
(77, 'App\\Models\\User', 18, 'user_token', 'c136837c28a3e6e6285c668d7805eaf4643cbe04b9e546e311b3b1ca9d8b86d9', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:58', '2024-05-29 13:50:58'),
(78, 'App\\Models\\User', 18, 'user_token', 'adcecdf3de8873c55f77797f0b503250c4cb5c44387e899c36d2c138765dbcb9', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:58', '2024-05-29 13:50:58'),
(79, 'App\\Models\\User', 18, 'user_token', '22fd9e9acfd0bb0fd5bf7bd5b00fe5b166f430bbc183ec7e7e46054ea8336155', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:59', '2024-05-29 13:50:59'),
(80, 'App\\Models\\User', 18, 'user_token', 'c80e7c843e76686a5d19e283eefb752f83558f6e41d47c0323420d0cf6c64593', '[\"*\"]', NULL, NULL, '2024-05-29 13:50:59', '2024-05-29 13:50:59'),
(81, 'App\\Models\\User', 18, 'user_token', '21c46873ee6501c8adb12db7a6ebcaa551a3fd01513cc71d987a01b90c0a1658', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:06', '2024-05-29 13:51:06'),
(82, 'App\\Models\\User', 18, 'user_token', '3555a5d9f89e9ebc22a6e13f93a775fc3155592472d74132384dd1ed9ff79729', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:06', '2024-05-29 13:51:06'),
(83, 'App\\Models\\User', 18, 'user_token', '912d7602b9c24efa96be93428128501a4c89bf2939792e74c518fae1f3bc88b1', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:07', '2024-05-29 13:51:07'),
(84, 'App\\Models\\User', 18, 'user_token', 'd155dd63fe9723ffc5b944215cc8e5fdd8c3afc4f374db17d3b6221e578dcbd4', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:07', '2024-05-29 13:51:07'),
(85, 'App\\Models\\User', 18, 'user_token', '4d31e711ea92696bc6c49007558d2e25ed36d2a613b0ede64f167cfd5a14a5f1', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:07', '2024-05-29 13:51:07'),
(86, 'App\\Models\\User', 18, 'user_token', '41f6b124da6dcca2fcc383c5c936fc049521f8389f648159ac690232aa5081d0', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:08', '2024-05-29 13:51:08'),
(87, 'App\\Models\\User', 18, 'user_token', 'b28a3415944867ef87e469cb224083cda2974fab5440e9bc5d76faa2cb9fecae', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:08', '2024-05-29 13:51:08'),
(88, 'App\\Models\\User', 18, 'user_token', '816c0befbd21bede3a342ed79e63b5605db014f8adacd19c1c257539f685d55c', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:08', '2024-05-29 13:51:08'),
(89, 'App\\Models\\User', 18, 'user_token', 'ad82db3c684cb6931a53f2e779c65b888259eb9b9e987ec98061f2f69844b86c', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:09', '2024-05-29 13:51:09'),
(90, 'App\\Models\\User', 18, 'user_token', 'aef3bdd5871382bc039c359d53073409f5687a9f77074edf0c76acd2784d0388', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:09', '2024-05-29 13:51:09'),
(91, 'App\\Models\\User', 18, 'user_token', '05e63dd26879bac1e59d21f4c82048dd24d6f471adcac97c3dd1beedaf459346', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:09', '2024-05-29 13:51:09'),
(92, 'App\\Models\\User', 18, 'user_token', '7ad186e563743413474619e47444b167f56a81dbb9b53df0a0cadd4f0dd66371', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:09', '2024-05-29 13:51:09'),
(93, 'App\\Models\\User', 61, 'user_token', '82ca7aab66aa8bf3954af65d8b54eb8ce27d57d900da1e1fe0e862de96165ad9', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:14', '2024-05-29 13:51:14'),
(94, 'App\\Models\\User', 61, 'user_token', '671547776ebc105c82fa9f0ec140bc0fe70df20bd76334de11280455187d49fe', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:16', '2024-05-29 13:51:16'),
(95, 'App\\Models\\User', 61, 'user_token', '62207efdb02245ec9552d5672cb2e21f3a1667fd7f6331750129cb4dff5bdb89', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:16', '2024-05-29 13:51:16'),
(96, 'App\\Models\\User', 61, 'user_token', '33775455090c771a18fb6833b844539d425dd33e5d1102dd4e64804fc32c0b1e', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:16', '2024-05-29 13:51:16'),
(97, 'App\\Models\\User', 61, 'user_token', '3fe24cbd1d33600a95761990746cefc59d00d137289ca93dde5d3328834cf7cb', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:16', '2024-05-29 13:51:16'),
(98, 'App\\Models\\User', 18, 'user_token', 'aeaf7716722d6b204da731769632ff54449a55e7445e6f6b64432147b6be8279', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:41', '2024-05-29 13:51:41'),
(99, 'App\\Models\\User', 61, 'user_token', 'adf3b5b1426c39c7f761a19418375f345b3abba411d9a1dde2cc9e7f731d42c8', '[\"*\"]', NULL, NULL, '2024-05-29 13:56:11', '2024-05-29 13:56:11'),
(100, 'App\\Models\\User', 61, 'user_token', 'af98aedd516af61490c5c7c42ee62fec9599650b7c2680caed6d3ddaeface164', '[\"*\"]', NULL, NULL, '2024-06-02 11:39:43', '2024-06-02 11:39:43'),
(101, 'App\\Models\\User', 18, 'user_token', '20493fb3390c26039a8343c1efb9811ec0a5c6525a86aedd52f1c35eb6cf3bc1', '[\"*\"]', NULL, NULL, '2024-06-02 12:06:18', '2024-06-02 12:06:18'),
(102, 'App\\Models\\User', 61, 'user_token', '5acb0d8bb0e13e11b0215c07943e214c9c7758f37f89dda21f1e4e8f1dcca24f', '[\"*\"]', NULL, NULL, '2024-06-02 12:16:49', '2024-06-02 12:16:49'),
(103, 'App\\Models\\User', 18, 'user_token', '69c3dbef12dc2c619dda0f0c65ace3481d46cf82a92a20207b0df0db974f6fbe', '[\"*\"]', NULL, NULL, '2024-06-02 12:27:40', '2024-06-02 12:27:40'),
(104, 'App\\Models\\User', 61, 'user_token', 'c05723f96e3e9233d7bbee83b6e9deb070b56f98fe1d93fc71e2a3229f578b0b', '[\"*\"]', NULL, NULL, '2024-06-02 13:36:03', '2024-06-02 13:36:03'),
(105, 'App\\Models\\User', 61, 'user_token', '5fe80a2da11a2209e2f760d7183b2baba3595979374d5decb32c57f0d89f9489', '[\"*\"]', NULL, NULL, '2024-06-03 10:51:42', '2024-06-03 10:51:42'),
(106, 'App\\Models\\User', 61, 'user_token', 'c9ca33de876243ba2515ef2f06a413ad0fc424f610e2bea407433715db05af7f', '[\"*\"]', NULL, NULL, '2024-06-03 11:17:19', '2024-06-03 11:17:19'),
(107, 'App\\Models\\User', 18, 'user_token', 'd9454593a94be064a5fa41a3ba5d6393a214f45e61b737227f30e03085dcf189', '[\"*\"]', NULL, NULL, '2024-06-03 11:18:23', '2024-06-03 11:18:23'),
(108, 'App\\Models\\User', 61, 'user_token', 'd08906cf3b3a3c2086e242dd365b63f60a98728b429b785223533bc2aea9a31a', '[\"*\"]', NULL, NULL, '2024-06-03 11:23:28', '2024-06-03 11:23:28'),
(109, 'App\\Models\\User', 61, 'user_token', '9c792ebbb4360ec34a974a1d8c3ce7517f86b8fe42e7c02b19f1aa726786b8cf', '[\"*\"]', NULL, NULL, '2024-06-03 11:23:50', '2024-06-03 11:23:50'),
(110, 'App\\Models\\User', 61, 'user_token', '670c0f199e311d002495dd074e9b1ebe27ba21b006fde8de8b2110fd767ee3b0', '[\"*\"]', NULL, NULL, '2024-06-03 11:24:27', '2024-06-03 11:24:27'),
(111, 'App\\Models\\User', 61, 'user_token', '4179f6a2397b06f689f21f20fbb9795069f6c707cbcd5f4df203c2b2a5ad3acb', '[\"*\"]', NULL, NULL, '2024-06-03 11:24:30', '2024-06-03 11:24:30'),
(112, 'App\\Models\\User', 61, 'user_token', 'c734c8a30b76b4f5a179308e9dcba875c3ce826d0227a0904da2e2829b595f70', '[\"*\"]', NULL, NULL, '2024-06-03 11:25:16', '2024-06-03 11:25:16'),
(113, 'App\\Models\\User', 61, 'user_token', '59ec4b4e939663f260833d9e2340e2b0b23a4f96d89c7806d3c097c3bb79d145', '[\"*\"]', NULL, NULL, '2024-06-03 11:28:14', '2024-06-03 11:28:14'),
(114, 'App\\Models\\User', 61, 'user_token', '2e1ac8f26e808b988093ce61c818edfacb1c37b6807469330274d11111c87272', '[\"*\"]', NULL, NULL, '2024-06-03 11:28:50', '2024-06-03 11:28:50'),
(115, 'App\\Models\\User', 61, 'user_token', '6df87c1c07135de76b9b7ad580eb0530273f9750690b74551900de0df3774164', '[\"*\"]', NULL, NULL, '2024-06-03 11:29:30', '2024-06-03 11:29:30'),
(116, 'App\\Models\\User', 61, 'user_token', '87e00cc36cc575e6240a5ffcb62d880fe190dc786c12adfe6e4de0d00c7d6d23', '[\"*\"]', NULL, NULL, '2024-06-03 11:29:47', '2024-06-03 11:29:47'),
(117, 'App\\Models\\User', 61, 'user_token', '50d81bbe9c09688fdc167909743d40fd04dc4ab1038251bb242ff17e4503b790', '[\"*\"]', NULL, NULL, '2024-06-03 11:30:03', '2024-06-03 11:30:03'),
(118, 'App\\Models\\User', 61, 'user_token', '0cc90ddcd8ca19e875b885951bc2150d9b3c565f65c0657410236e6d2f09395e', '[\"*\"]', NULL, NULL, '2024-06-03 11:30:36', '2024-06-03 11:30:36'),
(119, 'App\\Models\\User', 61, 'user_token', 'a1a3b36ec12c5944f35d0bc8d8cc0b852e81e08595112f8041d2da3a1786403b', '[\"*\"]', NULL, NULL, '2024-06-03 11:30:47', '2024-06-03 11:30:47'),
(120, 'App\\Models\\User', 61, 'user_token', 'b93793d7d47e488eba579a2552c96a9d4f83f89db0902beedcc9d80cb2e43fa7', '[\"*\"]', NULL, NULL, '2024-06-03 11:31:30', '2024-06-03 11:31:30'),
(121, 'App\\Models\\User', 61, 'user_token', '317a7d16ea6d716f955632c14823800b017af8147c8053110e773d565ac882d0', '[\"*\"]', NULL, NULL, '2024-06-03 11:32:53', '2024-06-03 11:32:53'),
(122, 'App\\Models\\User', 61, 'user_token', '40393778c8adcba552d3d7fcb7b43cfdd0ae2079a81b8034e4b7fd9cac4f097c', '[\"*\"]', NULL, NULL, '2024-06-03 11:33:06', '2024-06-03 11:33:06'),
(123, 'App\\Models\\User', 61, 'user_token', '7b8527debe6268b10391f88af8dbe3df1a3838cc9dd29d903389dd4329231ee4', '[\"*\"]', NULL, NULL, '2024-06-03 11:33:26', '2024-06-03 11:33:26'),
(124, 'App\\Models\\User', 61, 'user_token', '99610b4f40e39a8a3c38ae9e442bb9be4e3113bf03c365edf2b44d0c0c878080', '[\"*\"]', NULL, NULL, '2024-06-03 11:33:52', '2024-06-03 11:33:52'),
(125, 'App\\Models\\User', 61, 'user_token', 'a952a3ac77ab2531e342dc6b09442030fdcbe73310575cc597853978043a5710', '[\"*\"]', NULL, NULL, '2024-06-03 11:34:09', '2024-06-03 11:34:09'),
(126, 'App\\Models\\User', 61, 'user_token', 'e10ee607bea7609dc9452cc3aac6ec4ac92b19c236bd51f8721a5386416fc67b', '[\"*\"]', NULL, NULL, '2024-06-03 11:35:44', '2024-06-03 11:35:44'),
(127, 'App\\Models\\User', 61, 'user_token', '7de38f33856bb4b3b1c15c98faf3d4925e93560b4b6df35bf96fdf1cb11f3dc7', '[\"*\"]', NULL, NULL, '2024-06-03 11:35:47', '2024-06-03 11:35:47'),
(128, 'App\\Models\\User', 61, 'user_token', '2b48bfd44ec1678c8c6dadcbb913050d74e99e82ec85bce89a58e204f7238c97', '[\"*\"]', NULL, NULL, '2024-06-03 11:35:48', '2024-06-03 11:35:48'),
(129, 'App\\Models\\User', 61, 'user_token', 'fba77ce7c655c35c05ca2b45fefdfb21b8a77c9e7dec848050029eb6af90a95a', '[\"*\"]', NULL, NULL, '2024-06-03 11:35:58', '2024-06-03 11:35:58'),
(130, 'App\\Models\\User', 61, 'user_token', '4dc8f306d522fd99dde9a11a25027f62910db1000b1948c1d22424ad4f021fc1', '[\"*\"]', NULL, NULL, '2024-06-03 11:35:59', '2024-06-03 11:35:59'),
(131, 'App\\Models\\User', 61, 'user_token', 'c22c853b91496d09aa3fb429dfee22933eddbcea7c6066854583bfcfc288e0bf', '[\"*\"]', NULL, NULL, '2024-06-03 11:36:22', '2024-06-03 11:36:22'),
(132, 'App\\Models\\User', 61, 'user_token', 'd1f8f33a0ea90d13f0be3f06d998b6289d59b86424cc2c76cb9e0df2d9136d74', '[\"*\"]', NULL, NULL, '2024-06-03 11:36:26', '2024-06-03 11:36:26'),
(133, 'App\\Models\\User', 61, 'user_token', '3f1b95e90e753cd145d00891a23b7fef50d145f7246232016a87e7cf9b73f829', '[\"*\"]', NULL, NULL, '2024-06-03 11:36:36', '2024-06-03 11:36:36'),
(134, 'App\\Models\\User', 61, 'user_token', '62a6f5fed65aabdb3d64bedacea54c896fd0e978ed886a12b75a03383904e3f2', '[\"*\"]', NULL, NULL, '2024-06-03 11:36:51', '2024-06-03 11:36:51'),
(135, 'App\\Models\\User', 61, 'user_token', '28ac587756ac2d4cd2240bcbb5bc8f3162a6d4f11763f7c047e5df47c220cc6a', '[\"*\"]', NULL, NULL, '2024-06-03 11:37:04', '2024-06-03 11:37:04'),
(136, 'App\\Models\\User', 61, 'user_token', '8346d2815ff17178651018452e9e3181c2b328f50ba71314019529658e478c44', '[\"*\"]', NULL, NULL, '2024-06-03 11:37:14', '2024-06-03 11:37:14'),
(137, 'App\\Models\\User', 61, 'user_token', '177754623895d009d777d3c6981f072a02c6a9a430060b1d78a4972df9ec21dd', '[\"*\"]', NULL, NULL, '2024-06-03 11:37:27', '2024-06-03 11:37:27'),
(138, 'App\\Models\\User', 61, 'user_token', '9a884c9eb956e0fc56b27aa8e10b40fb8cd73358e46069affa9bc154404e7edc', '[\"*\"]', NULL, NULL, '2024-06-03 11:37:41', '2024-06-03 11:37:41'),
(139, 'App\\Models\\User', 61, 'user_token', 'bf48f4445c35da2fc50a7a559b45897efc02e2114210b8a63b324749edc06ab6', '[\"*\"]', NULL, NULL, '2024-06-03 11:37:57', '2024-06-03 11:37:57'),
(140, 'App\\Models\\User', 61, 'user_token', 'c4ff9ab9e53821c68ea83e3603da74046f6e6b099c0e4248bd68ef77945959ca', '[\"*\"]', NULL, NULL, '2024-06-03 11:37:59', '2024-06-03 11:37:59'),
(141, 'App\\Models\\User', 61, 'user_token', '854bacbb68bfaa0d5a27312255717e815fca82c5fe37b7d359c390716495cea9', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:00', '2024-06-03 11:38:00'),
(142, 'App\\Models\\User', 61, 'user_token', '7b6e7a5525f76da37bbce74e38fc98d6523f4007879eaecc3d2e1283ac0c1f38', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:01', '2024-06-03 11:38:01'),
(143, 'App\\Models\\User', 61, 'user_token', 'fff19c49fc18d078decf8b73113de82e0a47a5e761d26d2b0f705a4b9afd63d2', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:02', '2024-06-03 11:38:02'),
(144, 'App\\Models\\User', 61, 'user_token', 'ad59f7194c56ee7eaabe43db92ecd0e3f16016b95f9f1a4c137989efac604ed2', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:03', '2024-06-03 11:38:03'),
(145, 'App\\Models\\User', 61, 'user_token', '795dabcd9278fa613fe28f335fa61334ee65d35e8491c815187f840330b9438c', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:03', '2024-06-03 11:38:03'),
(146, 'App\\Models\\User', 61, 'user_token', 'be7ab2445fc41b7df7986f3bed198f6644fa09cb6622ef28572563369951c684', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:03', '2024-06-03 11:38:03'),
(147, 'App\\Models\\User', 61, 'user_token', 'e63b952cf516b3fd1ea59903ae939300c85232573e73c3445e3e43fa158856da', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:04', '2024-06-03 11:38:04'),
(148, 'App\\Models\\User', 61, 'user_token', '4af833363cf1541f942b8f98cac593ce11581bc51f1c30b44b9b99d96e87eac5', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:07', '2024-06-03 11:38:07'),
(149, 'App\\Models\\User', 61, 'user_token', '94a0e91993395704ea31ee6b688fa3d675cf8c98c1897955ea8834f9767f676d', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:08', '2024-06-03 11:38:08'),
(150, 'App\\Models\\User', 61, 'user_token', '04b97d80fa362fc9881b45e39ee086277848bfd53cb2aabf71e922a2de2204db', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:08', '2024-06-03 11:38:08'),
(151, 'App\\Models\\User', 61, 'user_token', 'ede9d6db8f80cf2dd500678eb469cda240eec955870e8e94e555a712b018d176', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:09', '2024-06-03 11:38:09'),
(152, 'App\\Models\\User', 61, 'user_token', '08218d58679d59283c1b17bfaba1454ce264f5577631cbda2115212e27c2db2b', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:09', '2024-06-03 11:38:09'),
(153, 'App\\Models\\User', 61, 'user_token', '750d8a942cfd4b43ed0c2a56edbf593598ea251588c3617e286145deb6833114', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:09', '2024-06-03 11:38:09'),
(154, 'App\\Models\\User', 61, 'user_token', '298bbe05b176e43a8541d3be3f4cf058b55ec16180a96bcf5f823ae5cc491fdb', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:10', '2024-06-03 11:38:10'),
(155, 'App\\Models\\User', 61, 'user_token', '8dec0e73e18fbd944f9e3cdc21097a7e7c35ce14c4140b0d9d45c80dec1e5db1', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:10', '2024-06-03 11:38:10'),
(156, 'App\\Models\\User', 61, 'user_token', 'ca7afce011fb46275ce75b03c6c6c245c1f4ad924b85d2748074d9089edbe6e3', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:10', '2024-06-03 11:38:10'),
(157, 'App\\Models\\User', 61, 'user_token', '61c04634b8290929252178d1fa5287ebdc538d0327666060eb5182b94b13d1cf', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:10', '2024-06-03 11:38:10'),
(158, 'App\\Models\\User', 61, 'user_token', '45413709e89ae2038c66da6096eabecd8e5b1be29a7a7464b67c7cb1eed9362f', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:11', '2024-06-03 11:38:11'),
(159, 'App\\Models\\User', 61, 'user_token', '81728c8fba4b4290c82b5d37758ffb7551799b8329b1c44fd2e32fc4e571b769', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:11', '2024-06-03 11:38:11'),
(160, 'App\\Models\\User', 61, 'user_token', '5dfe285c58c0128adcdc5ecd41685a65c52d56b2e6482f00b04eb2f064fcc6d6', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:11', '2024-06-03 11:38:11'),
(161, 'App\\Models\\User', 61, 'user_token', 'b2677bf24acb5eb80c7e8ac1f16dff5050a2c96bb7550d26d0411b4ec98fc2f9', '[\"*\"]', NULL, NULL, '2024-06-03 11:38:33', '2024-06-03 11:38:33'),
(162, 'App\\Models\\User', 61, 'user_token', '39d45bfa781c424ed3bc56dc3c0d0b7cfab61f8b1d61694c42dd281322610c94', '[\"*\"]', NULL, NULL, '2024-06-03 11:39:12', '2024-06-03 11:39:12'),
(163, 'App\\Models\\User', 61, 'user_token', 'c46c8cbda50df2db77c9f7b2f4179f0aa9b463c7f80fc9e665c308ddf51e6d4c', '[\"*\"]', NULL, NULL, '2024-06-03 11:40:29', '2024-06-03 11:40:29'),
(164, 'App\\Models\\User', 61, 'user_token', 'd640bccfa70c2ff31916bf9bf855ce5af313a3889f5b9c667477359807d0e64f', '[\"*\"]', NULL, NULL, '2024-06-03 11:41:30', '2024-06-03 11:41:30'),
(165, 'App\\Models\\User', 61, 'user_token', '0c72632f6b17b3bf0b9d8da68a76827796c3480ff7048008840233e353b755bc', '[\"*\"]', NULL, NULL, '2024-06-03 11:41:39', '2024-06-03 11:41:39'),
(166, 'App\\Models\\User', 61, 'user_token', 'cb3f51510859355c53f777dac7b1acf7b4cc1b74d1e260e3ba3bf730c62d4396', '[\"*\"]', NULL, NULL, '2024-06-03 11:41:57', '2024-06-03 11:41:57'),
(167, 'App\\Models\\User', 61, 'user_token', '5653e2dd10e4f5ca1cb6a0433ca1ec1d659fc7885ea6286043747fceb859b5a6', '[\"*\"]', NULL, NULL, '2024-06-03 11:44:11', '2024-06-03 11:44:11'),
(168, 'App\\Models\\User', 61, 'user_token', '85db1e783c498bd86dd59b3f57ac7a6178b03b2c6fbba909c1e4ed2dbfd98ef0', '[\"*\"]', NULL, NULL, '2024-06-03 11:44:22', '2024-06-03 11:44:22'),
(169, 'App\\Models\\User', 61, 'user_token', '4f6b083247cf39cbe4f705a27a31aeacf489a26686479c86b6c315311b75e12e', '[\"*\"]', NULL, NULL, '2024-06-03 11:44:45', '2024-06-03 11:44:45'),
(170, 'App\\Models\\User', 61, 'user_token', 'dfc4a08a0ee16da22a4598f1272e6d56efade0dc08cbb4d89057434e771b9859', '[\"*\"]', NULL, NULL, '2024-06-03 11:53:56', '2024-06-03 11:53:56'),
(171, 'App\\Models\\User', 61, 'user_token', 'c7f5e9f9e8f9c49e2412ae9fc2720912f88ea256ec3e5b4519a3f4da5614bfc8', '[\"*\"]', NULL, NULL, '2024-06-03 12:00:20', '2024-06-03 12:00:20'),
(172, 'App\\Models\\User', 61, 'user_token', '6abdf09eefe2e68151113e0219b12a1a646a8b94baa89a83bff02c2905221713', '[\"*\"]', NULL, NULL, '2024-06-03 12:00:49', '2024-06-03 12:00:49'),
(173, 'App\\Models\\User', 61, 'user_token', '8c859910ceb9d7184bf1c29561fb5235014429d6a205134a662d1a1ce51c122a', '[\"*\"]', NULL, NULL, '2024-06-03 12:04:22', '2024-06-03 12:04:22'),
(174, 'App\\Models\\User', 61, 'user_token', '63404abc73b1584d0644ac0374dbfac362247566201e68f738c7e2708322d64f', '[\"*\"]', NULL, NULL, '2024-06-03 12:38:23', '2024-06-03 12:38:23'),
(175, 'App\\Models\\User', 61, 'user_token', '0ee78e2868b44f9ea079c33c23036e42bde1d02804915d6623c1d0b7123540d1', '[\"*\"]', NULL, NULL, '2024-06-03 12:39:46', '2024-06-03 12:39:46'),
(176, 'App\\Models\\User', 61, 'user_token', '6f6f1cae9b1c96da83d28963d365b271cd9948a75e51ce71b9cdad119f60d0e0', '[\"*\"]', NULL, NULL, '2024-06-04 08:11:44', '2024-06-04 08:11:44'),
(177, 'App\\Models\\User', 61, 'user_token', 'c1733dcaa4a564060cb075a4d5cd1eb8a6f9cde3b0189b1a453c3a715219b95f', '[\"*\"]', NULL, NULL, '2024-06-04 08:49:52', '2024-06-04 08:49:52'),
(178, 'App\\Models\\User', 61, 'user_token', '20552e12c78f3d7d6303ae4f1bb3e9120050d7491c91cb7196f5b784f32d9f70', '[\"*\"]', NULL, NULL, '2024-06-04 09:15:16', '2024-06-04 09:15:16'),
(179, 'App\\Models\\User', 18, 'user_token', '03697d22df433fdd31458fab81dfcee6d44770387b3764c98fb15e0649943a5d', '[\"*\"]', NULL, NULL, '2024-06-04 10:17:28', '2024-06-04 10:17:28'),
(180, 'App\\Models\\User', 18, 'user_token', '8cfd596e8edb96fb97d3296f4bafc4a46e9d9b15c1ee84411c1415af76d8daea', '[\"*\"]', NULL, NULL, '2024-06-04 10:17:49', '2024-06-04 10:17:49'),
(181, 'App\\Models\\User', 18, 'user_token', '70f8be2e9b01b615ec20858a44fb794249e9d4e195775dbbeecdfc541a721758', '[\"*\"]', NULL, NULL, '2024-06-04 10:28:31', '2024-06-04 10:28:31'),
(182, 'App\\Models\\User', 18, 'user_token', 'c9817b27add16ba4402285740b374191eb24a7fcf0be0509bfbd18ed2662a40e', '[\"*\"]', NULL, NULL, '2024-06-04 10:30:01', '2024-06-04 10:30:01'),
(183, 'App\\Models\\User', 18, 'user_token', 'c84441a8444e9f9968ddffec07edc5d96db66a6f680cf17ef5ccbfc8a7fbb157', '[\"*\"]', NULL, NULL, '2024-06-04 10:31:06', '2024-06-04 10:31:06'),
(184, 'App\\Models\\User', 61, 'user_token', '2fe1d6e2c0a7e9ae922b7f03ec92594ac7e6acfb6329003f0f556a17e021db1b', '[\"*\"]', NULL, NULL, '2024-06-04 10:31:48', '2024-06-04 10:31:48');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `name`, `img`) VALUES
(10, 'post1', 'http://127.0.0.1:8000/storage/uploads/1716140489futo-maki_7130-426.jpg'),
(11, 'post1', 'http://127.0.0.1:8000/storage/uploads/1716728673_24877-23056.jpg'),
(12, 'post1', 'http://127.0.0.1:8000/storage/uploads/1716728961Скриншотсделанный2021-06-30в17.21.23-fullpage.png'),
(13, 'post1', 'http://127.0.0.1:8000/storage/uploads/1716729030cards.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `posts_category`
--

CREATE TABLE `posts_category` (
  `id` int NOT NULL,
  `id_posts` int NOT NULL,
  `id_category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts_category`
--

INSERT INTO `posts_category` (`id`, `id_posts`, `id_category`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1),
(12, 13, 1),
(13, 15, 1),
(14, 16, 1),
(15, 22, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts_key_words`
--

CREATE TABLE `posts_key_words` (
  `id` int NOT NULL,
  `id_posts` int NOT NULL,
  `id_words` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts_key_words`
--

INSERT INTO `posts_key_words` (`id`, `id_posts`, `id_words`) VALUES
(1, 1, 1),
(2, 6, 1),
(3, 7, 1),
(4, 8, 1),
(5, 9, 1),
(6, 10, 1),
(7, 11, 1),
(8, 12, 1),
(9, 13, 1),
(10, 16, 1),
(11, 22, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ban` int DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `ban`, `img`, `phone`) VALUES
(18, 'admin', 'admin', 1, 'admin', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'killa', 'radoslavnaya@icloud.com', 0, 'echo', '29|0DOVoyqSkkNNT7dOVga9CP0YbTKdCyhzEQnEgdurdd0baf4f', NULL, NULL, NULL, NULL, '79969124331');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `alboms`
--
ALTER TABLE `alboms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `alboms_posts`
--
ALTER TABLE `alboms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `forbidden_words`
--
ALTER TABLE `forbidden_words`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `key_words`
--
ALTER TABLE `key_words`
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
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts_key_words`
--
ALTER TABLE `posts_key_words`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `alboms`
--
ALTER TABLE `alboms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `alboms_posts`
--
ALTER TABLE `alboms_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `forbidden_words`
--
ALTER TABLE `forbidden_words`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `key_words`
--
ALTER TABLE `key_words`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `posts_key_words`
--
ALTER TABLE `posts_key_words`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
